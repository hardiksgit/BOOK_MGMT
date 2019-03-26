
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import org.datacontract.schemas._2004._07.wcfstudentservice.ArrayOfBook;


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
 *         &lt;element name="GetAllBooksResult" type="{http://schemas.datacontract.org/2004/07/WcfStudentService}ArrayOfBook" minOccurs="0"/>
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
    "getAllBooksResult"
})
@XmlRootElement(name = "GetAllBooksResponse")
public class GetAllBooksResponse {

    @XmlElementRef(name = "GetAllBooksResult", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<ArrayOfBook> getAllBooksResult;

    /**
     * Gets the value of the getAllBooksResult property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfBook }{@code >}
     *     
     */
    public JAXBElement<ArrayOfBook> getGetAllBooksResult() {
        return getAllBooksResult;
    }

    /**
     * Sets the value of the getAllBooksResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfBook }{@code >}
     *     
     */
    public void setGetAllBooksResult(JAXBElement<ArrayOfBook> value) {
        this.getAllBooksResult = value;
    }

}
