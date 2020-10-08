package biz.majorov.expenses

import org.apache.camel.CamelContext
import org.jboss.logging.Logger
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject

/**
 *  User calling backend are coming from sso and  not known internally.
 *  This class is used for inserting a user name  in database,
 *  so later his reports can be linked to his identity
 *
 */
@ApplicationScoped
class UserCheckService {
    private val logger: Logger = Logger.getLogger(UserCheckService::class.java)

    @Inject
    lateinit var camelContext: CamelContext

    /**
     * check if user  by name exist in database
     * also create it if needed and return user identity object
     * @param name user name to check
     */
    fun checkUser(name: String): User {
        logger.debug("start to check user with name $name")
        val user = User()
        val exchange = this.camelContext.createFluentProducerTemplate().
        to("direct:select-user-by-name").withBody(name).send()
        @Suppress("UNCHECKED_CAST")
        val camelResult= exchange.getIn().body  as List<Map<String, Any>>
        logger.debug("got result: $camelResult")

        if (camelResult.isEmpty()){
            //save user
           val result =  this.camelContext.createFluentProducerTemplate()
                    .to("direct:insert-user").withBody(name).send()
                    .getIn().body as List<Map<String, Any>>

            //reselect it to get id
            return checkUser(name);

        }else{
            user.id = camelResult.get(0).get("ID") as  Int
            user.name = camelResult.get(0).get("NAME") as String
        }

        return user
    }

}