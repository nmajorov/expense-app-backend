package biz.majorov.expenses

import io.quarkus.flyway.FlywayDataSource
import org.flywaydb.core.Flyway
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject
import javax.inject.Named


@ApplicationScoped
class MigrationService {
    // You can Inject the object if you want to use it manually
    //@Inject
    //lateinit var flyway: Flyway

    @Inject
    @FlywayDataSource("camel-sql")
    lateinit var flyway: Flyway


    fun checkMigration() {
        // Use the flyway instance manually
        flyway.clean()
        flyway.migrate()
        // This will print 1.0.0
        System.out.println(flyway.info().current().getVersion().toString())
    }
}