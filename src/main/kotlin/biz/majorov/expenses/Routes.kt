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
        from("direct:select").to("sql:select * from EXPENSES ORDER BY ID")
                .log("\${body}")
        from("direct:insert")
                .log("insert-expenses route body: \$simple{body.description},\$simple{body.amount}, \$simple{body.createdAT}")
        .to("sql:INSERT INTO EXPENSES (DESCRIPTION, AMOUNT ,CREATED) " +
                "VALUES (:#\$simple{body.description},:#\$simple{body.amount}," +
                "to_date(:#\$simple{body.createdAT.toString},'%Y-%m-%d'));")

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