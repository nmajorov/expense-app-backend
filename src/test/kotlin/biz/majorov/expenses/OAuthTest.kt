package biz.majorov.expenses;

import io.restassured.parsing.Parser
import org.junit.jupiter.api.BeforeEach
import java.math.BigInteger
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.util.*
import javax.net.ssl.HttpsURLConnection


/**
 *  This class has a  common functions for oauth2 flow scenarios
 */
open class OAuthTest {
    val defaultParser = Parser.JSON

    companion object {
        var TOKEN = ""
    }

    fun ofMimeMultipartData(data: Map<String, String>): HttpRequest.BodyPublisher {
        val boundary = BigInteger(256, Random()).toString()

        var byteArrays = byteArrayOf()
        var separator = ("--" + boundary + "\r\nContent-Disposition: form-data; name=")
            .toByteArray(Charsets.UTF_8);
        for ((key, value) in data) {
            byteArrays += (separator);


            byteArrays += (
                    ("\"" + key + "\"\r\n\r\n" + value + "\r\n")
                        .toByteArray(Charsets.UTF_8)
                    );
        }
        //HttpsURLConnection.setDefaultHostnameVerifier { hostname, session -> true }

        byteArrays += "--$boundary--\r\n".toByteArray(Charsets.UTF_8);
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
            "password" to password
        )
        //.formParam("username", user))

        val client = HttpClient.newBuilder().build();
        val request = HttpRequest.newBuilder()
            .uri(URI.create(ssoURL))
            .header("Content-Type", "application/x-www-form-urlencoded")
            .POST(ofMimeMultipartData(parmetersMap))
            .build()

        val response = client.send(request, HttpResponse.BodyHandlers.ofString());
        println("Get body: " + response.body())



        /**
        val response =
        RestAssured.given().formParam("grant_type", "password")
        .formParam("client_id", clientID)
        .formParam("username", user)
        .formParam("password", password).`when`().post(ssoURL)
        .`as`(HashMap<String?, String?>()::class.java)
         **/

        //TOKEN = response["access_token"].toString()
        // println("\n access_token now: ${TOKEN}")


    }

}
