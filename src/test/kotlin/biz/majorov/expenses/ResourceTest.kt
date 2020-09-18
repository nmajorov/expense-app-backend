package biz.majorov.expenses



import biz.majorov.expenses.Expense
import io.quarkus.test.junit.QuarkusTest
import io.restassured.RestAssured.given
import io.restassured.parsing.Parser
import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import java.util.*
import javax.inject.Inject
import javax.transaction.Transactional
import javax.ws.rs.core.MediaType

/**
 * test restful api for tours application.
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


@QuarkusTest
class ExpenseResourceTest : ResourceTest() {

    @Test
    fun `test get all expenes`() {
        println("${object {}.javaClass.enclosingMethod.name} ")
        given()
                .`when`().get("/expenses")
                .then()
                .statusCode(200)
        //.body(`is`("hello"))
    }
}