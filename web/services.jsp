<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Services</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script>
			$(document).ready(function(){
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<!--[if lt IE 8]>
			<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
					<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
				</a>
			</div>
		<![endif]-->
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
	</head>
	<body class="" id="top">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
                                                                    
                                                                    
                                                                    
                                                                   
                          <li><a href="homepage.jsp">Home</a></li>
                          <li><a href="about.jsp">About</a></li>
                          <li><a href="services.jsp">Services</a></li>
                          <li><a href="contacts.jsp">Contacts</a></li>
                          <li><a href="registration.jsp">Registration</a></li>
                           <li>
                                <% 
                                  try
                                  {
                                  if(session.getAttribute("name").toString() != null)
                                 {
                                %>
                                        <li class="w3pages pull-right"><a href="loginform.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome &nbsp;<%= session.getAttribute( "name" ) %> <span class="caret"></span></a>
					  <ul class="dropdown-menu">
                                            
                                              <li><a href="logout.jsp">Log-out</a></li>
					  </ul>
				    </li> 
                               <%
                                 }
                                 else
                                 {
                               %>
                               <li class=" pull-right"><a href="login.jsp" data-toggle="modal" data-target="#myModal88">&nbsp;Login</a></li> 
                                     
                               <%
                                 }
                                  }
                                  catch(Exception ex)
                                      
                                  {
                               %>
                               <li class=" pull-right"><a href="login.jsp" data-toggle="modal" data-target="#myModal88">&nbsp;Login</a></li> 
                                   
                                <%
                                  }
                                  
                                %>
                                                                </li>
                                                                        <li><a href="admin/adminlogin.jsp">Admin</a></li>
                                                                        
                                                                        <li><a href="addwallett.jsp">Add Wallet</a></li>
                                                             
								</ul>
							</nav>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
                                                                <div class="container_12">
					<div class="grid_12">
						<h1>
							<a href="homepage.jsp" style="height: 250px; width: 400px">
								<center>
                                                                    <img src="icab.jpg">
                                                            </center>
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
			</header>
                            
<!--==============================Content=================================-->
			<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - April 07, 2014!</div>
				<div class="container_12">
					<div class="grid_12">
						<h3>Services Overview</h3>
					</div>
					<div class="grid_4">
						<div class="box">
							<div class="maxheight">
								<img src="image1.jpg" alt="">
								<div class="text1 color2">
									<a href="#">The most frequently used (TATA- indica).</a>
								</div>
								Minimum charge - Rs.100 
Per kilometer within city - RS 10 / - 
Outstation - RS 9.50 per kilometer (km per day- 250 min) .
								<br>
							
							</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="box">
							<div class="maxheight">
								<img src="image2.jpg" alt="">
								<div class="text1 color2">
									<a href="#">For a big family upto 8 seats (Toyota Innova). </a>
								</div>
								Minimum charge - Rs.100 
Per kilometer within city - RS 20 / - 
Outstation - RS 14 per kilometer (km per day- 250 min) 
Beta driver 400 + toll charges & Permit .
								<br>
								
							</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="box">
							<div class="maxheight">
								<img src="image3.jpg" alt="">
								<div class="text1 color2">
									<a href="#">For those who needs Luxury (BMW). </a>
								</div>
								Minimum charge - Rs.100 
Per kilometer within city - RS 25 / - 
Outstation - RS 16 per kilometer (km per day- 250 min) 
Beta driver 400 + toll charges & Permit 
								<br>
								
							</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="box">
							<div class="maxheight">
								<img src="image4.jpg" alt="">
								<div class="text1 color2">
									<a href="#">Best SUV(HYUNDAI CRETA). </a>
								</div>
								Hyundai  Creta with a lot of features. The design is very appealing, good quality materials are used and there is ample space for head/shoulder/leg room. It also features a touchscreen multi-function infotainment system, vertically placed AC vents, power sockets.
								<br>
								
							</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="box">
							<div class="maxheight">
								<img src="image5.jpg" alt="">
								<div class="text1 color2">
									<a href="#">CHEVROLET VOLKSWAGEN . </a>
								</div>
								Per kilometer within city - RS 20 / - 
Outstation - RS 12 per kilometer (km per day- 250 min) 
Beta driver 300 + toll charges & Permit .
								<br>
								
							</div>
						</div>
					</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span>9912866019</div>
					<div class="socials">
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						<div class="st1">
						<div class="brand">ICAB </div>
						&copy; 2017	| <a href="#">Privacy Policy</a> </div> Website designed by <a href="http://icab.in" rel="nofollow">icab.in</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
	</body>
</html>