package biz.majorov.expenses

import java.io.IOException
import javax.ws.rs.container.ContainerRequestContext
import javax.ws.rs.container.ContainerResponseContext
import javax.ws.rs.container.ContainerResponseFilter
import javax.ws.rs.ext.Provider
import org.apache.commons.logging.LogFactory
import org.apache.commons.logging.Log

/**
 * Custom cors filter  implementation.
 * Can't make quarkus default cors to work
 *
 */
@Provider
class CORSFilter : ContainerResponseFilter {
    @Throws(IOException::class)
    override fun filter(requestContext: ContainerRequestContext, responseContext: ContainerResponseContext) {
        LOGGER.debug("Modifing response with CORSFIlter: " + responseContext.headers)
        val headers = responseContext.headers
        headers.putSingle("Access-Control-Allow-Origin", "*")
        headers.putSingle("Access-Control-Allow-Headers","*")
        headers.putSingle("Access-Control-Allow-Methods", "*")
        LOGGER.debug("Modified to add the required header: " + responseContext.headers)
    }

    companion object {
        private val LOGGER: Log = LogFactory.getLog(CORSFilter::class.java)
    }
}