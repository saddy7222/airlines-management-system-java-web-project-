<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>flyHigh</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/logo.jpg" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="services.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Colors CSS -->
    <link rel="stylesheet" href="css/colors.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

       
       
    

</head>
<body class="realestate_version" >

    <!-- LOADER -->
    <div id="preloader">
        <span class="loader"><span class="loader-inner"></span></span>
    </div><!-- end loader -->
    <!-- END LOADER -->

    <header class="header header_style_01">
        <nav class="megamenu navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" width="250px" height="50px" alt="flyhigh"></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a  href="index.jsp">Home</a></li>
                        
                        <li><a class="active" href="service.jsp">Services</a></li>
                        <li><a  href="aboutus.jsp">About us</a></li>
                       
                        <li><a  href="contact.jsp">Contact</a></li>
                         <li ><a  href="adminlogin.html"> <i class="fa fa-user global-radius"></i>Admin</a></li>
                       	<li>&nbsp;&nbsp;</li>
                        <%if(session.getAttribute("name1")!=null) {%>
                         <li>
     <div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><%= session.getAttribute("name1") %> <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
      <li><a href="com.airlines.user.LogoutServlet" onMouseOver="this.style.color='#0F0'"
   onMouseOut="this.style.color='#00F'" >log out</a> </li>
      <li><a href="#">profile</a></li>
    </ul></div>
               <%}else{ %>          
                        <li ><button class="btn btn-info" data-target="#mymodel" data-toggle="modal"> <i class="fa fa-user global-radius"></i>User</button></li><%} %>
                        <!--<li ><a href="registration.html">Sign Up<i class="fa fa-user-plus global-radius"></i></a></li> -->
                        <li>&nbsp;&nbsp;</li>
                        <li class="search-option">
                            <button class="search tran3s dropdown-toggle" id="searchDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search" aria-hidden="true"></i></button>
                            <form action="com.airlines.user.Search" method="get" class="p-color-bg dropdown-menu tran3s" aria-labelledby="searchDropdown">
								<input type="text" name="name" placeholder="Search....">
								<button type="submit" class="p-color-bg"><i class="fa fa-search" aria-hidden="true"></i></button>
							</form>
                       </li> 
                    </ul>
                </div>
            </div>
        </nav>
            
    </header>
<!-- login pop up -->
<div class="modal fade" id="mymodel" >
    <div class="modal-dialog modal-dialog-centered" >
        <div class="modal-content" >
            <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            <div class="modal-body">
                
                
                    <div class="login-wrap">
<div class="login-html">
<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab" style="color: white;">Sign In</label>
<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab" style="color: #0961ed;">Sign Up</label>
<div class="login-form">
<div class="sign-in-htm">
<form action="com.airlines.user.Login" method="post">
<div class="group">
<label for="user" class="label" >email</label>
<input id="user" type="text" class="input" name="lname" required>
</div>
<div class="group">
<label for="pass" class="label" >Password</label>
<input id="pass" type="password" class="input" data-type="password" name="lpass" required>
</div>
<div class="group">
<input id="check" type="checkbox" class="check" checked>
<label for="check"><span class="icon"></span> Keep me Signed in</label>
</div>
<div class="group">
<input type="submit" class="button" value="Sign In">
</div>
<div class="hr"></div>
<div class="foot-lnk">
<a href="#forgot" style="color: #a6b1bf">Forgot Password?</a>
</div>
</form>
</div>
<div class="sign-up-htm">
<form action="com.airlines.user.Registration" method="post">
<div class="group">
<label for="user" class="label" >Name</label>
<input id="user" type="text" class="input" name="name" required>
</div>
<div class="group">
<label for="pass" class="label" >Email Address</label>
<input id="pass" type="text" class="input" name="email" required>
</div>
<div class="group">
<label for="user" class="label" >Phone</label>
<input id="user" type="text" class="input" name="phone" required >
</div>

<div class="group">
<label for="pass" class="label" >Password</label>
<input id="pass" type="password" class="input" data-type="password" name="pass" required>
</div>

<div class="group">
<input type="submit" class="button" value="Sign Up">
</div>
<div class="hr"></div>
</form>
</div>
</div>
</div>
</div>
               
            </div>
        </div>
    </div>
