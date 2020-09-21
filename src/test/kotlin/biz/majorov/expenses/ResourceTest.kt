package biz.majorov.expenses



import biz.majorov.expenses.Expense
import io.quarkus.test.junit.QuarkusTest
import io.restassured.RestAssured.given
import io.restassured.parsing.Parser
import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.*
import javax.inject.Inject
import javax.transaction.Transactional
import javax.ws.rs.core.MediaType

/**
 * test restful api
 *
 */

open class ResourceTest {


//    @Inject
//    lateinit var categoryRepository: CategoryRepository

 //    @Inject
 //   lateinit var locationRepository: LocationRepository

    /**
    @BeforeEach
    @Transactional
    fun `clean up database`() {
        println("cleaning database")
        cleanDB.invoke()
    }

    @Transactional
    fun saveTour(description: String ="very nice tour", price: Double = 499.99,
                 category: Category, location: Location): Tour {
        val tour = Tour()
        tour.category = category
        tour.location = location
        tour.price = price
        tour.description = description

        tourRepository?.persist(tour)

        return tour
    }

    @Transactional
    fun saveLocation(country: String, region: String, destName: String): Location {
        println("called save location")
        val location = Location()
        location.country = country
        location.region = region
        location.destinationName = destName

        locationRepository.run {
            persist(location)
        }

        return location
    }


    @Transactional
    fun saveCategory(t: String): Category {
        val category = Category()
        category.type = t

        categoryRepository.run {
            persist(category)
        }

        return category
    }

    /**
     * lambda for cleaning database
     */
    val cleanDB = {
        tourRepository?.deleteAll()
        categoryRepository.deleteAll()
        locationRepository.deleteAll()
    }
     **/
}


// parse json only for all tests
val defaultParser = Parser.JSON


/**
 * test using default dataset
 */
@QuarkusTest
class ExpenseResourceTest : ResourceTest() {

    @Test
    fun `test get all expenses`() {
        println("${object {}.javaClass.enclosingMethod.name} ")
        given()
                .`when`().get("/expenses")
                .then()
                .statusCode(200)
    }

    @Test
    fun `test select one expense item`() {
        println("${object {}.javaClass.enclosingMethod.name} ")
        println("first get all expenses")
        val response = given().get("/expenses").`as`(mutableListOf<HashMap<String?, String?>>()::class.java)
        assertFalse(response.isEmpty())

        val expenseFromRequest = Expense()
        expenseFromRequest.id = response.last()["id"] as Int
        expenseFromRequest.description = response.last()["description"] as String
        expenseFromRequest.report = response.last()["report"] as Int
        expenseFromRequest.amount = response.last()["amount"] as Double
        expenseFromRequest.createdAT = LocalDate.parse(response.last()["createdAT"] as String,DateTimeFormatter.ISO_DATE)

        val response2 = given().get("/expenses/" + expenseFromRequest.id).`as` (hashMapOf<Any?, Any?>()::class.java)
        println("get response:${response}")
        val id = response2["id"]
        println("got id from restful service call:$id")
        assertEquals(id, expenseFromRequest.id)
        assertEquals(response2["amount"], expenseFromRequest.amount)

    }

    @Test
    fun `test create expense item`() {
        println("${object {}.javaClass.enclosingMethod.name} ")

        val expense = Expense()
        expense.amount=10.12
        expense.description ="train ticket"
        expense.createdAT= LocalDate.now()
        expense.report =1

        println("step1 post item  $expense")
        given().contentType("application/json").body(expense)
                .`when`().post("/expenses").then().statusCode(200)

        val response = given().get("/expenses").`as`(mutableListOf<HashMap<String?, String?>>()::class.java)
        println("step2: got response:${response}")
        assertFalse(response.isEmpty())

        val desc = response.last()["description"]
        print("description :${desc}")
        assertEquals(expense.description, desc)
    }

    @Test
    fun `test update expense item`(){
        println("${object {}.javaClass.enclosingMethod.name} ")
        val expense = Expense()
        expense.amount=80.12
        expense.description ="train ticket"
        expense.createdAT= LocalDate.now()
        expense.report =1

        println("step1 create item  $expense")
        given().contentType("application/json").body(expense)
                .`when`().post("/expenses").then().statusCode(200)

        println("get all expenses")
        var response = given().get("/expenses").`as`(mutableListOf<HashMap<String?, String?>>()::class.java)
        val allExpenseSizeBeforDelete = response.size
        println("get ${allExpenseSizeBeforDelete} expenses")
        println("get last expense from received list")
        val expenseFromRequest = Expense()
        expenseFromRequest.id = response.last()["id"] as Int
        expenseFromRequest.description = response.last()["description"] as String
        expenseFromRequest.report = response.last()["report"] as Int
        expenseFromRequest.amount = response.last()["amount"] as Double

        val dt = LocalDate.parse(response.last()["createdAT"] as String,DateTimeFormatter.ISO_DATE)
        expenseFromRequest.createdAT = dt

        //be sure you take the same expense
        assertEquals(expenseFromRequest.amount , expense.amount)

        println("change amount")

        expenseFromRequest.amount=45.99
        given().contentType("application/json").body(expenseFromRequest)
                .`when`().put("/expenses").then().statusCode(200)
        println ("get updated expense and check if it has a different amount")
        val responseStep2 = given().get("/expenses/" + expenseFromRequest.id).`as` (hashMapOf<Any?, Any?>()::class.java)

        assertEquals(expenseFromRequest.amount,responseStep2["amount"] as Double)


    }

    @Test
    fun `test delete expense item`(){
        println("${object {}.javaClass.enclosingMethod.name} ")

        val expense = Expense()
        expense.amount=110.12
        expense.description ="train ticket"
        expense.createdAT= LocalDate.now()
        expense.report =1

        println("step1 create item  $expense")
        given().contentType("application/json").body(expense)
                .`when`().post("/expenses").then().statusCode(200)

        println("get all expenses")
        var response = given().get("/expenses").`as`(mutableListOf<HashMap<String?, String?>>()::class.java)
        val allExpenseSizeBeforDelete = response.size
        println("get ${allExpenseSizeBeforDelete} expenses")
        println("get last expense from received list")
        val expenseFromRequest = Expense()
        expenseFromRequest.id = response.last()["id"] as Int
        expenseFromRequest.description = response.last()["description"] as String
        expenseFromRequest.report = response.last()["report"] as Int
        expenseFromRequest.amount = response.last()["amount"] as Double

        val dt = LocalDate.parse(response.last()["createdAT"] as String,DateTimeFormatter.ISO_DATE)
        expenseFromRequest.createdAT = dt

        //be sure last expenses is inserted one
        assertEquals(expense.amount,expenseFromRequest.amount)

        println("step 3 delete expense with id ${expenseFromRequest.id}" )
        given().contentType("application/json")
                .`when`().delete("/expenses/" + expenseFromRequest.id).then().statusCode(200)

        response = given().get("/expenses").`as`(mutableListOf<HashMap<String?, String?>>()::class.java)
        val allExpenseSizeAfterDelete = response.size

        assertTrue(allExpenseSizeAfterDelete < allExpenseSizeBeforDelete)
        assertEquals(allExpenseSizeAfterDelete,(allExpenseSizeBeforDelete -1))


    }
}