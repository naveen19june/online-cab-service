<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Home</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="booking/css/booking.css">
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/owl.carousel.js"></script>
		<script src="js/camera.js"></script>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script src="booking/js/booking.js"></script>
		<script>
			$(document).ready(function(){
				jQuery('#camera_wrap').camera({
					loader: false,
					pagination: false ,
					minHeight: '444',
					thumbnails: false,
					height: '28.28125%',
					caption: true,
					navigation: true,
					fx: 'mosaic'
				});
				$().UItoTop({ easingType: 'easeOutQuart' });
			});11,4 km
		</script>
                <style>
                    #y
                    {
                        text-align: right;
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
	<body class="page1" id="top">
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
                                  if(session.getAttribute( "name" ).toString() != null)
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
                            
                   
                             <%
          Class.forName("com.mysql.jdbc.Driver");
         Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from viewuser where email='"+session.getAttribute("email")+"'");
         if(rs.next())
         {
         %>
 
          <%}
          %>
          
          <div class="container_12">
					<div class="grid_12">
						<h1>
							<a href="Userlogin.jsp" style="height: 250px; width: 400px">
							<center>
                                                                    <img src="icab.jpg">
                                                            </center>
							</a>
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
			</header>
			<div class="slider_wrapper ">
				<div id="camera_wrap" class="">
					<div data-src="images/slide.jpg" ></div>
					<div data-src="images/slide1.jpg" ></div>
					<div data-src="images/slide2.jpg"></div>
				</div>
			</div>
			<div class="container_12">
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="images/icon1.png" alt="">
								<div class="extra_wrapper">Fast&amp;
									<div class="color1">Safe</div>
								</div>
							</div>
							Dorem ipsum dolor sit amet, consectetur adipiscinger elit. In mollis erat mattis neque facilisis, sit ameter ultricies erat rutrum. Cras facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad
							<a href="#" class="fa fa-share-square"></a>
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="images/icon2.png" alt="">
								<div class="extra_wrapper">Best
									<div class="color1">Prices</div>
								</div>
							</div>
							Hem ipsum dolor sit amet, consectetur adipiscinger elit. In mollis erat mattis neque facilisis, sit ameter ultricies erat rutrum. Cras facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuader
							<a href="#" class="fa fa-share-square"></a>
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="images/icon3.png" alt="">
								<div class="extra_wrapper">Package
									<div class="color1">Delivery</div>
								</div>
							</div>
							Kurem ipsum dolor sit amet, consectetur adipiscinger elit. In mollis erat mattis neque facilisis, sit ameter ultricies erat rutrum. Cras facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuki
							<a href="#" class="fa fa-share-square"></a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="c_phone">
				<div class="container_12">
					<div class="grid_12">
						<div class="fa fa-phone"></div> 040 40205020
						<span>ORDER NOW!</span>
					</div>
					<div class="clear"></div>
				</div>
			</div>
<!--==============================Content=================================-->
			<div class="content"><div class="ic">!</div>
				<div class="container_12">
					<div class="grid_5">
						<h3>Booking Form</h3>
					
                                                    <form action="booking.jsp" id="bookingForm"  method="post">
							<div class="fl1">
								
								<div class="tmInput">
									<input type="text" id="txtSource" name="source" value="" placeholder="Source Address" style="width: 200px" required />
                    &nbsp;
                                                                          
								</div>
                                                            
							</div>
							<div class="fl1">
								
								<div class="tmInput mr0">
									<input type="text" id="txtDestination" name="destination" value="" placeholder="Destination Address" style="width: 200px" required/>
                                                                        
                    &nbsp;                                      <input type="button" class="button" value="Get Route" onclick="GetRoute()"/>
                                                          
								</div>
                
                                                            
							</div>
							<div class="clear"></div>
							
							<strong>Date</strong>
							<label class="tmDatepicker">
								<input type="text" name="Date"	placeHolder='20/05/2014' data-constraints="@NotEmpty @Required @Date" required>
							</label>
							<div class="clear"></div>
							
							
							<div class="fl1 fl2">
								<em>Adults</em>
								<select name="Adults" class="tmSelect auto" data-class="tmSelect tmSelect2" data-constraints required >
									<option>1</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
                                                                        <option>4</option>
                                                                        <option>5</option>
								</select>
								<div class="clear height1"></div>
							</div>
							<div class="fl1 fl2">
								<em>Children</em>
								<select name="Children" class="tmSelect auto" data-class="tmSelect tmSelect2" data-constraints="" required>
									<option>0</option>
									<option>0</option>
									<option>1</option>
									<option>2</option>
                                                                        <option>3</option>
                                                                        <option>4</option>
								</select>
							</div>
                                                        
						<div class="clear"></div>
                                                
                                                   <label>
                                                        Fare: <input type="text" name="test" id="test" readonly/>
                                                   </label>
                                                
                                                        
                                                        
                                                    <button type="submit" class="btn"/>Payment Through Online </button>   
                                                   
                                                    
                                                </form>
                                                
                                                <form action="paymentwallet.jsp" id="bookingForm"  method="post">
							
                                                       <div class="clear"></div>
							
							
						
                                                        
                                                    <button type="submit" class="btn"/>Payment Through Wallet </button>   
                                                   
                                                    
                                                </form>
                                                
                                              
						
                                                
                                                
                                                
                                                      
                                                     <td colspan="2">
                    <div id="dvDistance">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="dvMap" style="width: 500px; height: 200px">
                    </div>
                </td>
                <td>
                    <div id="dvPanel" style="width:px; height:px">
                    </div>
                </td>
            </tr>
        </table>
        <p id="dvDistance"> </p>
       
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA5dI-JeB5hlI5trGOsDZimHgx24RQnQWE&sensor=false&libraries=places"></script>
        <script type="text/javascript">
    var source, destination;
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();
    google.maps.event.addDomListener(window, 'load', function () {
        new google.maps.places.SearchBox(document.getElementById('txtSource'));
        new google.maps.places.SearchBox(document.getElementById('txtDestination'));
        directionsDisplay = new google.maps.DirectionsRenderer({'draggable': true});
    });

    function GetRoute() {
        var hyderabad = new google.maps.LatLng(17.3850, 78.4867);
        var mapOptions = {
            zoom: 7,
            center: hyderabad
        };
        map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);
        directionsDisplay.setMap(map);
        // directionsDisplay.setPanel(document.getElementById('dvPanel'));

        //*********DIRECTIONS AND ROUTE**********************//
        source = document.getElementById("txtSource").value;
        destination = document.getElementById("txtDestination").value;

        var request = {
            origin: source,
            destination: destination,
            travelMode: google.maps.TravelMode.DRIVING
        };
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
        });

        //*********DISTANCE AND DURATION**********************//
        var service = new google.maps.DistanceMatrixService();
        service.getDistanceMatrix({
            origins: [source],
            destinations: [destination],
            travelMode: google.maps.TravelMode.DRIVING,
            unitSystem: google.maps.UnitSystem.METRIC,
            avoidHighways: false,
            avoidTolls: false
        }, function (response, status) {
            if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
                var distance = response.rows[0].elements[0].distance.value;
                var duration = response.rows[0].elements[0].duration.text;
                var fare= (distance/1000)*10;
                document.getElementById("dvDistance").innerHTML = distance;
                var dvDistance = document.getElementById("dvDistance");
               
                dvDistance.innerHTML = "";
                dvDistance.innerHTML += "Distance (In Meter): " + distance+ "<br/>";
                dvDistance.innerHTML += "Duration:" + duration + "<br />" ;
                dvDistance.innerHTML += "Fare (In Rs):" + fare + "<br />" ;
                
                var dist=document.getElementById("dvDistance.distance");
                
                   document.getElementById("test").value=fare;
            } else {
                alert("Unable to find the distance via road.");
            }
        });
        
    }
                                                         
        </script>
                                                     
						
                                                
                                                
					</div>
					
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span> 040 40205020</div>
					<div class="socials">
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						<div class="st1">
						<div class="brand">Icab </div>
						&copy; 2017	| <a href="#">Privacy Policy</a> </div> Website designed by <a href="http://www.rkinfosystems.in/" rel="nofollow">rkinfosystems.in</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
		<script>
			$(function (){
				$('#bookingForm').bookingForm({
					ownerEmail: '#'
				});
			})
			$(function() {
				$('#bookingForm input, #bookingForm textarea').placeholder();
			});
		</script>
	</body>
</html>