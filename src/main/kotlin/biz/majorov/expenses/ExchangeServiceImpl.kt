package biz.majorov.expenses

import javax.ws.rs.core.Response


/**
 * Implement exchange rates for currencies.
 * We need it to convert currencies
 *
 */
class ExchangeServiceImpl : ExchangeRateService {


    override fun getQuotes(Source: String): Response {
        TODO("Not yet implemented")
    }

    override fun updateQuote(quote: String): Response {
        TODO("Not yet implemented")
    }
}