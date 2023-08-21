package biz.majorov.expenses

import io.quarkus.flyway.FlywayDataSource
import org.flywaydb.core.Flyway
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject


/**
 *
 * Run database migration at start
 *
 */
@ApplicationScoped
class MigrationService {

    @Inject
    @FlywayDataSource("camel-sql")
    lateinit var flyway: Flyway


    fun checkMigration() {
        // Use the flyway instance manually
        flyway.clean()
        flyway.migrate()
        // This will print 1.0.0
        println(flyway.info().current().version.toString())
    }
}