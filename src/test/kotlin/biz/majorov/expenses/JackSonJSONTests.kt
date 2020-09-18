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
                description = "Schloss Schoenbrunn entry fee",report = 1)

        logger.info("************ json from initialized object: " + this.json.writeValueAsString(listOf(expense)).toString())
        val listExpenses = this.json.readerFor(Expense::class.java).readTree("[{\"amount\":30.12,\"id\":null," +
                "\"description\":\"Schloss Schoenbrunn entry fee\",\"createdAT\":\"2019-10-01\",\"tstamp\":\"2019-10-01\"" +
                ",\"report\":\"1\"}]")

        assertTrue(expense.amount == listExpenses[0]["amount"].asDouble())

      //  assertEquals(expense.description, listExpenses[0].description)
       // assertEquals(expense.createdAT.toString(), listExpenses[0].createdAT.toString())


    }

    /***
    @Test
    @Throws(Exception::class)
    fun testSerializeExpensesCollection(){

        val simpleCollection = arrayListOf(Expense(amount = 10.0,
                createdAT = LocalDate.of(2019, 10, 1),
                description = "Schloss Schoenbrunn entry fee"), Expense(amount = 10.0,
                createdAT = LocalDate.of(2019, 10, 1),
                description = "Lunch"))

        val jsonFromObj = this.json.write(simpleCollection)
        logger.info("************ json array : $jsonFromObj")
        val  testJSON ="""
            [{"ID":"1", "DESCRIPTION":"Lunch", "AMOUNT":"10", "CREATED":"2019-09-29", "TSTAMP":"2019-10-05"},
             {"ID":"2", 
            "DESCRIPTION":"Schloss Schoenbrunn entry fee", "AMOUNT":"30", "CREATED":"2019-09-29", "TSTAMP":"2019-10-05"}]
        """.trimIndent().toLowerCase()

        logger.info("************ json array from string : $testJSON")
        val entities: List<Expense> = this.json.parse(testJSON).`object` as List<Expense>
        assertTrue(entities.isEmpty() == false)

    }
    **/
}