package biz.majorov.expenses

import io.agroal.api.AgroalDataSource
import io.quarkus.agroal.DataSource
import org.apache.camel.CamelContext
import org.apache.camel.ProducerTemplate
import org.apache.camel.component.sql.SqlConstants
import org.apache.commons.logging.LogFactory
import org.eclipse.microprofile.openapi.annotations.OpenAPIDefinition
import org.eclipse.microprofile.openapi.annotations.Operation
import org.eclipse.microprofile.openapi.annotations.enums.SchemaType
import org.eclipse.microprofile.openapi.annotations.info.Contact
import org.eclipse.microprofile.openapi.annotations.info.Info
import org.eclipse.microprofile.openapi.annotations.info.License
import org.eclipse.microprofile.openapi.annotations.media.Content
import org.eclipse.microprofile.openapi.annotations.media.Schema
import org.eclipse.microprofile.openapi.annotations.parameters.Parameter
import org.eclipse.microprofile.openapi.annotations.responses.APIResponse
import org.eclipse.microprofile.openapi.annotations.responses.APIResponses
import java.math.BigDecimal
import java.sql.Date
import java.sql.Timestamp
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject
import javax.ws.rs.*
import javax.ws.rs.core.MediaType
import javax.ws.rs.core.Response


/**
 * expenses RESTful services
 */
@Path("/expenses")
@OpenAPIDefinition(
        info = Info(
                title = "Expenses API demo app",
                version = "1.0.0",
                contact = Contact(
                        name = "Expenses API demo app",
                        url = "https://quarkus.io/guides/openapi-swaggerui#providing-application-level-openapi-annotations",
                        email = "nmajorov@redhat.com"),
                license = License(
                        name = "Apache 2.0",
                        url = "http://www.apache.org/licenses/LICENSE-2.0.html"))
)
interface ExpensesService {

    @GET
    @Path("")
    @Operation(description = "Get all expenses in system")
    @Produces(MediaType.APPLICATION_JSON)
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Expense::class))]
        )
    ])
    fun findAll(): Response

    @DELETE
    @Path("/{id}")
    @Operation(summary = "Delete an expense")
    @APIResponses(value = [

        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))]),
        APIResponse(responseCode = "400", description = "invalid input"),
        APIResponse(responseCode = "404", description = "expense not found")
    ])
    fun delete(@PathParam("id") @Parameter(description = "Expense id to delete", required = true,
            schema = Schema(type = SchemaType.NUMBER)) id: Long) :Response

    @POST
    @Path("/")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Operation(summary = "Add a new expense")
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))]),
        APIResponse(responseCode = "405", description = "invalid input")
    ])
    fun create(expense: Expense) :Response


    @PUT
    @Path("/")
    @Operation(summary = "update an existing expense")
    @Consumes(MediaType.APPLICATION_JSON)
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation")
    ]
    )
    fun update(expense: Expense):Response


    @GET
    @Path("/{id}")
    @Operation(summary = "fetch an expense by id")
    @APIResponses(value = [
        APIResponse(responseCode = "400", description = "invalid id supplied"),
        APIResponse(responseCode = "404", description = "expense not found"),
        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))])
    ])
    @Produces("application/json")
    fun find(@PathParam("id") @Parameter(description = "Expense id used to find one", required = true,
            schema = Schema(type = SchemaType.NUMBER)) id: Long): Response
}


/**
 * Implementation of expenses service.
 *  
 */
@ApplicationScoped
class ExpensesServiceImpl : ExpensesService {

    private val logger = LogFactory.getLog(ExpensesServiceImpl::class.java)

    @Inject
    lateinit var camelContext:CamelContext


    override fun create(expense: Expense): Response {
        logger.info("got expense to insert: $expense")
        val template = camelContext.createFluentProducerTemplate()
        template.to("direct:insert-expense").withBody(expense).send()

        return Response.ok().build()
    }



    override fun update(expense: Expense) :Response  {
        logger.info("call update expense: $expense")
        val template = this.camelContext.createFluentProducerTemplate()
        expense.id?.run {
            //id is not null do update and return ok
            val exchange =template.to("direct:update-one").withBody(expense).send()
            return Response.ok().build()
        }

        //id is null return error
        logger.error("can't update expense: $expense cause id is null or not provided ")
        return Response.status(Response.Status.BAD_REQUEST.statusCode,
                "Expense id is not provided").build()


    }



    override fun find(id: Long):Response{
        logger.info("call find by id: $id")
        val exchange = this.camelContext.createFluentProducerTemplate().to("direct:select-one-expense")
                .withBody(id).send()
        val camelResult= exchange.getIn().body as List<Map<String, Any>>

        if (camelResult.isNotEmpty()){
            logger.info("result is not empty")
            //convert sql result to the entities
            camelResult.get(0).let{
                val entity =convertRowToEntity(it)

                return Response.ok(entity, MediaType.APPLICATION_JSON).build()
            }
        }


        val builder = Response.status(Response.Status.NOT_FOUND)
        return builder.build()

    }


    override fun findAll(): Response {
        val exchange = this.camelContext.createFluentProducerTemplate().to("direct:select-all-expenses").send()
        val camelResult= exchange.getIn().body as List<Map<String, Any>>
        val entities = mutableListOf<Expense>()
        //convert sql result to the entities
        camelResult.forEach {
            entities.add(convertRowToEntity(it))
        }
        return Response.ok(entities, MediaType.APPLICATION_JSON).build()
    }



    override fun delete(id: Long) : Response {
        logger.info("got expense id to delete: $id")
        this.camelContext.createFluentProducerTemplate().to("direct:delete-one")
                .withBody(id).send()
        return Response.ok().build()
    }


    /**
     * convert database row to expense entity
     *
     */
    private fun convertRowToEntity(row:Map<String,Any>):Expense {
            var expense = Expense()
            expense.id = row.get("id".toUpperCase()) as Int
            expense.description = (row.get("description".toUpperCase()) as String)
            var amountRaw = row.get("amount".toUpperCase())
            when (amountRaw){
                is Double -> expense.amount = amountRaw
                is BigDecimal -> expense.amount = amountRaw.toDouble()
            }
            expense.createdAT = (row.get("created".toUpperCase()) as Date).toLocalDate()
            var timestampRaw = row.get("tstamp".toUpperCase())
            when (timestampRaw) {
                is Timestamp -> expense.tstamp = timestampRaw.toLocalDateTime().toLocalDate()
                is Date -> expense.tstamp = timestampRaw.toLocalDate()
            }
            return expense
    }

}