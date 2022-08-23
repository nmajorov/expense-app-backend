package biz.majorov.expenses;

import com.fasterxml.jackson.databind.ObjectMapper
import io.restassured.parsing.Parser
import org.junit.jupiter.api.BeforeEach
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse


/**
 *  This class has a  common functions for oauth2 flow scenarios tests
 *  Quarkus always set all restassured tests to default address  [:1]:8081
 *  I need to get access_token from remote urls, so I need  a call  external sso separately
 *  without using reassured.
 *  @author Nikolaj Majorov
 */
open class OAuthTest {
    val defaultParser = Parser.JSON

    companion object {
        var TOKEN = ""
    }


    /**
     * create a parameters for a form encoded transfer
     */
    fun ofMimeMultipartData(data: Map<String, String>): HttpRequest.BodyPublisher {
        var byteArrays = byteArrayOf()
        var separator = ("&").toByteArray(Charsets.UTF_8);

        var el = data.size
        for ((key, value) in data) {
            byteArrays += ("$key=$value").toByteArray(Charsets.UTF_8)

            el --

            //don't append separator to last element
            if (el >0 ) {
                byteArrays += separator;
            }
        }
        return HttpRequest.BodyPublishers.ofByteArrays(mutableListOf(byteArrays).asIterable());
    }

    /**
     * get access token using Password Grant
     */
    @BeforeEach
    fun getAccessToken() {

        if (OAuthTest.TOKEN.isNotEmpty()) return

        //act as react application
        val clientID = "curl"
        val user = "niko"
        val password = "openshift"
        var ssoURL: String = System.getenv("KEYCLOAK_URL").plus("/protocol/openid-connect/token")
        println("use sso url: $ssoURL")

        var parmetersMap = mapOf<String, String>(
            "client_id" to clientID,
            "username" to user,
            "password" to password,
            "grant_type" to "password"
        )
        //.formParam("username", user))

        val client = HttpClient.newBuilder().build();
        val request = HttpRequest.newBuilder()
            .uri(URI.create(ssoURL))
            .header("Content-Type", "application/x-www-form-urlencoded")
            .POST(ofMimeMultipartData(parmetersMap))
            .build()

        val response = client.send(request, HttpResponse.BodyHandlers.ofString());
        if (response.statusCode() !=200) {
            println("body: " + response.body())
            throw Throwable ("can't obtain access_token from sso")
        }


        val json = ObjectMapper()
        val jsonParsed = json.readerFor(Expense::class.java).readTree(response.body().toString())

        TOKEN = jsonParsed["access_token"].toString()
        println("\n using  access_token: ${TOKEN}")


    }

}
