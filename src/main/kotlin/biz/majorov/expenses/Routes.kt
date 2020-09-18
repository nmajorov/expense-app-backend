package biz.majorov.expenses
import org.apache.camel.builder.RouteBuilder
import org.apache.camel.quarkus.kotlin.routes
import javax.enterprise.context.ApplicationScoped
import javax.enterprise.inject.Produces


/**
 * camel routes definition
 */

@ApplicationScoped
class Routes {
    @Produces
    fun myRoutes() = routes {
        from("direct:select-all-expenses").to("sql:select * from EXPENSES ORDER BY ID")
                .log("\${body}")
        from("direct:insert-expense")
                .log("insert-expenses route body: \$simple{body.description},\$simple{body.amount}, \$simple{body.createdAT}")
        .to("sql:INSERT INTO EXPENSES (DESCRIPTION, AMOUNT ,CREATED,FK_REPORT) " +
                "VALUES (:#\$simple{body.description},:#\$simple{body.amount}," +
                "to_date(:#\$simple{body.createdAT.toString},'%Y-%m-%d'), "
                +":#\$simple{body.report})")
        from("direct:select-one-expense").to("sql:select * from EXPENSES WHERE ID=:#\${body}").log("\${body}")

    }

}


/**
class MyRoute : RouteBuilder() {
    @Throws(Exception::class)
    override fun configure() {
        from("timer:tick")
                .setBody().constant("hello")
                .to("direct:log")
        from("direct:log")
                .log("\${body}")
    }
}

 ***/