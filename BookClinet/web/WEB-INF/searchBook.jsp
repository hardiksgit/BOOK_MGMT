<%-- 
    Document   : searchBook
    Created on : Mar 17, 2019, 6:15:27 PM
    Author     : parma
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="org.datacontract.schemas._2004._07.wcfstudentservice.Book"%>
<%@page import="org.tempuri.IBookService"%>
<%@page import="org.tempuri.BookService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Client</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <h1>Search Book</h1>
        <form action="searchBook.jsp" method="get">
            <input type="number" id="id" name="id" default="0"/>
      <input type="submit" class="btn btn-success" value="Search" />
      </form>
        <%
          BookService service= new BookService();
          IBookService client= service.getBasicHttpBindingIBookService();
          Book search = new Book();
          String str=request.getParameter("id");
          
          if(str != null && !str.isEmpty())
          {
            int id=Integer.parseInt(str);
            search=client.searchBookById(id);
            
          }
       
            if(search.getId() != null && search.getId()!=0)//not NULL
            {    %>           
                <%=  "<br><br>"
                        + "<table class='table table-hover'>"
                        + "<tr>"
                        + "<td>"
                        + "G.R. Number"
                        + "</td>"
                        + "<td>" 
                        + search.getId()
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "Name"
                        + "</td>"
                        + "<td>" 
                        + search.getBookName().getValue()
                        +"</td>"
                        +"</tr>"
                        
                     
                        
                        + "<tr>"
                        + "<td>"
                        + "Author Name"
                        + "</td>"
                        + "<td>" 
                        + search.getAuthor().getValue()
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "Add Date"
                        + "</td>"
                        + "<td>" 
                        +search.getAddDate().getDay()
                        +"-"
                        +search.getAddDate().getMonth()
                        +"-"
                        + search.getAddDate().getEonAndYear()
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td>"
                        + "Date Of Completing"
                        + "</td>"
                        + "<td>" 
                        
                       %>
                       <% System.out.println(search.getCompleteDate().toString());
                       if(search.getCompleteDate().toString().endsWith("2001-01-01T00:00:00"))
                       {%>  
                        <%= "-"%>
                         <%}else {%>
                         <%=
                        +search.getCompleteDate().getDay()
                        +"-"
                        +search.getCompleteDate().getMonth()
                        +"-"
                        + search.getCompleteDate().getEonAndYear()
                        +"</td>"
                        +"</tr>"
                        %>
                        <%}%>
                        <%=
                        
                        "<tr>"
                        + "<td>"
                        + "Genre"
                        + "</td>"
                        + "<td>" 
                        + search.getGenre().getValue()
                        +"</td>"
                        +"</tr>"
                +"</table>"
                
                +"<form action='updateBook.jsp' method='get'>"
                + "<input type='hidden' name='updateid' value='"+search.getId()+"'>"
                                
                + "<input type='submit' class='btn btn-info' value='Update Record'/></form><br>"
                                
                  +"<form action='deleteBook.jsp' method='get'>"   
                  +"<input type='hidden' name='deleteid' value='"+search.getId()+"'>"              
                + "<input type='submit' class='btn btn-danger' value='Delete Record'/></form>"           
                                
                  +"<br><a href='index.jsp'>HOME</a>" 
                %>       
           
         <% 
          
              }
          
           

            else//not found
            {%>
            <%=
                "<br><h4>Book Not Found.</h4>"
                 +"<br><a href='index.jsp'>HOME</a>"     
            %>
        <%
            }
        
        %>
    </body>
</html>
