<%-- 
    Document   : customerRegistration
    Created on : 09 MAY , 2019, 12:09:21 PM
    Author     :ANKIT SAXENA
 */
// cid, cname, cdob, cimgurl

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
<br>
        
        <form name="Defect Registration" action="Defect_Tracking" method="post">
            
            <table border="2"> 
                <tr>
                <td>             Defect_Id </td>
                <td> <input type="text" name="Defect_Id" required> </td>
                </tr>
                
                <tr>
                <td>  Developer_Name </td>
                <td> <select name="Username">
                    
            <%Iterator itr2;%>
            <%List data2 = (List) request.getAttribute("setProject2");  
              
                   
            for (itr2 = data2.iterator(); itr2.hasNext();)
            {
            %>
            
            <% String s= (String) itr2.next(); %>
          
        <option name="Username" value="<%=s%>"> <%=s%> </option>
         
         <% } %>
                
    </select>   </td>
                </tr>
                
                <tr>
                    <td> Project_Name  </td>  
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
                </tr> 
            
                             
                <tr>
                <td> No_of_Modules  </td> 
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
              
    </select>  </td>  
                </tr> 
                <tr> <td> Defect_Details </td>
                    <td> <input style="width:400px;height:100px" type="textarea" name="Defect_Details" required>   </td>
                </tr> 
                 <tr> <td> Date </td>
                    <td> <input type="date" name="Date" required>   </td>
                </tr> 
                
                <tr>  
                    <td> </td> <td> <input style="color: red"type="submit" name="submit" value="Register_Defects"> </td>
                </tr>
                    
            </table>
            
        </form>
        
        
    </body>
</html>
