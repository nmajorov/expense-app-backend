package biz.majorov.expenses

import com.fasterxml.jackson.databind.ObjectMapper
import io.restassured.filter.FilterContext
import io.restassured.response.Response
import io.restassured.filter.Filter
import io.restassured.specification.FilterableRequestSpecification
import io.restassured.specification.FilterableResponseSpecification
import org.jboss.logging.Logger
import org.junit.jupiter.api.BeforeEach
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse


/**
 *  This class has a  common functions for oauth2 flow scenarios tests
 *  Quarkus always set all restassured tests to default address  [:1]:8081
 *  we need to get access_token from remote urls, so we created  a call to  external sso separately
 *  without using reassured by using new java http client
 *
 *  @author Nikolaj Majorov
 */
open class OAuthTest {

    companion object {
        var TOKEN = ""
        var logFilter: Filter = CustomLogFilter()
    }


    /**
     * Custom filter for restassured request and response tracing
     *
     */
    class CustomLogFilter : Filter {
        private var log: Logger = Logger.getLogger(CustomLogFilter::class.java)
        override fun filter(
            requestSpec: FilterableRequestSpecification,
            responseSpec: FilterableResponseSpecification?, ctx: FilterContext
        ): Response {
            val response: Response = ctx.next(requestSpec, responseSpec)
            val requestBuilder = StringBuilder()
            requestBuilder.append("\n ------------- Request ----------\n")
            requestBuilder.append(requestSpec.method)
            requestBuilder.append("\n")
            requestBuilder.append(requestSpec.uri)
            requestBuilder.append("\n")
            requestBuilder.append("Headers:")
            for (it in requestSpec.headers){
                requestBuilder.append("\n ${it.name}:${it.value} \n")
            }
            requestBuilder.append("\n")
            log.info(requestBuilder.toString()) //Log your request where you need it

            val responseBuilder = StringBuilder()
            responseBuilder.append("\n ------------- Response ----------\n")
            responseBuilder.append(response.statusLine)
            responseBuilder.append("\n")
            responseBuilder.append(response.body)
            log.info(responseBuilder.toString()) //Log your response where you need it
            responseBuilder.append("\n")
            return response
        }
    }


    /**
     * create a parameters for a form encoded transfer
     */
    private fun ofMimeMultipartData(data: Map<String, String>): HttpRequest.BodyPublisher {
        var byteArrays = byteArrayOf()
        val separator = ("&").toByteArray(Charsets.UTF_8)

        var el = data.size
        for ((key, value) in data) {
            byteArrays += ("$key=$value").toByteArray(Charsets.UTF_8)

            el --

            //don't append separator to last element
            if (el >0 ) {
                byteArrays += separator
            }
        }
        return HttpRequest.BodyPublishers.ofByteArrays(mutableListOf(byteArrays).asIterable())
    }

    /**
     * get access token from  keycloak by  using Password Grant
     */
    @BeforeEach
    fun getAccessToken() {

        if (TOKEN.isNotEmpty()) return

        //act as react application
        val clientID = "curl"
        val user = "niko"
        val password = "openshift"
        val ssoURL: String = System.getenv("KEYCLOAK_URL").plus("/protocol/openid-connect/token")

        println("use sso url: $ssoURL")

        val parametersMap = mapOf(
            "client_id" to clientID,
            "username" to user,
            "password" to password,
            "grant_type" to "password"
        )


        val client = HttpClient.newBuilder().build()
        val request = HttpRequest.newBuilder()
            .uri(URI.create(ssoURL))
            .header("Content-Type", "application/x-www-form-urlencoded")
            .POST(ofMimeMultipartData(parametersMap))
            .build()

        val response = client.send(request, HttpResponse.BodyHandlers.ofString())
        if (response.statusCode() !=200) {
            println("body: " + response.body())
            throw Throwable ("can't obtain access_token from sso")
        }


        val json = ObjectMapper()
        val jsonParsed = json.readerFor(Expense::class.java).readTree(response.body().toString())

        //remove " json string characters
        TOKEN = jsonParsed["access_token"].toString().replace("\"", "")

        println("\n using  access_token: $TOKEN")

    }

}
