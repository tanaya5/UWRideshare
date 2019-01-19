<%-- 
    Document   : RideDetails
    Created on : 27 Nov, 2017, 6:56:55 PM
    Author     : tanay
--%>

<%@page import="UWRideshare.beans.RideBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
	
	
	<title>Search results</title>
	
	<link rel="stylesheet" href="css/theme-yellow.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel ="stylesheet" href = "css/jquery-ui.css"/>
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700">
	<link rel="shortcut icon" href="images/favicon.ico">

   
  </head>
  
  <body>
    <!-- Header -->
	<header class="header" role="banner">
		<div class="wrap">
			<!-- Logo -->
			<div class="logo">
				<a href="Home.jsp" title="UWRideShare"><img src="logos/uwlogo.png" width = "40px" height = "40px" alt="UWRideShare"/>UWRideShare</a>
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
		<!-- Search -->
		<div class="advanced-search color">
                     <%if (request.getParameter("rideid") != null) {
                                             int rideid=Integer.parseInt(request.getParameter("rideid"));
                                               RideBean objbean=new RideBean();
                                               objbean=UWRideshare.services.RideServices.getRide(rideid);
                         %>
                         <input type="text" id="path" value="<%= objbean.getPath()%>" />
                         <input type ="text" id ="stuff" value =" "/>
                         <%
                                                            }
                                                        else
                                                        {
                                                           
                                                           
                                                        }
                                                        %>
			
		</div>
		<!-- //Search -->
		
		<div class="wrap">
			<div class="row">
				<!--- Content -->
				<div class="full-width content">
					<h2 style = "color:#fff; text-align: center;">Map Route</h2>
					<div id = "map" class = "gmap2"></div>
					
					
				</div>
				<!--- //Content -->
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
					<p class="contact-data"><span class="ico phone"></span> +1 555 555 555</p>
					<p class="contact-data"><span class="ico email"></span> <a href="mailto:help@transfers.com">help@transfers.com</a></p>
				</article>
				<!-- //Column -->
				
				<!-- Column -->
				<article class="one-fourth">
					<h6>Follow us</h6>
					<ul class="social">
						<li class="facebook"><a href="#" title="facebook">facebook</a></li>
						<li class="twitter"><a href="#" title="twitter">twitter</a></li>
						<li class="gplus"><a href="#" title="gplus">google plus</a></li>
						<li class="linkedin"><a href="#" title="linkedin">linkedin</a></li>
						<li class="vimeo"><a href="#" title="vimeo">vimeo</a></li>
						<li class="pinterest"><a href="#" title="pinterest">pinterest</a></li>
					</ul>
				</article>
				<!-- //Column -->
			</div>
			
			<div class="copy">
				<p>Copyright 2014, Themeenergy. All rights reserved. </p>
				
				<nav role="navigation" class="foot-nav">
					<ul>
						<li><a href="#" title="Home">Home</a></li>
						<li><a href="#" title="Blog">Blog</a></li>
						<li><a href="#" title="About us">About us</a></li>
						<li><a href="#" title="Contact us">Contact us</a></li>
						<li><a href="#" title="Terms of use">Terms of use</a></li>
						<li><a href="#" title="Help">Help</a></li>
						<li><a href="#" title="For partners">For partners</a></li>
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
	<script src="js/jquery.datetimepicker.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/search.js"></script>
	<script src="js/scripts.js"></script>
	<script src = "js/jquery.js"></script>
	<script src = "js/jquery-ui.js"></script>
	<script type = "text/javascript">
 $( "#datepicker" ).datepicker({minDate: 0});
</script>	
<script>
	function initMap() {
  var directionsService = new google.maps.DirectionsService;
  var directionsDisplay = new google.maps.DirectionsRenderer;
  
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 6,
    center: {lat: 43.6565353 , lng: -79.6010328} 
  });
  directionsDisplay.setMap(map);
//Event.observe(window, 'load', function(){
 calculateAndDisplayRoute(directionsService, directionsDisplay);
//});
/*  window.onload = function() {
	//modal3.style.visibility = "visible";
	
    calculateAndDisplayRoute(directionsService, directionsDisplay);
  }; */
        
}

function calculateAndDisplayRoute(directionsService, directionsDisplay) {
    var urlstring=window.href.location;
                     document.getElementById('stuff').value=urlstring;
     var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState === 4 && this.status === 200) {
                             if (this.responseText !=null)
                            {
                               document.getElementById('stuff').innerHTML =this.responsetext;

                            
                                
                            }
                            else
                            {
                                // document.getElementById('status').innerHTML =this.responseText;
                            }
                        }
                    };
                                //                     document.getElementById('status').innerHTML ='jjjiiiii';

                    var url = "getridedetails";
                    var urlstring=window.href.location;
                     document.getElementById('stuff').value=urlstring;
                    var url1 = new URL(urlstring);
                    var rideid= url1.searchParams.get("rideid");
                    var params = "rideid="+rideid;
                    xhttp.open("POST", url, true);
                    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xhttp.send(params);
            
	var maproute = document.getElementById("path").value;
        
	var splitroute = maproute.split(",", 5);
      //  document.getElementById("stuff").value=splitroute.length;
        var pts=[];
        var waypts=[];
       // var waypts = [{location: "hamilton, ont", stopover: true}, {location: "waterloo, ont", stopover: true} ];
        if(splitroute.length==4)
        {
            var pt1=splitroute[1];
            var st=" , ont";
            var py1=pt1.concat(st);
            var pt2=splitroute[2];
            
            waypts=[{location: py1, stopover: true}, {location: "waterloo, ont", stopover: true} ];
             //document.getElementById("stuff").value=py1;
        }
        if(splitroute.length==3)
        {
            waypts=[{location: "hamilton, ont", stopover: true}, {location: "waterloo, ont", stopover: true},{location: "guelph, ont", stopover: true} ];
           //   document.getElementById("stuff").value="pppp"
        }
	var hamiltonroute = ""; 
	
	var pt1=splitroute[1]+", ont";
  var waypts = [{location:"hamilton, ont", stopover: true}, {location: "waterloo, ont", stopover: true} ];
 

  directionsService.route({
    origin: "Toronto, ont",
    destination: "Oakville, ont",
    waypoints: waypts,
    optimizeWaypoints: true,
    travelMode: 'DRIVING'
  }, function(response, status) {
    if (status === 'OK') {
      directionsDisplay.setDirections(response);
      var route = response.routes[0];
	  var lengthofroute = 0;
	   var infoWindow = new google.maps.InfoWindow;
	  for(var i = 0; i < route.legs.length; ++i) {
		
		 lengthofroute += route.legs[i].distance.value;
		
		}
		var distancetotal = lengthofroute/1000 + "km";
		
		 infoWindow.setContent(distancetotal);
		 var h3info = document.getElementById("h3text").value
		document.getElementById("dist").value = h3info;
		
    } else {
      window.alert('Directions request failed due to ' + status);
    }
  });
}
</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNutTcDKVXE8OwFLN3idpuqZq7Vo3RTDI&callback=initMap">
    </script>
  </body>
</html>