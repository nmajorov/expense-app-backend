package biz.majorov.expenses
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
        from("direct:select-all-expenses").to("sql:select * from EXPENSES WHERE FK_REPORT = :#\${body}  ORDER BY ID")
                .log("\${body}")

        from("direct:insert-expense")
                .log("insert-expenses  body expense: \$simple{body}")
        .to("sql:INSERT INTO EXPENSES (DESCRIPTION, AMOUNT ,CREATED,FK_REPORT) " +
                "VALUES (:#\$simple{body['expense'].description},:#\$simple{body['expense'].amount}," +
                "to_date(:#\$simple{body['expense'].createdAT.toString},'YYYY-MM-DD'), "
                +":#\$simple{body['reportID']})")
        from("direct:select-one-expense").to("sql:select * from EXPENSES WHERE ID=:#\${body}").log("\${body}")
        from("direct:update-expense").to("sql:UPDATE EXPENSES SET AMOUNT = :#\$simple{body.amount} , DESCRIPTION=:#\$simple{body.description}," +
                "  CREATED = to_date(:#\$simple{body.createdAT.toString},'YYYY-MM-DD'),  TSTAMP = now()" +
                " WHERE ID= :#\$simple{body.id}")
        from("direct:delete-expense").to("sql:DELETE FROM EXPENSES  WHERE EXPENSES.ID =:#\${body}")
        //user operations
        // the user coming from sso so we have to save it before run other operations
        from("direct:select-user-by-name").to("sql:SELECT  ID, NAME  FROM  app_user WHERE NAME LIKE :#\${body}").log("rows: \${body}")

        from("direct:insert-user").to("sql:INSERT INTO APP_USER (NAME) VALUES (:#\${body})")


	    from("direct:select-all-reports").log("get reports for user with id: \${body}")
                .to("sql:select * from report where fk_app_user = :#\${body}")
                .log("\${body}")

        from("direct:select-report-by-id")
                .to("sql:select * from report where id = :#\${body}")
                .log("\${body}")

        //TODO check user before delete
        from("direct:delete-report").log("delete report with id \${body} ")
                .to("sql:DELETE FROM EXPENSES  WHERE FK_REPORT= :#\${body}")
                .to("sql:DELETE FROM REPORT  WHERE report.id =:#\${body}")

        from("direct:insert-report").log("report to insert \$simple{body['report']}").to("sql:INSERT INTO REPORT (NAME, CREATED,fk_app_user) " +
              "VALUES ( :#\$simple{body['report']},(select  DATE(date) from CURRENT_TIMESTAMP as date)," +
                " :#\$simple{body['user'].id})")

        from("direct:update-report").log("report to update: \$simple{body['report']}")
                .to("sql:UPDATE REPORT SET NAME = :#\$simple{body['report'].name} " +
                ", CREATED = to_date(:#\$simple{body['report'].createdAT.toString},'YYYY-MM-DD') , TSTAMP = now() " +
                        "WHERE fk_app_user =" +
                " :#\$simple{body['user'].id} AND ID = :#\$simple{body['report'].id}")

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
