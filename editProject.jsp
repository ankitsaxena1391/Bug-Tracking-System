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
    </ul>
 </div>
</nav>
    <body>
        <h1> Edit Projects</h1>
         
        <form name="edit" method="post" action="Defect_Tracking">
        <table border="3"> 
                
            <tr>
                
                <td> Project Id </td>
                <td> Field </td>
                <td> New value </td>
                
            </tr>
            
            <tr>    
                <td>
            <select  name="projectid"> 
            <%Iterator itr;%>
            <%List data = (List) request.getAttribute("allProjects");
            for (itr = data.iterator(); itr.hasNext();)
            {
            %>
            <% String s= (String) itr.next(); %>
            <option name="projectid" value="<%=s%>"> <%=s%> </option>
            <% } %> 
            </select>
                </td>
                
                <td> 
                
    <select name="field">
                    
        
        <option name="field" value="Project_Details"> Project_Details </option> 
        <option name="field" value="Project_Type"> Project_Type </option>        
        <option name="field" value="No_of_Modules"> No_of_Modules </option>
        
    </select>
            
                </td>
                
                <td>
                    <input type="text" name="newdata"> 
                    
                </td>
                
            </tr>
            
            
            <tr>
                <td> </td>
                <td> </td>
                <td>  <input type="submit" name="submit" value="Update Project">  </td>
                
            </tr>
        </table>
        
        </form>
              
    </body>
</html>
