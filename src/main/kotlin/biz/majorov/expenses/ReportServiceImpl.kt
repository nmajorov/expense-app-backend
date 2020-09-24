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



    override fun findAll(@Context ctx: SecurityContext): Response {
        logger.debug("findAll report for user name: ${ctx.userPrincipal.name}")
        val exchange = this.camelContext.createFluentProducerTemplate().to("direct:select-all-reports").send()
        val camelResult= exchange.getIn().body as List<Map<String, Any>>
        val entities = mutableListOf<Report>()
        //convert sql result to the entities
        camelResult.forEach {
            entities.add(convertRowToEntity(it))
        }
        return Response.ok(entities, MediaType.APPLICATION_JSON).build()
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