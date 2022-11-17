package biz.majorov.expenses

import com.fasterxml.jackson.databind.ObjectMapper
import org.apache.commons.logging.LogFactory
import org.junit.jupiter.api.Test
import java.time.LocalDate
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Assertions.assertEquals

/**
 * test object mapping
 *
 */
class JacksonTest {
    private val logger = LogFactory.getLog(JacksonTest::class.java)

    val json = ObjectMapper()



    @Test
    @Throws(Exception::class)
    fun testSerializeSingleExpenseObject() {
        var expense = Expense()

        logger.info("************ json from single empty object: " + this.json.writeValueAsString(listOf(expense)).toString())


        expense= Expense(amount = 30.12,
                createdAT = LocalDate.of(2019, 10, 1),
                description = "Schloss Schoenbrunn entry fee")

        logger.info("************ json from initialized object: " + this.json.writeValueAsString(listOf(expense)).toString())
        val listExpenses = this.json.readerFor(Expense::class.java).readTree("[{\"amount\":30.12,\"id\":null," +
                "\"description\":\"Schloss Schoenbrunn entry fee\",\"createdAT\":\"2019-10-01\",\"tstamp\":\"2019-10-01\"" +
                "}]")

        assertTrue(expense.amount == listExpenses[0]["amount"].asDouble())

      //  assertEquals(expense.description, listExpenses[0].description)
       // assertEquals(expense.createdAT.toString(), listExpenses[0].createdAT.toString())


    }


    @Test
    @Throws(Exception::class)
    fun testSerializeExchangeQuote(){

        var quote = ExchangeQuote(id = 1, currencyPair = "EUR_CHF", quote = 0.97693)


        /**
        val simpleCollection = arrayListOf(Expense(amount = 10.0,
                createdAT = LocalDate.of(2019, 10, 1),
                description = "Schloss Schoenbrunn entry fee"), Expense(amount = 10.0,
                createdAT = LocalDate.of(2019, 10, 1),
                description = "Lunch"))
        **/

        val jsonFromObj = this.json.writeValueAsString(quote)
        logger.info("************ json array : $jsonFromObj")

        val  testJSON ="""
            [
              {
                "id": 1,
                "currencyPair": "EUR_CHF",
                "quote": 0.9758
              },
              {
                "id": 2,
                "currencyPair": "EUR_USD",
                "quote": 1.0318
              },
              {
                "id": 3,
                "currencyPair": "EUR_GBP",
                "quote": 0.9437
              },
              {
                "id": 4,
                "currencyPair": "USD_CHF",
                "quote": 1.0318
              },
              {
                "id": 5,
                "currencyPair": "GBP_CHF",
                "quote": 1.1229
              }
            ]
        """.trimIndent()

        logger.info("************ json array from string : $testJSON")
        val quotes = mutableListOf<ExchangeQuote>()
        val nodes = this.json.readerFor(Expense::class.java).readTree(testJSON)
        nodes.forEach {
            println(it)
            var q = ExchangeQuote(id = it["id"].asInt(), currencyPair = it["currencyPair"].toString(), quote = it["quote"].asDouble())
            quotes.add(q)
        }

        assert(quotes.isNotEmpty())
        assert(quotes.size == 5)
    }

}