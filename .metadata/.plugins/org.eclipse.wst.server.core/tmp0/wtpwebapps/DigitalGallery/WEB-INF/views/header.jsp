<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<link rel="stylesheet" href="resources/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="resources/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="resources/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


    <!DOCTYPE html>  
<html lang="en">  
<head>  
  <title>Bootstrap header included</title>  
  <meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="resources/bootstrap.min.css">  
    
</head>  
<body>  


<div class ="row">
<c:if test="${sessionScope.UserLoggedIn }">
<li>Welcome${Userid}</li>
</c:if>

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
	

                <div class="pull-right">			
<a href="GoToCart"><img src="resources/My_Design/cart11.png" height="70px" 
                     width="70px"></img></a>
                     <sf:if test="${not empty count}">
                     <center>${count}</center>
                     
                     </sf:if>
                    
                     
</div>        

</div>
   



 <nav class="navbar navbar-inverse"> 

  <div class="container-fluid">  
    <div class="navbar-header">  
      <a class="navbar-brand" href="index.jsp"> Digital Gallery</a>  
    </div>  
    <ul class="nav navbar-nav">  
      <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-user"></span> Home</a> 
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-th"></span>Product Categories</a>  
        <ul class="dropdown-menu">  
          <li><a href="DisplayProduct">Shop Product</a></li>  
         
        </ul>  
      </li>  
      <li><a href="AboutUs"><span class="glyphicon glyphicon-info-sign"></span> About Us</a></li>  
      <li><a href="ContactUs"><span class="glyphicon glyphicon-phone-alt"></span> Contact Us</a></li>  
     
    </ul>  
    <ul class="nav navbar-nav navbar-right">  
    <c:if test="${not sessionScope.UserLoggedIn}">
     <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>SignIn</a></li>
      <li><a href="usershow"><span class="glyphicon glyphicon-log-out"></span> Sign Up</a></li>
      </c:if>
      <c:if test="${sessionScope.UserLoggedIn}">  
       <li><a href="perform_logout">Log Out </a></li>
       </c:if>
        

      
         
       
      
      
    </ul>  
  </div>  
</nav>
    
<div class="container">  
    
</div>  
<script src="resources/jquery.min.js"></script>  
<script src="resources/bootstrap.min.js"></script>  
</body>  
</html>  
