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
 

         
        <h1>  Assigned Projects </h1>
        
        
         <table border="2">
            <thead>
            <tr>
            <th> Project_Name  </th>
            <th> Developer name </th>
            <th> No of Modules </th>
            <th> Start Date</th>
            <th> End Date</th>
            <th>Severities </th>
            <th>Testing Type </th>
            <th>Priority </th>
            <th>Status </th>
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
             <td>  <%=itr1.next()%>  </td>
             
             <td>  <%=itr1.next()%>  </td>
             <td>  <%=itr1.next()%>  </td>
             
             
            <% } %>
            </tr> 
            
               
            
            </tbody>
            </table>
             
            
            <h1>  Set Project Status </h1>
            
             <form name="Set_Project_Status" method="post" action="Defect_Tracking">
            
            <table border="2"> 
                
                <tr>     <td>  Project_Name  </td> <td>   No of Modules  </td> <td>   Status  </td></tr>
                <tr>
                    <td> 
                <select name="Project_Name">
                    
            <%Iterator itr;%>
            <%List data = (List) request.getAttribute("setProject");  
              
                   
            for (itr = data.iterator(); itr.hasNext();)
            {
            %>
            
            <% String s= (String) itr.next(); %>
            
           
  
        <option name="Project_Name" value="<%=s%>"> <%=s%> </option>
        
        
         
         
         <% } %>
                
    </select>
                    </td>
                    
                   <td>
         <select name="No_of_Modules">
                    
            <%Iterator itr2;%>
            <%List data2 = (List) request.getAttribute("setProject1");  
              
                   
            for (itr2 = data2.iterator(); itr2.hasNext();)
            {
            %>
            
            <% String s= (String) itr2.next(); %>
            
           
  
        <option name="Project_Name" value="<%=s%>"> <%=s%> </option>
        
        
         
         
         <% } %>
                
    </select>
                    </td>
                    
                    <td>
          <select name="Status">
                    
            <%Iterator itr3;%>
            <%List data3 = (List) request.getAttribute("setProject3");  
              
                   
            for (itr3 = data3.iterator(); itr3.hasNext();)
            {
            %>
            
            <% String s= (String) itr3.next(); %>
            
           
  
        <option name="Status" value="<%=s%>"> <%=s%> </option>
        
         
         
         <% } %>
                
          </select>
                    </td>
                </tr>
                <tr>
                    <td> 
        <input style="font-size:15px;" type="submit" name="submit" value="Update_Status" />
        
                    </td>
                </tr>
                
            </table>
         <input style="font-size:15px;" type="submit" name="submit" value="See Project Status" />
         </form>
     
            
            
            
            
            
            
        
    </body>
</html>
