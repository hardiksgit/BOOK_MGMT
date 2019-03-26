
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import org.datacontract.schemas._2004._07.wcfstudentservice.Book;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="SearchBookByIdResult" type="{http://schemas.datacontract.org/2004/07/WcfStudentService}Book" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "searchBookByIdResult"
})
@XmlRootElement(name = "SearchBookByIdResponse")
public class SearchBookByIdResponse {

    @XmlElementRef(name = "SearchBookByIdResult", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<Book> searchBookByIdResult;

    /**
     * Gets the value of the searchBookByIdResult property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Book }{@code >}
     *     
     */
    public JAXBElement<Book> getSearchBookByIdResult() {
        return searchBookByIdResult;
    }

    /**
     * Sets the value of the searchBookByIdResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Book }{@code >}
     *     
     */
    public void setSearchBookByIdResult(JAXBElement<Book> value) {
        this.searchBookByIdResult = value;
    }

}
