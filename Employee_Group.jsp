<%-- 
    Document   : Employee_Group
    Created on : 09 MAY , 2019, 12:09:21 PM
    Author     :ANKIT SAXENA
--%>
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
      <a class="navbar-brand" href="#">Defect Tracking System </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index0.html">Home</a></li>
       </div>
</nav>
        <h1>Set Employee Group</h1>
        <form name="Employee_Group" method="post" action="Defect_Tracking">
            
            <table border="2"> 
                
                <tr>     <td>  Engineer    </td>   <td> Group ID     </td>  <td>   Assign  </td> </tr>
                <tr>
                    <td> 
                <select name="emp_Name">
                    
            <%Iterator itr;%>
            <%List data = (List) request.getAttribute("setGroup");  
              
                   
            for (itr = data.iterator(); itr.hasNext();)
            {
            %>
            
            <% String s= (String) itr.next(); %>
            
           
  
        <option name="emp_Name" value="<%=s%>"> <%=s%> </option>
        
         
         
         <% } %>
                
    </select>
                    </td> 
                    
                    <td>
       
             <select name="groupId">
                    
        <option name="groupId" value="1"> 1 </option>
        <option name="groupId" value=2> 2 </option> 
        <option name="groupId" value=3> 3 </option> 
           
             </select>
                        
                    </td>
         
                    <td> 
        <input style="font-size:15px;" type="submit" name="submit" value="Set" />
        
                    </td>
             
         </form>
            
    </body>
</html>
