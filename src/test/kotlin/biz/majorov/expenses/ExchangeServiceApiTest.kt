package biz.majorov.expenses

import com.fasterxml.jackson.databind.ObjectMapper
import io.quarkus.test.junit.QuarkusTest
import io.restassured.RestAssured.given
import org.junit.jupiter.api.Test
import java.time.LocalDate
import java.util.HashMap


@QuarkusTest
class ExchangeServiceApiTest {
    val json = ObjectMapper()

    @Test
    fun `test get all exchange rates`() {
        println("${object {}.javaClass.enclosingMethod.name} ")
        var quoteFrinDB: ExchangeQuote? = null
        val resposeQuotesJson =   given().`when`().get("/exchange").`as`(mutableListOf<HashMap<String?, Any?>>()::class.java)
         assert(resposeQuotesJson.isNotEmpty())
        for(q in resposeQuotesJson){
            println("\n check quote $q")

            //if (rep["name"].toString().equals(generatedReportName)){
           //     reportFromDB = Report(id=(rep["id"]as Int) , name=(rep["name"]as String))
           //     break
           // }
        }
    }


}

