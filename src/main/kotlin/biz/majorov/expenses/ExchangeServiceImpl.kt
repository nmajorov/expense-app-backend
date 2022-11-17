package biz.majorov.expenses

import org.apache.camel.CamelContext
import org.jboss.logging.Logger
import java.math.BigDecimal
import javax.inject.Inject
import javax.ws.rs.core.MediaType
import javax.ws.rs.core.Response


/**
 * Implement exchange rates for currencies.
 * We need it to convert currencies
 *
 */
class ExchangeServiceImpl : ExchangeRateService {

    private val logger: Logger = Logger.getLogger(ExchangeRateService::class.java)

    @Inject
    lateinit var camelContext: CamelContext

    override fun getQuotes(source: String): Response {

            logger.debug("call get quote : $source")
            val exchange = this.camelContext.createFluentProducerTemplate().to("direct:select-quote")
                .withBody("%$source").send()

            @Suppress("UNCHECKED_CAST")
            val camelResult = exchange.getIn().body as List<Map<String, Any>>
            logger.debug("camel result: $camelResult")


            if (camelResult.isNotEmpty()){
                //convert sql result to the entities
                camelResult[0].let{
                    val entity =convertRowToEntity(it)

                    return Response.ok(entity, MediaType.APPLICATION_JSON).build()
                }
            }


            val builder = Response.status(Response.Status.NOT_FOUND)
            return builder.build()


    }

    override fun getAllQuotes(): Response {
        logger.debug("get all available quotes ")
        //set for not found by default

        val entities = mutableListOf<ExchangeQuote>()
        val exchange = this.camelContext.createFluentProducerTemplate().to("direct:select-all-quote")
            .send()



        @Suppress("UNCHECKED_CAST")
        val camelResult = exchange.getIn().body as List<Map<String, Any>>
        logger.debug("camel result: $camelResult")


        if (camelResult.isNotEmpty()){

            //convert sql result to the entities
            camelResult.forEach{
                val entity =convertRowToEntity(it)
                entities.add(entity)
            }
            
            logger.debug("entities size: " + entities.size)

        }
        
        return Response.ok(entities, MediaType.APPLICATION_JSON).build()
    }


    override fun updateQuote(quote: String): Response {
        TODO("Not yet implemented")
    }


    /**
     * convert database row to exchange quote entity
     *
     */
    private fun convertRowToEntity(row:Map<String,Any>):ExchangeQuote {
        logger.debug("convert row $row to exchage quote object")
        val quote = ExchangeQuote()
        quote.id = row["id".uppercase()] as Int
        quote.currencyPair = (row["currency_pair".uppercase()] as String)

        when (val numberRaw = row["quote".uppercase()]){
            is Double -> quote.quote = numberRaw
            is BigDecimal -> quote.quote = numberRaw.toDouble()
        }

        return quote
    }

}
