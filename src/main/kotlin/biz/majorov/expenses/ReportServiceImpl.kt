package biz.majorov.expenses

import org.apache.camel.CamelContext
import org.jboss.logging.Logger
import java.sql.Date
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject
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
    override fun findAll(@Context ctx: SecurityContext): Response {
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

    override fun find(ctx: SecurityContext, id: Long): Response {
        TODO("Not yet implemented")
    }

    /**
     * delete report by id
     */
    override fun delete(@Context ctx: SecurityContext ,id: Long): Response {
        logger.debug("delete report with id: $id for user name: ${ctx.userPrincipal.name}")
        val exchange = this.camelContext.createFluentProducerTemplate().
        to("direct:delete-report").withBody(id).send()
        if (exchange.isFailed) {
            return Response.serverError().build()
        } else {
            return Response.ok().build()
        }
    }


    override fun create( @Context ctx: SecurityContext, report: Report): Response {
        logger.debug("create report: $report for user: ${ctx.userPrincipal.name}")
        val user = userCheckService.checkUser(ctx.userPrincipal.name)
        val bodyMessage = mapOf<String,Any>("report" to report, "user" to user)
        val exchange= this.camelContext.createFluentProducerTemplate()
                .to("direct:insert-report").withBody(bodyMessage).send();
        if (exchange.isFailed) {
            return Response.serverError().build()
        } else {
            return Response.ok().build()
        }

    }

    override fun update(report: Report): Response {
        TODO("Not yet implemented")
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