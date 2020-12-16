package biz.majorov.expenses

import org.apache.camel.CamelContext
import org.jboss.logging.Logger
import java.sql.Date
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject
import javax.transaction.Status
import javax.ws.rs.core.Context
import javax.ws.rs.core.MediaType
import javax.ws.rs.core.Response
import javax.ws.rs.core.SecurityContext


/**
 * implementation of report services
 *
 */
@ApplicationScoped
class ReportServiceImpl: ReportService {

    private val logger: Logger = Logger.getLogger(ReportService::class.java)

    @Inject
    lateinit var camelContext: CamelContext

    @Inject
    lateinit var userCheckService: UserCheckService


    /**
     * get all reports for user
     * user information will be taken from security context
     */
    override fun findAll(ctx: SecurityContext): Response {
        if (ctx.userPrincipal == null){
            return Response.status(Response.Status.UNAUTHORIZED).build()
        }
        logger.debug("findAll report for user name: ${ctx.userPrincipal.name}")
        val user = userCheckService.checkUser(ctx.userPrincipal.name)
        val exchange = this.camelContext.createFluentProducerTemplate().
        to("direct:select-all-reports").withBody(user.id).send()

        @Suppress("UNCHECKED_CAST")
        val camelResult= exchange.getIn().body as List<Map<String, Any>>
        val entities = mutableListOf<Report>()
        //convert sql result to the entities
        camelResult.forEach {
            entities.add(convertRowToEntity(it))
        }
        return Response.ok(entities, MediaType.APPLICATION_JSON).build()
    }


    /**
     * get report by id
     */
    override fun find(ctx: SecurityContext, id: Long): Response {
        if (ctx.userPrincipal == null){
            return Response.status(Response.Status.UNAUTHORIZED).build()
        }
        logger.debug("find  report with id: $id for user name: ${ctx.userPrincipal.name}")
        val exchange = this.camelContext.createFluentProducerTemplate().
        to("direct:select-report-by-id").withBody(id).send()

        @Suppress("UNCHECKED_CAST")
        val camelResult= exchange.getIn().body as List<Map<String, Any>>
        val entities = mutableListOf<Report>()
        //convert sql result to the entities
        //convert sql result to the entities
        camelResult.forEach {
            entities.add(convertRowToEntity(it))
        }
        if (entities.size > 1){
            logger.error("found more then one report")
            return Response.serverError().build()
        }
        if (entities.isEmpty()){
            logger.error("report with id=$id  not found ")
            return Response.status(Response.Status.NOT_FOUND).build()
        }
        return Response.ok(entities.first(), MediaType.APPLICATION_JSON).build()
    }


    /**
     * delete report by id
     */
    override fun delete(@Context ctx: SecurityContext ,id: Long): Response {
        if (ctx.userPrincipal == null){
            return Response.status(Response.Status.UNAUTHORIZED).build()
        }
        logger.debug("delete report with id: $id for user name: ${ctx.userPrincipal.name}")
        val exchange = this.camelContext.createFluentProducerTemplate().
        to("direct:delete-report").withBody(id).send()
        if (exchange.isFailed) {
            return Response.serverError().build()
        } else {
            return Response.ok().build()
        }
    }


    /**
     * add report
     * @param ctx current security context from authentication
     * @param name the name of new report
     */
    override fun create( @Context ctx: SecurityContext, name: String): Response {
        if (ctx.userPrincipal == null){
            return Response.status(Response.Status.UNAUTHORIZED).build()
        }
        val user = userCheckService.checkUser(ctx.userPrincipal.name)
        logger.info("create report with name: $name for user: $user")

        val bodyMessage = mapOf<String,Any?>("report" to name, "user-id" to user.id)
        val exchange= this.camelContext.createFluentProducerTemplate()
                .to("direct:insert-report").withBody(bodyMessage).send();
        if (exchange.isFailed) {
            return Response.serverError().build()
        } else {
            return Response.ok().build()
        }

    }

    override fun update(@Context ctx: SecurityContext,  report: Report): Response {
        if (ctx.userPrincipal == null){
            return Response.status(Response.Status.UNAUTHORIZED).build()
        }
        val user = userCheckService.checkUser(ctx.userPrincipal.name)
        logger.debug("update  report: $report  for user: ${ctx.userPrincipal.name}")
        val bodyMessage = mapOf<String,Any?>("report-name" to report.name,
            "report-id" to report.id,
            "report-date" to report.createdAT.toString(),
            "report-name" to report.name,
            "user" to user.id)
        val exchange= this.camelContext.createFluentProducerTemplate()
                .to("direct:update-report").withBody(bodyMessage).send();
        if (exchange.isFailed) {
            return Response.serverError().build()
        } else {
            return Response.ok().build()
        }
    }


    /**
     * convert report  database row to expense entity
     *
     */
    private fun convertRowToEntity(row: Map<String, Any>):Report {
        var report = Report()
        report.id = row.get("id".toUpperCase()) as Int
        report.name = (row.get("name".toUpperCase()) as String)
        report.createdAT = (row.get("created".toUpperCase()) as Date).toLocalDate()

        return report
    }

}