<%-- 
    Document   : addBook
    Created on : Mar 17, 2019, 5:36:20 PM
    Author     : parma
--%>



<%@page import="org.datacontract.schemas._2004._07.wcfstudentservice.ObjectFactory"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.xml.datatype.DatatypeFactory"%>
<%@page import="javax.xml.datatype.XMLGregorianCalendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="javax.xml.bind.JAXBElement"%>
<%@page import="org.datacontract.schemas._2004._07.wcfstudentservice.Book"%>
<%@page import="org.tempuri.IBookService"%>
<%@page import="org.tempuri.BookService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Client</title>
    </head>
    <body>
        <h1>Add Record</h1>
        
        <%
            
            BookService service= new BookService();
          IBookService client= service.getBasicHttpBindingIBookService();
          Book bo =new Book();
        String cstr=request.getParameter("toAdd");
          String msg="";
          if(cstr != null && !cstr.isEmpty())
        {
          
        String bname=request.getParameter("BookName");
        JAXBElement <String> name;
       /* name = new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/WcfStudentService","BookName"),String.class,sname);*/
       ObjectFactory of = new ObjectFactory(); 
       
       name = of.createBookBookName(bname);
       bo.setBookName(name);
       
        String bAuthor=request.getParameter("Author");
        JAXBElement <String> ba;
        /*mob = new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/WcfStudentService","mob"),String.class,smob);*/
       
        ba = of.createBookAuthor(bAuthor);
        bo.setAuthor(ba);
        
        Integer isbn = Integer.parseInt(request.getParameter("isbn"));
        JAXBElement <String> bisbn;
     
     
        
       bo.setBookISBN(isbn);
        
        String gn = request.getParameter("genre");
        JAXBElement <String> gnr;
        /*pob = new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/WcfStudentService","pob"),String.class,spob);*/
        gnr = of.createBookGenre(gn);
        bo.setGenre(gnr);
        
      
        String sad=request.getParameter("AddDate");
        String scd=request.getParameter("CompleteDate");
        GregorianCalendar greg = new GregorianCalendar();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String dateString = format.format( new Date()   );
        
        
        
        Date   date1       = format.parse ( sad );
        greg.setTime(date1);
        XMLGregorianCalendar adddate = DatatypeFactory.newInstance().newXMLGregorianCalendar(greg);
        bo.setAddDate(adddate);
        try{
        Date   date2       = format.parse ( scd );
        greg.setTime(date2);
        XMLGregorianCalendar completedate = DatatypeFactory.newInstance().newXMLGregorianCalendar(greg);
        bo.setCompleteDate(completedate);
        }
        catch(Exception e)
        {
            Date   date2       = format.parse ( "2001-01-01" );
        greg.setTime(date2);
        XMLGregorianCalendar completedate = DatatypeFactory.newInstance().newXMLGregorianCalendar(greg);
        bo.setCompleteDate(completedate);
        }
        
        
        msg=client.addBook(bo);
        }
        if(msg != null && !msg.isEmpty())
        {  
        

session.setAttribute("addResult", msg);
response.sendRedirect("addResult.jsp");
        
        %>
        
        
        
        
        <%}else{%>
        
        <%=  "<form action='addStudent.jsp' method='post'>" 
            +"<table>"
                        
                        
                        
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "BookName"
                        + "</td>"
                        + "<td>" 
                        + "<input type='text' name='BookName' required/>"
                        +"</td>"
                        +"</tr>"
                        
                        
                       + "<tr>"
                        + "<td>"
                        + "Book ISBN"
                        + "</td>"
                        + "<td>" 
                        + "<input type='number' name='BookISBN' required/>"
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "genre"
                        + "</td>"
                        + "<td>" 
                        + "<input type='text' name='genre' required/>"
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "Add Date"
                        + "</td>"
                        + "<td>" 
                        + "<input type='date' name='AddDate' required/>"
                        
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "Date Of Completing"
                        + "</td>"
                        + "<td>" 
                        +"<input type='date' name='CompleteDate'/>"
                        +"</td>"
                        +"</tr>"
                        
                        
                       
                        
                
                +"</table>"
                
               
                + "<input type='hidden' name='toAdd' value='1'>"
                 
                + "<input type='submit' value='Add'/>"
                + "<a href='index.jsp'><input type='button' value='Cancel'/></a></form>"
                     
                %>       
                <%}%>
                <%="<a href='index.jsp'>HOME</a>"%>
        
        
        
    </body>
</html>