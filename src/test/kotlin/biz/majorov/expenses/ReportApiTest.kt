package biz.majorov.expenses

import io.quarkus.test.junit.QuarkusTest
import io.restassured.RestAssured
import io.restassured.RestAssured.given
import io.restassured.parsing.Parser
import org.junit.jupiter.api.Test
import java.util.HashMap

open
@QuarkusTest
class ReportApiTest : OAuthTest() {

    @Test
    fun `test get all report for user`() {
        println("${object {}.javaClass.enclosingMethod.name} ")
        println("reports should be get for  specific  user ")
        print("use token:" + OAuthTest.TOKEN)
        given().header("Authorization","Bearer " + OAuthTest.TOKEN)
                .`when`().get("/reports")
                .then()
                .statusCode(200)
    }


    @Test
    fun `test create report for user`() {
        println("${object {}.javaClass.enclosingMethod.name} ")
        println("report  should be created for authenticated user ")
        print("use token:" + OAuthTest.TOKEN)
        val generatedReportName = "test-report-" + System.currentTimeMillis();
        val report = Report(name=generatedReportName)
        given().contentType("application/json").body(report)
                .header("Authorization","Bearer " + OAuthTest.TOKEN)
                .`when`().post("/reports")
                .then()
                .statusCode(200)
    }

    @Test
    fun testDeleteReport (){
        println("${object {}.javaClass.enclosingMethod.name} ")
        println("use token:" + OAuthTest.TOKEN)
        val generatedReportName = "test-report-" + System.currentTimeMillis();
        val report = Report(name=generatedReportName)
        println("\n 1:  create report $report")
        given().contentType("application/json").body(report)
                .header("Authorization","Bearer " + OAuthTest.TOKEN)
                .`when`().post("/reports")
                .then()
                .statusCode(200)

        println("2: get created report from Database")
        val reports = given().header("Authorization","Bearer " + OAuthTest.TOKEN)
                .`when`().get("/reports").`as`(mutableListOf<HashMap<String?, String?>>()::class.java)

        var reportFromDB: Report? = null

        for(rep in reports){
            println("\n check report from database:$rep")
            if (rep["name"].toString().equals(generatedReportName)){
                reportFromDB = Report(id=(rep["id"]as Int) , name=(rep["name"]as String))
                break
            }
        }

        assert(reportFromDB != null, { "can't find report with name:$generatedReportName in database"})
        println("2: get created report from Database with id: $reportFromDB")
        println("3: trying to delete report: $reportFromDB")
        if (reportFromDB != null) {
            given().contentType("application/json")
                    .header("Authorization","Bearer " + OAuthTest.TOKEN)
                    .`when`().delete("/reports/${reportFromDB.id}")
                    .then()
                    .statusCode(200)
        }

        //TODO check that related expenses deleted as well

    }


    @Test
    fun testFindOneReport(){
        println("\n\n *****  ${object {}.javaClass.enclosingMethod.name} ***** \n")

        println("\n use token:" + OAuthTest.TOKEN)
        println("\n 1: get  reports from Database\n ")
        val reports = given().header("Authorization","Bearer " + OAuthTest.TOKEN)
                .`when`().get("/reports").`as`(mutableListOf<HashMap<String?, Any?>>()::class.java)

        assert(reports.isNotEmpty())
        println("\n 2: get  report with id: ${reports.last()["id"]}")

        val result =  given().header("Authorization","Bearer " + OAuthTest.TOKEN)
                .`when`().get("/reports/${reports.last()["id"]}").`as`(HashMap<String?, String?>()::class.java)

        println("\n 3: get  report: $result for id: ${reports.last()["id"]}\n ")

        ((result["id"] as Int) == (reports.last()["id"] as Int)).let{ assert(it) }
        assert(result["name"].toString().equals(reports.last()["name"]))

    }

    @Test
    fun testUpdateReport(){
        println("${object {}.javaClass.enclosingMethod.name} ")
        println("use token:" + OAuthTest.TOKEN)
    }
}

