<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <style>
       div.position{
    position: fixed;
    top: 180px;
    left: 200px;
    width: 300px;
    
}</style>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
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
    <body  style="background-color:#E6E6FA"> 
      
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index0.html">Defect Tracking System </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index0.html">Home</a></li>
       </div>
</nav>
    <div class="container">
   
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
        <img src="images/Develope2.jpg" alt="New york" style="width:100%;">
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
</div>
    <div class="position">
         
        <h1 style="color:red"> USER LOGIN </h1><br>
 <form name="Login" action="Defect_Tracking" method="post">
  <h4 style="color:green"> UserType</h4>
  <select name="Type">
  <option value="ADMIN">ADMIN</option>
  <option value="Software_Tester">Software_Tester</option>
  <option value="Software_Developer">Software_Developer</option>
  <option value="Manager">Software_Tester</option>
  
</select>
     <br>
<fieldset style ="width:400px">
    
<b> Username</b> <br>
<input style="font-size:15px;" type="text" placeholder="Enter Name" name="Username" required><br>
<b> Password</b> <br>
<input style="font-size:15px;" type="text" placeholder="Enter Password" name="Password" required><br>
<input type="submit" name="submit" value="Login"> 

</form>
   </div>
</body>
</html>



        
        
        
        
        
        
        