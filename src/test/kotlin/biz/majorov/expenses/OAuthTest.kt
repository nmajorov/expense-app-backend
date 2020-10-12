package biz.majorov.expenses;

import io.restassured.RestAssured
import io.restassured.builder.RequestSpecBuilder
import io.restassured.parsing.Parser
import io.restassured.specification.RequestSpecification
import org.junit.jupiter.api.BeforeEach
import java.util.HashMap


/**
 *  This class has a  common functions for oauth2 flow scenarios
 */
open class OAuthTest {
    val defaultParser = Parser.JSON

    companion object {
        var TOKEN = ""
    }

    /**
     * get access token using Password Grant
     */
    @BeforeEach
    fun getAccessToken() {

          if (OAuthTest.TOKEN.isNotEmpty()){
            return
        }

        //act as react application
        val clientID = "app-react"
        val user = "niko"
        val password = "niko"
        var ssoURL: String = System.getenv("KEYCLOAK_URL").plus("/protocol/openid-connect/token")
        println("use sso url: $ssoURL")

        val rbSpec: RequestSpecification = RequestSpecBuilder().setBaseUri(ssoURL).build()

        val response =
                RestAssured.given(rbSpec).baseUri(ssoURL).formParam("grant_type", "password")
                        .formParam("client_id", clientID)
                        .formParam("username", user)
                        .formParam("password", password).`when`().post("/")
                        .`as`(HashMap<String?, String?>()::class.java)

        TOKEN = response["access_token"].toString()
        println("\n access_token now: ${TOKEN}")


    }

}
