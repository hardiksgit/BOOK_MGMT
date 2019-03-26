
package org.tempuri;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.6-1b01 
 * Generated source version: 2.1
 * 
 */
@WebServiceClient(name = "BookService", targetNamespace = "http://tempuri.org/", wsdlLocation = "http://localhost:8733/Design_Time_Addresses/WcfStudentService/StudentService/?wsdl")
public class BookService
    extends Service
{

    private final static URL BOOKSERVICE_WSDL_LOCATION;
    private final static WebServiceException BOOKSERVICE_EXCEPTION;
    private final static QName BOOKSERVICE_QNAME = new QName("http://tempuri.org/", "BookService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8733/Design_Time_Addresses/WcfStudentService/StudentService/?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        BOOKSERVICE_WSDL_LOCATION = url;
        BOOKSERVICE_EXCEPTION = e;
    }

    public BookService() {
        super(__getWsdlLocation(), BOOKSERVICE_QNAME);
    }

    public BookService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    /**
     * 
     * @return
     *     returns IBookService
     */
    @WebEndpoint(name = "BasicHttpBinding_IBookService")
    public IBookService getBasicHttpBindingIBookService() {
        return super.getPort(new QName("http://tempuri.org/", "BasicHttpBinding_IBookService"), IBookService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns IBookService
     */
    @WebEndpoint(name = "BasicHttpBinding_IBookService")
    public IBookService getBasicHttpBindingIBookService(WebServiceFeature... features) {
        return super.getPort(new QName("http://tempuri.org/", "BasicHttpBinding_IBookService"), IBookService.class, features);
    }

    private static URL __getWsdlLocation() {
        if (BOOKSERVICE_EXCEPTION!= null) {
            throw BOOKSERVICE_EXCEPTION;
        }
        return BOOKSERVICE_WSDL_LOCATION;
    }

}
