<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script src="resources/My_Design/angular.min.js"></script>


<div class ="row">
<div class ="col-xs-2 header-logo">
<a href="index.jsp"><img src="resources/My_Design/logo.jpg" class="img-responsive" alt="Cinque Terre" width="200" height="100"/>

</a></div>
<link href="resources/font/font-awesome.min.css" rel="stylesheet">


    			<div class="col-xs-1 pull-right">
          
                        <a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                        <a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                        <a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                   				
				</div>


</div>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">DigitalGallery</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ManageCategory<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="category">AddCategory</a></li>

        </ul>
      </li>
     
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ManageUser<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="usershow">AddUser</a></li>
  
        </ul>
      </li>
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ManageSupplier<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="supplier">AddSupplier</a></li>
          
        </ul>
      </li>
            <li><a href="perform_logout">Log Out </a></li>
            <li><a href="showproductadmin"><span class="glyphicon glyphicon-hand-right"></span> ProductAdmin</a></li>
              
       
  </div>
</nav>
