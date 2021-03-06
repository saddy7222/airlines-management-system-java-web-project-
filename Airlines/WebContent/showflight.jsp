<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.airlines.db.*" %>
    <%@ page import="java.sql.*" %>
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
                        <li><a class="active" href="index.jsp">Home</a></li>
                        
                        <li><a href="service.jsp">Services</a></li>
                      
                       <li><a href="aboutus.jsp">About us </a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li ><a href="adminlogin.html">  <i class="fa fa-user global-radius"></i>Admin</a></li>
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
                        <li>&nbsp;&nbsp;</li>
						<li class="search-option">
							<button class="search tran3s dropdown-toggle" id="searchDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search" aria-hidden="true"></i></button>
							<form action="#" class="p-color-bg dropdown-menu tran3s" aria-labelledby="searchDropdown">
								<input type="text" placeholder="Search....">
								<button class="p-color-bg"><i class="fa fa-search" aria-hidden="true"></i></button>
							</form>
					   </li> 
                    </ul>
                </div>
            </div>
        </nav>
    </header>

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
  
    <div class="container-fluid" style="background-color: #c2c2c2">
        <section>
            <div class="carousel slide" id="screenshot-carousel" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#screenshot-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#screenshot-carousel" data-slide-to="1"></li>
                    <li data-target="#screenshot-carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/slider1.jpg" alt="Text of the image" height="10" width=100% style="opacity: 0.8;">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider2.jpg" alt="Text of the image" height="10" width=100% style="opacity: 0.7;">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider3.jpg" alt="Text of the image" height="10" width=100% style="opacity: 0.7;">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider4.jpg" alt="Text of the image" height="10" width=100% style="opacity: 0.7;">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p></p>
                        </div>
                    </div>
                </div><!--end carousel-inner-->
                <a href="#screenshot-carousel" class="left carousel-control" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a href="#screenshot-carousel" class="right carousel-control" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div><!--end of carousel-->
        </section>
        <hr>
    </div><!--end of container-->

	
	<div class="container-fluid" id="remback">
            
            
    <div class="row">
        
    <div class="col-lg-4"></div>
    <form action="showflight.jsp" method="post">
    <div class="col-lg-4" style="background-color: white; border-radius: 25px;border:2px solid red;">   
   
<div class="booking-form-box" style="padding-top: 20px;padding-bottom: 20px;">
    <h1 style="color: white;background-color: green;text-align: center;">FlyHigh-- Flight details  </h1>

<br>
<div class="booking-form">

    <label>flying from :</label>
    <select name="source" class="custom-select btn btn-success">
        <option value="Delhi">Delhi</option>
        <option value="Mumbai">Mumbai</option>
        <option value="Kolkata">Kolkata</option>
        <option value="Banglore">Banglore</option>
    </select>
    <label>flying to :</label>
    <select name="destination" class="custom-select btn btn-success">
        <option value="Delhi">Delhi</option>
        <option value="Mumbai">Mumbai</option>
        <option value="Kolkata">Kolkata</option>
        <option value="Banglore">Banglore</option>
    </select>

    <div class="input-grp">
<label>Departing date :</label>
    <input name="date" type="date" class="form-control select-date" >
        </div>
        
        
  
        <br>
        <div class="input-grp">
        <label>Travel class :</label>
        <select class="custom-select btn">
        <option value="1">Economy class</option>
        <option value="2">Bussiness class</option>
    </select>
        </div>
        <br>
        <div class="input-grp">
            <button  type="submit" class="btn btn-primary "  name="bbb" value="ss" >Show flights</button>
            
             
            </div>
           
            </div>
    </div>
</div>
</form>
<div class="col-lg-4"></div>
	</div>
</div>
<div class="container">
<table class="table table-striped">
    <thead>
      <tr><th></th><th>Flight No</th><th>Flight Name</th><th>From</th><th>To</th><th>Date</th><th>Time</th><th>Travel Duration</th><th>Airport</th><th>Price</th><th>Book</th></tr>
    </thead>
<% 
try{
Connection connection=DbUtil.getConnection();

String source=request.getParameter("source");
String destination=request.getParameter("destination");
String date=request.getParameter("date");
PreparedStatement stmt = connection.prepareStatement("select * from flightinfo where (source=? and destination =? and flight_date=?)");
stmt.setString(1, source);
stmt.setString(2, destination);
stmt.setString(3, date);
ResultSet rs1=stmt.executeQuery();
if(rs1.next()){
	ResultSet rs=stmt.executeQuery();
while(rs.next()){
%>



    <tr>
    <td><input type="checkbox" name="check"></td>
  
      <td><%= rs.getString("flight_no") %></td>
     <td><%= rs.getString("flight_name") %></td>
     <td><%= rs.getString("source") %></td>
     <td><%= rs.getString("destination") %></td>
     <td><%= rs.getString("flight_date") %></td>
     <td><%= rs.getString("time") %></td>
     <td><%= rs.getString("travel_duration") %></td>
     <td><%= rs.getString("airport_name") %></td>
     <td><%= rs.getString("ticket_price") %></td>
     <td><form action="com.airlines.user.LoginValidate" method="post"><button type="submit" name="flight" value=<%= rs.getString("flight_no") %> class="btn btn-info">Book</button></form></td>
     
    </tr>
<% 
}
}else{
	out.print("<script>"+"alert('Sorry no flights available!!!');"+"</script>");
	//con.close();
	
	
}

}catch(Exception e){
	e.printStackTrace();
}
%>
  </table>
</div>

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <img src="images/logo.jpg" width="250px" height="50px" class="img-rounded" alt="flyhigh" style="opacity:0.7;">
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
                            <li><a href="#"> Home </a></li>
                            <li><a href="#"> About Us </a></li>
                            <li><a href="#"> Services</a></li>
							<li><a href="#"> Gallery</a></li>
							
							<li><a href="#"> Contact</a></li>
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