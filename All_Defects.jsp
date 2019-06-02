<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
    <body style="background-color:#E6E6FA"> 
      
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index0.html">Defect Tracking System </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index0.html">Home</a></li>
       </div>
</nav>
        
        
<%
 	
 if(session.getAttribute("user")!=null)
 {
 String name =(String)session.getAttribute("user");
 out.print("Current User : "+ name );
 }
 else
 {
 //response.sendRedirect("login.html");
 }
%>
 

         
        <h1>  Assigned Defects </h1>
        
        
         <table border="2">
            <thead>
            <tr>
            <th>Defect Id </th>
            <th> Developer Name </th>
            <th> Project_Name  </th>          
            <th> No of Modules </th>
            <th> Defect Details</th>
            <th> Date</th>
            
            </tr>
            
            </thead>
            <tbody> 
            <%Iterator itr1;%>
            <%List data1 = (List) request.getAttribute("projectEmp");
            for (itr1 = data1.iterator(); itr1.hasNext();)
            {
            %>
            <tr>
            <% String s= (String) itr1.next();%>

            
            <td>   <%=s%>  </td>
            <td>  <%=itr1.next()%>   </td>  
            <td>  <%=itr1.next()%>  </td>
             <td>  <%=itr1.next()%>  </td>
             <td>  <%=itr1.next()%>  </td>
             <td>  <%=itr1.next()%>  </td>
            
            <% } %>
            </tr> 
            
               
            
            </tbody>
            </table>
             
    </body>
</html>
