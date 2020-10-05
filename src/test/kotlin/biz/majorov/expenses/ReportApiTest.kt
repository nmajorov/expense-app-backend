package biz.majorov.expenses

import io.quarkus.test.junit.QuarkusTest
import io.restassured.RestAssured
import org.junit.jupiter.api.Test

@QuarkusTest
class ReportApiTest : ResourceTest() {
    @Test
    fun `test get all report for user`() {
        println("${object {}.javaClass.enclosingMethod.name} ")
        println("reports should be get for  specific  user ")
        RestAssured.given()
                .`when`().get("/reports")
                .then()
                .statusCode(200)
    }
}