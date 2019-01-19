<%-- 
    Document   : EditRide
    Created on : Nov 22, 2017, 10:10:26 PM
    Author     : avibhullar
--%>

<%@page import="UWRideshare.beans.RideBean"%>
<%@page import="UWRideshare.services.ManageProfileServices"%>
<%@page import="UWRideshare.beans.DriverBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Driver Panel</title>
	
	<link rel="stylesheet" href="css/theme-yellow.css" />
	<link rel="stylesheet" href="css/style.css"  />
	<link rel="stylesheet" href="css/animate.css" />	
	<link rel ="stylesheet" href = "css/jquery-ui.css"/>
	<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
	<link rel= "stylesheet" href = "modal.css">
	
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700">
	

  </head>
  
  <body>
      <%
            if(session!=null)
            {
                int userid=(int)session.getAttribute("userid");
               DriverBean objbean=ManageProfileServices.getDashboard(userid);
        %>
    <!-- Header -->
	<header class="header" role="banner">
		<div class="wrap">
			<!-- Logo -->
			<div class="logo">
					<a href="Home.jsp" title="Transfers"><img src="logos/uwlogo.png" width = "40px" height = "40px"alt="Transfers" />UWRideshare</a>
				</div>
			<!-- //Logo -->
			
			<!-- Main Nav -->
			<nav role="navigation" class="main-nav">
				<ul>
					<li><a href="Home.jsp" title="">Home</a></li>		
					
					
				</ul>
			</nav>
			<!-- //Main Nav -->
		</div>
	</header>
	<!-- //Header -->
	
	<!-- Main -->
	<main class="main" role="main">
		<!-- Page info -->
		<header class="site-title color">
			<div class="wrap">
				<div class="container">
					<h1>Welcome,<%= objbean.getEmail()%> </h1>
					<nav role="navigation" class="breadcrumbs">
						<ul>
							<li><a href="Home.jsp" title="Home">Home</a></li>
							<li>Driver Panel</li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
		<!-- //Page info -->
		
		
		<div class="wrap">
			<div class="row">				
				<!--- Content -->
				
					<div class ="box" >
					<form  action="editride" method="post" id="form1">
						<div  >
                                                    
                                                        
								<div>
                                                                    <% RideBean objbean1=null;
                                                                        if (request.getParameter("rideid")!=null) {
                                                                                objbean1=UWRideshare.services.RideServices.getRide(Integer.parseInt(request.getParameter("rideid")));
                                                                            }
                                                                        else
                                                                         {

                                                                         }
                                                                        %>
								 <span class="close">&times;</span>
									
								</div>								
							<div>
                                                            <input type="hidden" name="rideid" id="rideid" value="<%= objbean1.getRideid() %>"
							<br>
							<label>Departure Date Time</label>
                                                        <input readonly type="text" name="textdate" value="<%= objbean1.getDatetime() %>" id="textdatetime" required />
							<br>
							<br>
							<label>Source</label>
                                                        <input readonly type="text" name="textsource" value="<%= objbean1.getSource() %>" id="textsource" required />
							<br>
                                                        <br>
							<label>Destination</label>
                                                        <input readonly type="text" name="textdestination" value="<%= objbean1.getDestination() %>" id="textdestination" required />
							<br>
                                                        <br>
							<label>Path</label>
                                                        <input readonly type="text" name="textpath" value="<%= objbean1.getPath() %>" id="textpath" required />
							<br>
																<br>
                                                                        <label>Number of seats available</label>
									<input type = "number" id = "textseats" name="textseats" value="<%=objbean1.getSeats() %>" required />
									<br>
									<label>Type of car </label>
									<input type = "text" id = "textcartype" name="textcartype" value="<%=objbean1.getCarname() %>" required />
									<br>
										<label>Amount (CAD)/Stop</label>
										<input type = "number" name="textcost" id="textcost" value="<%=objbean1.getCost() %>" placeholder="COST(between two adjacent stops)" required/>
								
							</div>	
							
									
                                                                                <div style =" padding-top: 15px;">
							<input type="submit" class = "btn medium" style= "margin-left:42%; padding-top: 15px;"	/>
                                                                                </div>
                                                    
							</div>
						</form>
						
					</div> 
					
                                                                                <!-- Widget -->
					
					<!-- //Widget -->
					
					<!-- Widget -->
										<!-- //Widget -->
				
				<!--- //Sidebar -->
			</div>
		</div>
	</main>
	<!-- //Main -->
	
	<!-- Footer -->
	<footer class="footer black" role="contentinfo">
		<div class="wrap">
			<div class="row">
				<!-- Column -->
				<article class="one-half">
					<h6>About us</h6>
					<p>We want to provide students and collegues a better, faster and more efficient form of transportation. So farewell to those long hours on the bus, it is time to get to your destination on time!</p>
				</article>
				<!-- //Column -->
				
				<!-- Column -->
				<article class="one-fourth">
					<h6>Need help?</h6>
					<p>Contact us via phone or email:</p>
					<p class="contact-data"><span class="ico phone"></span> +1 519 781 3561</p>
					<p class="contact-data"><span class="ico email"></span> <a href="mailto:uwrideshare@gmail.com">uwrideshare@gmail.com</a></p>
				</article>
				<!-- //Column -->
				
				<!-- Column -->
				<article class="one-fourth">
					<h6>Follow us</h6>
					<ul class="social">
						<li class="facebook"><a href="#" title="facebook">facebook</a></li>
						<li class="twitter"><a href="#" title="twitter">twitter</a></li>
						
					</ul>
				</article>
				<!-- //Column -->
			</div>
			
			<div class="copy">
				
				
				<nav role="navigation" class="foot-nav">
					<ul>
						<li><a href="Home.jsp" title="Home">Home</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</footer>
	<!-- //Footer -->
	
	<!-- Preloader -->
	<div class="preloader">
		<div id="followingBallsG">
			<div id="followingBallsG_1" class="followingBallsG"></div>
			<div id="followingBallsG_2" class="followingBallsG"></div>
			<div id="followingBallsG_3" class="followingBallsG"></div>
			<div id="followingBallsG_4" class="followingBallsG"></div>
		</div>
	</div>
	<!-- //Preloader -->

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery.uniform.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src = "js/jquery.js"></script>
	<script src = "js/jquery-ui.js"></script>

<script type="text/javascript">

 $( "#textdate" ).datepicker({minDate: 0});
</script>

<script>
	$(document).ready(function(){
   $('select').on('change', function(event ) {
       //restore previously selected value
       var prevValue = $(this).data('previous');
       $('select').not(this).find('option[value="'+prevValue+'"]').show();
       //hide option selected                
       var value = $(this).val();
       //update previously selected data
       $(this).data('previous',value);
       $('select').not(this).find('option[value="'+value+'"]').hide();
   });
});
</script>
<script>
      // Note: This example requires that you consent to location sharing when
      // prompted by your browser. If you see the error "The Geolocation service
      // failed.", it means you probably did not give permission for the browser to
      // locate you.
      var map, infoWindow;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 17
        });
        infoWindow = new google.maps.InfoWindow;

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            infoWindow.open(map);
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNutTcDKVXE8OwFLN3idpuqZq7Vo3RTDI&callback=initMap">
    </script>
<%
             }
             else
             {
        %>
        <h4>Your Session Expired....Please Login Again!! </h4>
        
        <%        
             }
        %>
  </body>
</html>
