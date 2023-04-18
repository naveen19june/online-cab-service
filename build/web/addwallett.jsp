<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Contacts</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/form.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/TMForm.js"></script>
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
                <style>
                    input[type=text], input[type=password],input[type=number] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
                </style>
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
                                        <li class="w3pages pull-right"><a href="login.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome &nbsp;<%= session.getAttribute( "name" ) %> <span class="caret"></span></a>
					 
                                            <ul class="dropdown-toggle">
                                          
                                           <li><a href="">Log-out </a></li> 
					  </ul>
				    </li> 
                               <%
                                 }
                                 else
                                 {
                               %>
                               <li class=" pull-right"><a href="loginform.jsp" data-toggle="modal" data-target="#myModal88">&nbsp;Login</a></li> 
                                     
                               <%
                                 }
                                  }
                                  catch(Exception ex)
                                      
                                  {
                               %>
                               <li class=" pull-right"><a href="loginform.jsp" data-toggle="modal" data-target="#myModal88">&nbsp;Login</a></li> 
                                   
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
                       		<div class="grid_6 prefix_1">
						<h3>Add Wallet</h3>
						<form  action="Addwallet.jsp">
							
							
							
							<label class="name">
								<input type="text" placeholder="Name:" name="name" data-constraints="@Required @JustLetters" />
								
							</label>
							<label class="email">
								<input type="text" placeholder="E-mail:" name="email" data-constraints="@Required @Email" />
								
							</label>
							
							</label>
							<label class="message">
                                                            <input type="number" placeholder="Amount:" name="amount" />
								
							</label>
							<div>
								<div class="clear"></div>
								<div class="btns">
                                                                    <button><input type="submit" class="btn"></button>
					
								</div>
							</div>
						</form>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div
                
              
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
						&copy; 2017	| <a href="#">Privacy Policy</a> </div> Website designed by <a href="http://rkinfosystems.in" rel="nofollow">rkinfosystems.in</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
	</body>
</html>