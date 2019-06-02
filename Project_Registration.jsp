<%-- 
    Document   : customerRegistration
     Created on : 09 MAY , 2019, 12:09:21 PM
    Author      : ANKIT SAXENA
 */
// cid, cname, cdob, cimgurl

--%>

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
   
        
        <form name="Project Registration" action="Defect_Tracking" method="post">
            
            <table border="2"> 
                <tr>
                <td>             Project_Id </td>
                <td> <input type="text" name="Project_Id" required> </td>
                </tr>
                
                <tr>
                <td>  Project_Name </td>
                <td> <input type="text" name="Project_Name" required>   </td>
                </tr>
                
                <tr>
                    <td> Project_Details  </td> <td> <input type="text" name="Project_Details" required>  </td>  
                </tr> 
            
                <tr> <td> Project_Type </td>
                    <td> <input type="text" name="Project_Type" required>   </td>
                </tr>
                <tr>
                <td> No_of_Modules  </td> <td> <input type="text" name="No_of_Modules" required>  </td>  
                </tr> 
                <tr>
                <td> Status  </td> <td> 
                <select name="Status" >
                <option value="Open">Open</option>
                <option value="Closed">Closed</option>
                <option value="Pending">Pending</option>
                <option value="Follow_Up">Follow_Up</option>
  
                </select>  </td>  
                </tr> 
                
                <tr>  
                    <td> </td> <td> <input type="submit" name="submit" value="Register_Project"> </td>
                </tr>
                    
            </table>
            
        </form>
        
        
    </body>
</html>
