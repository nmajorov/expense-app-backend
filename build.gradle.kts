import org.jetbrains.kotlin.backend.wasm.lower.excludeDeclarationsFromCodegen
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

val quarkusPlatformGroupId: String by project
val quarkusPlatformArtifactId: String by project
val quarkusPlatformVersion: String by project
val quarkusKotlinVersion: String by project



plugins{
    java
    id("io.quarkus")
    kotlin("jvm")
}




repositories {
    mavenLocal()
    mavenCentral()
}





dependencies {

    implementation(enforcedPlatform("${quarkusPlatformGroupId}:${quarkusPlatformArtifactId}:${quarkusPlatformVersion}")  as ModuleDependency){
    implementation(enforcedPlatform("${quarkusPlatformGroupId}:quarkus-camel-bom:${quarkusPlatformVersion}"))

        // exclude old kotlin 1.3.x implementation form classpath to avoid any issues
        // we use only latest at the moment kotlin jvm 1.4.x

        exclude(group="org.jetbrains.kotlin:kotlin", module = "stdlib-jdk7")
        exclude(group="org.jetbrains.kotlin:kotlin", module = "kotlin-stdlib-jdk8")
        exclude(group="org.jetbrains.kotlin" , module="kotlin-stdlib")
    }

    implementation("org.jetbrains.kotlin:kotlin-stdlib:${quarkusKotlinVersion}"){
        // exclude old kotlin 1.3.x dependencies
        exclude(group = "org.jetbrains.kotlin", module = "kotlin-stdlib-jdk7")
        exclude(group = "org.jetbrains.kotlin", module = "kotlin-stdlib-common")
    }


    implementation("io.quarkus:quarkus-arc")
    implementation("org.apache.camel.quarkus:camel-quarkus-direct")
    implementation("org.apache.camel.quarkus:camel-quarkus-jdbc")
    implementation("org.apache.camel.quarkus:camel-quarkus-bean")
    implementation("org.apache.camel.quarkus:camel-quarkus-sql")
    implementation("org.apache.camel.quarkus:camel-quarkus-kotlin"){
        exclude(group = "org.jetbrains.kotlin", module = "kotlin-stdlib-jdk8")
    }

    implementation("io.quarkus:quarkus-resteasy-jackson")
    implementation("io.quarkus:quarkus-smallrye-openapi")
    implementation("io.quarkus:quarkus-flyway")
    implementation("io.quarkus:quarkus-jdbc-postgresql")
    implementation("io.quarkus:quarkus-resteasy")
    implementation("io.quarkus:quarkus-elytron-security-oauth2")
    implementation("org.jboss.logmanager:log4j2-jboss-logmanager")

    testImplementation("io.quarkus:quarkus-junit5")
    testImplementation("io.rest-assured:kotlin-extensions"){
        exclude(group = "org.jetbrains.kotlin", module = "kotlin-stdlib-jdk8")
        exclude(group = "org.jetbrains.kotlin", module = "kotlin-stdlib-jdk7")
        exclude(group = "org.jetbrains.kotlin", module = "kotlin-stdlib-common")
    }


}

group = "biz.majorov.expenses"
version = "1.0.0-SNAPSHOT"

java {
    sourceCompatibility = JavaVersion.VERSION_11
    targetCompatibility = JavaVersion.VERSION_11
}

tasks.withType<KotlinCompile> {
    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
        kotlinOptions.javaParameters = true
    }

}
tasks.withType<JavaCompile> {
    options.encoding = "UTF-8"
    options.compilerArgs.add("-parameters")
}



/**
allOpen {
    annotation("javax.ws.rs.Path")
    annotation("javax.enterprise.context.ApplicationScoped")
    annotation("io.quarkus.test.junit.QuarkusTest")
}

test {
    systemProperty "java.util.logging.manager", "org.jboss.logmanager.LogManager"
}
 **/


