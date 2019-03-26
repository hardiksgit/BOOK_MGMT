
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import org.datacontract.schemas._2004._07.wcfstudentservice.ArrayOfBook;
import org.datacontract.schemas._2004._07.wcfstudentservice.Book;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.tempuri package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _UpdateBookByIdS_QNAME = new QName("http://tempuri.org/", "s");
    private final static QName _AddBookResponseAddBookResult_QNAME = new QName("http://tempuri.org/", "AddBookResult");
    private final static QName _GetAllBooksResponseGetAllBooksResult_QNAME = new QName("http://tempuri.org/", "GetAllBooksResult");
    private final static QName _GetDataResponseGetDataResult_QNAME = new QName("http://tempuri.org/", "GetDataResult");
    private final static QName _UpdateBookByIdResponseUpdateBookByIdResult_QNAME = new QName("http://tempuri.org/", "UpdateBookByIdResult");
    private final static QName _SearchBookByIdResponseSearchBookByIdResult_QNAME = new QName("http://tempuri.org/", "SearchBookByIdResult");
    private final static QName _DeleteBookResponseDeleteBookResult_QNAME = new QName("http://tempuri.org/", "DeleteBookResult");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.tempuri
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link AddBook }
     * 
     */
    public AddBook createAddBook() {
        return new AddBook();
    }

    /**
     * Create an instance of {@link SearchBookById }
     * 
     */
    public SearchBookById createSearchBookById() {
        return new SearchBookById();
    }

    /**
     * Create an instance of {@link UpdateBookByIdResponse }
     * 
     */
    public UpdateBookByIdResponse createUpdateBookByIdResponse() {
        return new UpdateBookByIdResponse();
    }

    /**
     * Create an instance of {@link DeleteBook }
     * 
     */
    public DeleteBook createDeleteBook() {
        return new DeleteBook();
    }

    /**
     * Create an instance of {@link GetData }
     * 
     */
    public GetData createGetData() {
        return new GetData();
    }

    /**
     * Create an instance of {@link SearchBookByIdResponse }
     * 
     */
    public SearchBookByIdResponse createSearchBookByIdResponse() {
        return new SearchBookByIdResponse();
    }

    /**
     * Create an instance of {@link GetAllBooks }
     * 
     */
    public GetAllBooks createGetAllBooks() {
        return new GetAllBooks();
    }

    /**
     * Create an instance of {@link GetDataResponse }
     * 
     */
    public GetDataResponse createGetDataResponse() {
        return new GetDataResponse();
    }

    /**
     * Create an instance of {@link AddBookResponse }
     * 
     */
    public AddBookResponse createAddBookResponse() {
        return new AddBookResponse();
    }

    /**
     * Create an instance of {@link GetAllBooksResponse }
     * 
     */
    public GetAllBooksResponse createGetAllBooksResponse() {
        return new GetAllBooksResponse();
    }

    /**
     * Create an instance of {@link UpdateBookById }
     * 
     */
    public UpdateBookById createUpdateBookById() {
        return new UpdateBookById();
    }

    /**
     * Create an instance of {@link DeleteBookResponse }
     * 
     */
    public DeleteBookResponse createDeleteBookResponse() {
        return new DeleteBookResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Book }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "s", scope = UpdateBookById.class)
    public JAXBElement<Book> createUpdateBookByIdS(Book value) {
        return new JAXBElement<Book>(_UpdateBookByIdS_QNAME, Book.class, UpdateBookById.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "AddBookResult", scope = AddBookResponse.class)
    public JAXBElement<String> createAddBookResponseAddBookResult(String value) {
        return new JAXBElement<String>(_AddBookResponseAddBookResult_QNAME, String.class, AddBookResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfBook }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "GetAllBooksResult", scope = GetAllBooksResponse.class)
    public JAXBElement<ArrayOfBook> createGetAllBooksResponseGetAllBooksResult(ArrayOfBook value) {
        return new JAXBElement<ArrayOfBook>(_GetAllBooksResponseGetAllBooksResult_QNAME, ArrayOfBook.class, GetAllBooksResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "GetDataResult", scope = GetDataResponse.class)
    public JAXBElement<String> createGetDataResponseGetDataResult(String value) {
        return new JAXBElement<String>(_GetDataResponseGetDataResult_QNAME, String.class, GetDataResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "UpdateBookByIdResult", scope = UpdateBookByIdResponse.class)
    public JAXBElement<String> createUpdateBookByIdResponseUpdateBookByIdResult(String value) {
        return new JAXBElement<String>(_UpdateBookByIdResponseUpdateBookByIdResult_QNAME, String.class, UpdateBookByIdResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Book }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "s", scope = AddBook.class)
    public JAXBElement<Book> createAddBookS(Book value) {
        return new JAXBElement<Book>(_UpdateBookByIdS_QNAME, Book.class, AddBook.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Book }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SearchBookByIdResult", scope = SearchBookByIdResponse.class)
    public JAXBElement<Book> createSearchBookByIdResponseSearchBookByIdResult(Book value) {
        return new JAXBElement<Book>(_SearchBookByIdResponseSearchBookByIdResult_QNAME, Book.class, SearchBookByIdResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "DeleteBookResult", scope = DeleteBookResponse.class)
    public JAXBElement<String> createDeleteBookResponseDeleteBookResult(String value) {
        return new JAXBElement<String>(_DeleteBookResponseDeleteBookResult_QNAME, String.class, DeleteBookResponse.class, value);
    }

}