</div>


<div style="margin-top:85px;"></div>

<div class="service-section">
	<div class="inner-width">
		
		<h1 class="section-title" ><strong>Our Services</strong></h1>
		
		<!-- <div class="border"></div> -->
		<div class="service-container">
			<div class="service-box">
				<div class="service-icon">
					<i class='fas fa-heart'></i>
				</div>
				<STRONG>
				<div class="service-title" style="color:red;">Insurance</div>
				</STRONG>
				<div class="service-desc">
					We are to provide you with best insurance policy. We take full responsibity of our customer and pledge to keep that promise.
					We provide an easy clame to our customer.
					The we work side with best insurance company.
					We take full care of our customer. We know how imporant your life is and aim to protect it.	
				</div>

			</div>
			<div class="service-box">
				<div class="service-icon">
					<i class="glyphicon glyphicon-user"></i>
				</div>
				<strong>
				<div class="service-title" style="color:red;">Happy Client</div></strong>
				<div class="service-desc">
					We know how much important you are so try to fullfill all our promise. We try to keep our promise and try to give all promised facilites. Your comfort is our priority.And we pledge to keep that.Your satisfaction is the most important thing for ous and try to keep ot that way.
				</div>
				
			</div>
			
			<div class="service-box">
				<div class="service-icon">
					<i class='fas fa-pizza-slice'></i>
				</div>
				<STRONG>
				<div class="service-title" style="color:red;">Meal</div></STRONG>
				<div class="service-desc">
					When your tummy is full your happy the most and we know that.So we provide you food services during your journey.We provide you with healthy and hygenic food. The food quality is freesh and excelent .We provide you food within two hours of your journey start
				</div>
				
			</div>
			<div class="service-box">
				<div class="service-icon">
					<i class='fas fa-plane'></i>
				</div>
				<strong>
				<div class="service-title" style="color:red;">Flight Ticket</div></strong>
				<div class="service-desc">
					We provide you with best, fast and safest site to book your flight ticket. We take the minimum additional charges. We provide you with all domestic and international flight.
					The reservation process is very simple and easy to get with it.The booking process is vert simple. Even the cancillation process is very fast and simple.We provide you with fast and easy return.
				</div>
				
			</div>
			
			<div class="service-box">
				<div class="service-icon">
					<i class="fa fa-paypal"></i>
				</div>
				<strong>
								<div class="service-title" style="color:red;">Payment</div></strong>

				<div class="service-desc">
					We provide you with very simple and safest method of payment.We accept all kind of online transacation process. The payment method is very fast and safe. We keep your cradantials safe and secure.We take payment through all online payment apps like Paytm ,Goggle Pay,PayPal,BHIM.UPI and Netbanking.We are collabed with all banks.The payment is really simple and fast and safe. 
		</div>
		
	</div>

</div>
</div>
</div>

<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <img src="images/logo.jpg" width="250px" height="50px" class="img-rounded" alt="">
                        </div>
                        <p> lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div><!-- end clearfix -->
                </div><!-- end col -->

                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Info Link</h3>
                        </div>

                        <ul class="twitter-widget footer-links">
                            <li><a href="index.jsp"> Home </a></li>
                            <li><a href="aboutus.jsp"> About Us </a></li>
                            <li><a href="service.jsp"> Services</a></li>
                            
                            
                            <li><a href="contact.jsp"> Contact</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
                
                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Contact Details</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">info@flyhigh.com</a></li>
                            <li><a href="#">www.flyhigh.com</a></li>
                            <li>Knowledge park greater noida</li>
                            <li>+91 9654853219</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
                
                <div class="col-md-2 col-sm-2 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Social</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
                     
                            <li><a href="#"><i class="fa fa-instagram"></i> Instagram</a></li>
                          
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
                
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">
                    <p class="footer-company-name">All Rights Reserved. &copy; 2018 <a href="#">flyHigh</a> Design By : <a href="#">flyhigh.com</a></p>
                </div>

                
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/portfolio.js"></script>
    <script src="js/hoverdir.js"></script>    
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
   <!-- MAP & CONTACT -->
    <script src="js/map.js"></script>

</body>
</html>