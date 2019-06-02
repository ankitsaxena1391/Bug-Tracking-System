<%-- 
     Document   : adminHome
     Created on : 09 MAY , 2019, 12:09:21 PM
     Author     : ANKIT SAXENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
  <style>
    div.position{
    position: fixed;
    top: 80px;
    left: 1100px;
    width: 300px;
    //border: 3px solid #73AD21;
}
 
div.positionlogout{
    position: fixed;
    top: 100px;
    left: 1250px;
    width: 300px;
    //border: 3px solid #73AD21;
}
  
  
  
  </style>
        
        
    </head>
    <body style="background-color:#E6E6FA">
        
        
        <!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index0.html">Defect Tracking System </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index0.html">Home</a></li>
    
      <li>   <form name="so" method="post" action="Defect_Tracking">  <input type="submit" name="submit" value="Get Projects" class="btn btn-danger navbar-btn"/> </form>            </li>
      
      <li>  <form name="so" method="post" action="Defect_Tracking">  <input type="submit" name="submit" value="Get My Project Defects" class="btn btn-danger navbar-btn"/> </form>    </li>
      
    </ul>
      
  </div>
</nav>

<div class="container">
  
</div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/Software_Testing.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/Software_Testing1.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/Develope.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>  
        
    <div class="position">
        <%
 	   if(session.getAttribute("user")!=null)
             {
             String name =(String)session.getAttribute("user");
             out.print("Hello, "+ name +"  Welcome to ur Profile");
             }
             else
             {
             //response.sendRedirect("login.html");
             }
        %>
        
    </div>
        
        
    </body>
    
    
    <div class="positionlogout"> 
    <form name="Logout" method="post" action="Defect_Tracking">
        <input type="submit" name="submit" value="Logout">
    </form>
   
    </div>
    
      
    </body>
   
</html>
