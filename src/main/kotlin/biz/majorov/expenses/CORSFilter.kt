package biz.majorov.expenses

import java.io.IOException
import javax.ws.rs.container.ContainerRequestContext
import javax.ws.rs.container.ContainerResponseContext
import javax.ws.rs.container.ContainerResponseFilter
import javax.ws.rs.ext.Provider
import org.apache.commons.logging.LogFactory
import org.apache.commons.logging.Log

/**
 * Custom CORS filter  implementation.
 * Can't make quarkus default CORS configuration to work
 *
 */
@Provider
class CORSFilter : ContainerResponseFilter {
    @Throws(IOException::class)
    override fun filter(requestContext: ContainerRequestContext, responseContext: ContainerResponseContext) {
        val headers = responseContext.headers
        headers.putSingle("Access-Control-Allow-Origin", "*")
        headers.putSingle("Access-Control-Allow-Headers","*")
        headers.putSingle("Access-Control-Allow-Methods", "*")
      //  LOGGER.debug("Modified headers: " + responseContext.headers)
    }

    companion object {
        private val LOGGER: Log = LogFactory.getLog(CORSFilter::class.java)
    }
}