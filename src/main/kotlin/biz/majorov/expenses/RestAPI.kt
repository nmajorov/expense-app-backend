package biz.majorov.expenses

import io.quarkus.security.Authenticated
import org.eclipse.microprofile.openapi.annotations.OpenAPIDefinition
import org.eclipse.microprofile.openapi.annotations.Operation
import org.eclipse.microprofile.openapi.annotations.enums.SchemaType
import org.eclipse.microprofile.openapi.annotations.info.Contact
import org.eclipse.microprofile.openapi.annotations.info.Info
import org.eclipse.microprofile.openapi.annotations.info.License
import org.eclipse.microprofile.openapi.annotations.media.Content
import org.eclipse.microprofile.openapi.annotations.media.Schema
import org.eclipse.microprofile.openapi.annotations.parameters.Parameter
import org.eclipse.microprofile.openapi.annotations.responses.APIResponse
import org.eclipse.microprofile.openapi.annotations.responses.APIResponses
import javax.ws.rs.*
import javax.ws.rs.core.Context
import javax.ws.rs.core.MediaType
import javax.ws.rs.core.Response
import javax.ws.rs.core.SecurityContext


/**
 * Expenses management application RESTful services API
 */

@OpenAPIDefinition(
        info = Info(
                title = "Expenses API demo app",
                version = "1.0.0",
                contact = Contact(
                        name = "Expenses API demo app",
                        url = "https://quarkus.io/guides/openapi-swaggerui#providing-application-level-openapi-annotations",
                        email = "nmajorov@redhat.com"),
                license = License(
                        name = "Apache 2.0",
                        url = "http://www.apache.org/licenses/LICENSE-2.0.html"))
)
@Path("/")
interface ExpensesService {

    @GET
    @Path("/expenses")
    @Operation(description = "Get all expenses in system")
    @Produces(MediaType.APPLICATION_JSON)
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Expense::class))]
        )
    ])
    fun findAll(): Response

    @DELETE
    @Path("/expenses/{id}")
    @Operation(summary = "Delete an expense")
    @APIResponses(value = [

        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))]),
        APIResponse(responseCode = "400", description = "invalid input"),
        APIResponse(responseCode = "404", description = "expense not found")
    ])
    fun delete(@PathParam("id") @Parameter(description = "Expense id to delete", required = true,
            schema = Schema(type = SchemaType.NUMBER)) id: Long) :Response

    @POST
    @Path("/expenses")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Operation(summary = "Add a new expense")
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))]),
        APIResponse(responseCode = "405", description = "invalid input")
    ])
    fun create(expense: Expense) :Response


    @PUT
    @Path("/expenses")
    @Operation(summary = "update an existing expense")
    @Consumes(MediaType.APPLICATION_JSON)
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation")
    ]
    )
    fun update(expense: Expense):Response


    @GET
    @Path("/expenses/{id}")
    @Operation(summary = "fetch an expense by id")
    @APIResponses(value = [
        APIResponse(responseCode = "400", description = "invalid id supplied"),
        APIResponse(responseCode = "404", description = "expense not found"),
        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))])
    ])
    @Produces("application/json")
    fun find(@PathParam("id") @Parameter(description = "Expense id used to find one", required = true,
            schema = Schema(type = SchemaType.NUMBER)) id: Long): Response
}

@Path("/reports")
interface ReportService {
    @GET
    @Path("/")
    @Operation(description = "Get reports for user. User has to be authenticated with RedHat SSO")
    @Produces(MediaType.APPLICATION_JSON)
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Array<Report>::class) )]
        )
    ])
    @Authenticated
    fun findAll(@Context ctx: SecurityContext): Response

    @GET
    @Path("/{id}")
    @Operation(summary = "find an report by id")
    @APIResponses(value = [

        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))]),
        APIResponse(responseCode = "400", description = "invalid input"),
        APIResponse(responseCode = "404", description = "not found")
    ])
    @Authenticated
    fun find(@Context ctx: SecurityContext ,@PathParam("id") @Parameter(description = "report id", required = true,
            schema = Schema(type = SchemaType.NUMBER)) id: Long) :Response

    @DELETE
    @Path("/{id}")
    @Operation(summary = "Delete an report by id")
    @APIResponses(value = [

        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))]),
        APIResponse(responseCode = "400", description = "invalid input"),
        APIResponse(responseCode = "404", description = "not found")
    ])
    @Authenticated
    fun delete(@Context ctx: SecurityContext ,@PathParam("id") @Parameter(description = "item id to delete", required = true,
            schema = Schema(type = SchemaType.NUMBER)) id: Long) :Response

    @POST
    @Path("/")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Operation(summary = "Add a new report item")
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation",
                content = [Content(mediaType = "application/json",
                        schema = Schema(implementation = Response::class))]),
        APIResponse(responseCode = "405", description = "invalid input")
    ])
    @Authenticated
    fun create(@Context ctx: SecurityContext, report: Report) :Response


    @PUT
    @Path("/")
    @Operation(summary = "update an existing report")
    @Consumes(MediaType.APPLICATION_JSON)
    @APIResponses(value = [
        APIResponse(responseCode = "200", description = "successful operation")
    ]
    )
    fun update(report: Report):Response

}


