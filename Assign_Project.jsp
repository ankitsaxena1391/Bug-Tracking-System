<%-- 
    Document   : Employee_Group
     Created on : 09 MAY , 2019, 12:09:21 PM
    Author     : ANKIT SAXENA
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
      <a class="navbar-brand" href="index0.html">Defect Tracking System </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index0.html">Home</a></li>
       </div>
</nav>
        
        <h1>Assign Projects</h1>
        <form name="Assign_Projects" method="post" action="Defect_Tracking">
            
            <table border="2"> 
                
                <tr>     <td>  Project_Name    </td>   <td> No_of_Modules     </td>  <td>   Engineer  </td>
                <td>   Start_Date  </td> <td>   End_Date  </td> <td>   Severities  </td> <td>   Testing_Type  </td>
                <td>   Priority  </td> <td>   Status  </td></tr>
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
            
  
             <option name="No_of_Modules" value=1> 1 </option>
             <option name="No_of_Modules" value=2> 2 </option>
             <option name="No_of_Modules" value=3> 3 </option>
             <option name="No_of_Modules" value=4> 4 </option>
             <option name="No_of_Modules" value=5> 5 </option>
             <option name="No_of_Modules" value=6> 6 </option>
             <option name="No_of_Modules" value=7> 7 </option>
             <option name="No_of_Modules" value=8> 8 </option>
             <option name="No_of_Modules" value=9> 9 </option>
             <option name="No_of_Modules" value=10> 10 </option>
             <option name="No_of_Modules" value=11> 11 </option>
             <option name="No_of_Modules" value=12> 12 </option>
             <option name="No_of_Modules" value=13> 13 </option>
             <option name="No_of_Modules" value=14> 14 </option>
             <option name="No_of_Modules" value=15> 15 </option>
              
    </select>
                    </td>
                    <td>
         <select name="Username">
                    
            <%Iterator itr2;%>
            <%List data2 = (List) request.getAttribute("setProject2");  
              
                   
            for (itr2 = data2.iterator(); itr2.hasNext();)
            {
            %>
            
            <% String s= (String) itr2.next(); %>
            
           
  
        <option name="Username" value="<%=s%>"> <%=s%> </option>
        
         
         
         <% } %>
                
    </select>
                    </td> 
                    <td><input type="date" name="Start_Date" </td> 
                    <td><input type="date" name="End_Date" </td> 
                    <td>
                        <select name="Severities">                             
                            <option name="Severities" value="Critical">Critical </option>
                            <option name="Severities" value="Normal">Normal </option>
                            <option name="Severities" value="Tolerable">Tolerable </option>
                            <option name="Severities" value="Difficult">Difficult </option>
                        </select>
                    </td>
                    <td>
                        <select name="Testing_Type">                             
                            <option name="Testing_Type" value="Unit_Testing">Unit_Testing </option>
                            <option name="Testing_Type" value="Integration_Testing">Integration_Testing </option>
                            <option name="Testing_Type" value="System_Testing">System_Testing </option>
                            <option name="Testing_Type" value="Black_Box_Testing">Black_Box_Testing </option>
                        </select>
                    </td>
                    <td>
                        <select name="Priority">                             
                            <option name="Priority" value="Low">Low </option>
                            <option name="Priority" value="Medium">Medium </option>
                            <option name="Priority" value="High">High </option>
                            
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
        <input style="font-size:15px;" type="submit" name="submit" value="Assign" />
        
                    </td>
                </tr>
            </table>
         
         </form>
            
    </body>
</html>
