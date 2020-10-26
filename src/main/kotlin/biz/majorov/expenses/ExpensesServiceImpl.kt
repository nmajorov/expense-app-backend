@file:Suppress("unused")

package biz.majorov.expenses

import org.apache.camel.CamelContext
import org.jboss.logging.Logger
import java.math.BigDecimal
import java.sql.Date
import java.sql.Timestamp
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject
import javax.ws.rs.core.Context
import javax.ws.rs.core.MediaType
import javax.ws.rs.core.Response
import javax.ws.rs.core.SecurityContext


/**
 *
 * Implementation of expenses service.
 *  
 */
@ApplicationScoped
class ExpensesServiceImpl : ExpensesService {

    private val logger: Logger = Logger.getLogger(ExpensesService::class.java)

    @Inject
    lateinit var camelContext:CamelContext


    override fun create(@Context ctx: SecurityContext ,reportID: Int, expense: Expense): Response {
        if (ctx.userPrincipal == null){
            logger.error("user is not authenticated or session expired")
            return Response.status(Response.Status.UNAUTHORIZED).build()
        }

        logger.debug("create  expense: $expense  in report $reportID for user name: ${ctx.userPrincipal.name}")

        val bodyMessage = mapOf("reportID" to reportID, "expense" to expense)
        val template = camelContext.createFluentProducerTemplate()

        template.to("direct:insert-expense").withBody(bodyMessage).send()

        return Response.ok().build()
    }



    override fun update(@Context ctx: SecurityContext ,expense: Expense) :Response  {
        if (ctx.userPrincipal == null){
            logger.error("user is not authenticated or session expired")
            return Response.status(Response.Status.UNAUTHORIZED).build()
        }

        logger.debug("call update expense: $expense")
        val template = this.camelContext.createFluentProducerTemplate()
        expense.id?.run {
            //id is not null do update and return ok
            template.to("direct:update-expense").withBody(expense).send()
            return Response.ok().build()
        }

        //id is null return error
        logger.error("can't update expense: $expense cause id is null or not provided ")
        return Response.status(Response.Status.BAD_REQUEST.statusCode,
                "Expense id is not provided").build()


    }



    override fun find(id: Long):Response{
        logger.debug("call find by id: $id")
        val exchange = this.camelContext.createFluentProducerTemplate().to("direct:select-one-expense")
                .withBody(id).send()

        @Suppress("UNCHECKED_CAST")
        val camelResult = exchange.getIn().body as List<Map<String, Any>>

        if (camelResult.isNotEmpty()){
            logger.info("result is not empty")
            //convert sql result to the entities
            camelResult[0].let{
                val entity =convertRowToEntity(it)

                return Response.ok(entity, MediaType.APPLICATION_JSON).build()
            }
        }


        val builder = Response.status(Response.Status.NOT_FOUND)
        return builder.build()

    }


    /**
     * get all expenses for report
     *
     */
    override fun findAll(reportID: Int): Response {
        logger.debug("get all expenses for report $reportID")
        if (reportID == 0 || reportID < 0  ) return Response.status(Response.Status.BAD_REQUEST).build()

        val exchange = this.camelContext.createFluentProducerTemplate()
                .to("direct:select-all-expenses")
                .withBody(reportID).send()

        @Suppress("UNCHECKED_CAST")
        val camelResult= exchange.getIn().body as List<Map<String, Any>>
        val entities = mutableListOf<Expense>()
        //convert sql result to the entities
        camelResult.forEach {
            entities.add(convertRowToEntity(it))
        }
        return Response.ok(entities, MediaType.APPLICATION_JSON).build()
    }



    override fun delete(@Context ctx: SecurityContext ,id: Long) : Response {
        logger.info("got expense id to delete: $id")
        if (ctx.userPrincipal == null){
            return Response.status(Response.Status.UNAUTHORIZED).build()
        }
        logger.debug("delete report with id: $id for user name: ${ctx.userPrincipal.name}")

        this.camelContext.createFluentProducerTemplate().to("direct:delete-expense")
                .withBody(id).send()
        return Response.ok().build()
    }


    /**
     * convert database row to expense entity
     *
     */
    private fun convertRowToEntity(row:Map<String,Any>):Expense {
            val expense = Expense()
            expense.id = row["id".toUpperCase()] as Int
            expense.description = (row["description".toUpperCase()] as String)
        when (val amountRaw = row["amount".toUpperCase()]){
                is Double -> expense.amount = amountRaw
                is BigDecimal -> expense.amount = amountRaw.toDouble()
            }
            expense.createdAT = (row["created".toUpperCase()] as Date).toLocalDate()
        when (val timestampRaw = row["tstamp".toUpperCase()]) {
                is Timestamp -> expense.tstamp = timestampRaw.toLocalDateTime().toLocalDate()
                is Date -> expense.tstamp = timestampRaw.toLocalDate()
            }

            return expense
    }


}
