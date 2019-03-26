<%-- 
    Document   : updateBook
    Created on : Mar 17, 2019, 6:25:14 PM
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
        <title>Student Client</title>
    </head>
    <body>
        <h1>Update Record</h1>
        
        <%
            
            BookService service= new BookService();
          IBookService client= service.getBasicHttpBindingIBookService();
          Book bo =new Book();
        String cstr=request.getParameter("toUpdate");
          String msg="";
          if(cstr != null && !cstr.isEmpty())
        {
          Integer id = Integer.parseInt(request.getParameter("id"));
          bo.setId(id);
          
          
          
          
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
       
        String sad=request.getParameter("adddate");
        String scd=request.getParameter("completedate");
        GregorianCalendar greg = new GregorianCalendar();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String dateString = format.format( new Date()   );
        
      
        
        Date   date1       = format.parse ( sad );
        greg.setTime(date1);
        XMLGregorianCalendar adddate = DatatypeFactory.newInstance().newXMLGregorianCalendar(greg);
        bo.setAddDate(adddate);
        
        Date   date2       = format.parse ( scd );
        greg.setTime(date2);
        XMLGregorianCalendar completedate = DatatypeFactory.newInstance().newXMLGregorianCalendar(greg);
        bo.setCompleteDate(completedate);
        
        msg=client.updateBookById(bo);
        }
        %>
        
        <%= msg %>
        
        <%
          
          Book search = new Book();
          String str=request.getParameter("updateid");
          
          if(str != null && !str.isEmpty())
          {
            int id=Integer.parseInt(str);
            search=client.searchBookById(id);
            
          }%>
        
        <%=  "<form action='updateStudent.jsp' method='get'>" 
            +"<table>"
                        + "<tr>"
                        + "<td>"
                        + "book id"
                        + "</td>"
                        + "<td>" 
                        + "<input type='number' name='id' value='"+ search.getId()+"'disabled/>"
                        +"<input type='hidden' name='id' value='"+ search.getId()+"'/>"
                        
                        
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "Book Name"
                        + "</td>"
                        + "<td>" 
                        + "<input type='text' name='name' value='"+ search.getBookName().getValue()+"' required/>"
                        +"</td>"
                        +"</tr>"
                        
                        
                      
                        
                        + "<tr>"
                        + "<td>"
                        + "Book ISBN"
                        + "</td>"
                        + "<td>" 
                        + "<input type='number' name='isbn' value='"+ search.getBookISBN() +"' required/>"
                        +"</td>"
                        +"</tr>"
                        
                + "<tr>"
                        + "<td>"
                        + "Book Author"
                        + "</td>"
                        + "<td>" 
                        + "<input type='text' name='author' value='"+ search.getAuthor().getValue()+"' required/>"
                        +"</td>"
                        +"</tr>"
                
                + "<tr>"
                        + "<td>"
                        + "Book genre"
                        + "</td>"
                        + "<td>" 
                        + "<input type='text' name='genre' value='"+ search.getGenre().getValue()+"' required/>"
                        +"</td>"
                        +"</tr>"
                
                
                        + "<tr>"
                        + "<td>"
                        + "Add book"
                        + "</td>"
                        + "<td>" 
                        + "<input type='date' name='adddate' value='"+ search.getAddDate().toString().substring(0,10)+"' required/>"
                        
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "Date Of Completing"
                        + "</td>"
                        + "<td>" 
                        +"<input type='date' name='leavedate' value='"+ search.getCompleteDate().toString().substring(0,10)+"' required/>"
                        +"</td>"
                        +"</tr>"
                        
                        
                       
                        
                      
                +"</table>"
                
               
                + "<input type='hidden' name='toUpdate' value='"+search.getId()+"'>"
                  +"<input type='hidden' name='updateid' value='"+search.getId()+"'>"              
                + "<input type='submit' value='Confirm Updation'/></form>"
                
                +"<a href='index.jsp'>HOME</a>"     
                %>       
        
        
    </body>
</html>
