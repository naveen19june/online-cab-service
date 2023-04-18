<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Register</title>
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
                <style>
                    form 
                    {
                      margin: 0 auto;
                      width:450px;
                    }
                </style>
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
			<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - April 07, 2014!</div>
				<div class="container_12">
					<div class="grid_12">
						
					</div>
					<div class="grid_5">
						<h3>Login Form</h3>
<style>
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>



<form action="login.jsp" style="border:1px solid #ccc">
  <div class="container">
     
      
    <label><b>Email</b></label>
    <input type="text" pattern="[^ @]*@[^ @]*" placeholder="E-mail:" name="login" required >

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Your Password" name="password" required>

    
    

    <div class="clearfix">
      
      <button type="submit" class="signupbtn">Login</button>
    </div>
  </div>
</form>



        
                                                                    
                                                                    
                                                                    
                                                                    
								
						</div>
					</div>
					<div class="grid_6 prefix_1">
						
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span> 9912866019</div>
					<div class="socials">
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						<div class="st1">
						<div class="brand"> ICAB </div>
						&copy; 2017	| <a href="#">Privacy Policy</a> </div> Website designed by <a href="http://icab.in" rel="nofollow">icab.in</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
	</body>
</html>