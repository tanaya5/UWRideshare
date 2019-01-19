<%-- 
    Document   : SearchRides
    Created on : 10 Nov, 2017, 12:05:32 AM
    Author     : tanay
--%>

<%@page import="UWRideshare.services.ManageProfileServices"%>
<%@page import="UWRideshare.beans.DriverBean"%>
<%@page import="UWRideshare.services.RideServices"%>
<%@page import="UWRideshare.beans.RideBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="UWRideshare.beans.SearchRideBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
	
	
	<title>Search results</title>
	
	<link rel="stylesheet" href="css/theme-yellow.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel = "stylesheet" href = "css/modal1.css"/>
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
                            <a href="Home.jsp" title="UWRideshare"><img src="logos/uwlogo.png" width ="40px" height="40px" alt="UWRideshare" />UWRideshare</a>
			</div>
			<!-- //Logo -->
			
			<!-- Main Nav -->
			<nav role="navigation" class="main-nav">
				<ul>
					<li><a href="Home.jsp?msg=null" title="Home">Home</a></li>
					
					
					
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
			<div class="wrap">
				<form role="form"  action="SearchRides.jsp" method="post">
					<!-- Row -->
					<div class="f-row">
						<div class="form-group datepicker one-third">
							<label for="dep-date">Departure date</label>
							<input type="text" id="textdate" name="textdate" required/>
						</div>
						<div class="form-group select one-third">
							<label>Pick up location</label>
							<select name="textsource" required>
								<option>Select location</option>
										<option value="Toronto">Toronto</option>
								<option value="Smiths Falls">Smiths Falls</option>
								<option value="Perth">Perth</option>
								<option value="Hanover">Hanover</option>
								<option value="Gananoque<">Gananoque</option>
								<option value="Mississauga">Mississauga</option>
								<option value="Goderich">Goderich</option>
								<option value="Arnprior">Arnprior</option>
								<option value="Parry Sound">Parry Sound</option>
								<option value="Orangeville">Orangeville</option>
								<option value="Carleton Place">Carleton Place</option>
								<option value="Ottawa">Ottawa</option>
								<option value="Burlington">Burlington</option>
								<option value="St. Catharines">St. Catharines</option>
								<option value="Stratfor">Stratford</option>
								<option value="Hamilton">Hamilton</option>
								<option value="Oakville">Oakville</option>
								<option value="Oshawa">Oshawa</option>
								<option value="Brockville">Brockville</option>
								<option value="Richmond Hill">Richmond Hill</option>
								<option value="Pickering">Pickering</option>
								<option value="Newmarket">Newmarket</option>
								<option value="Owen Sound">Owen Sound</option>
								<option value="Aylmer">Aylmer</option>
								<option value="London">London</option>
								<option value="Vaughan">Vaughan</option>
								<option value="Windsor">Windsor</option>
								<option value="Kingston">Kingston</option>
								<option value="Renfrew">Renfrew</option>
								<option value="Shelburne">Shelburne</option>
								<option value="Brampton">Brampton</option>
								<option value="Cobourg">Cobourg</option>
								<option value="Ingersoll">Ingersoll</option>
								<option value="Hawkesbury">Hawkesbury</option>
								<option value="Fort Frances">Fort Frances</option>
								<option value="Markham">Markham</option>
								<option value="Kitchener">Kitchener</option>
								<option value="Guelph">Guelph</option>
								<option value="Ajax">Ajax</option>
								<option value="Peterborough">Peterborough</option>
								<option value="Aurora">Aurora</option>
								<option value="Welland">Welland</option>
								<option value="St. Thomas">St. Thomas</option>
								<option value="Orillia">Orillia</option>
								<option value="Cornwall">Cornwall</option>
								<option value="Collingwood">Collingwood</option>
								<option value="Brantford">Brantford</option>
								<option value="Woodstock">Woodstock</option>
								<option value="Cambridge">Cambridge</option>
								<option value="Waterloo">Waterloo</option>
								<option value="Whitby">Whitby</option>
								<option value="Niagara Falls">Niagara Falls</option>
								<option value="Midland">Midland</option>
								<option value="Petrolia">Petrolia</option>
								<option value="Milton">Milton</option>
								<option value="Sarnia">Sarnia</option>
								<option value="North Bay">North Bay</option>
								<option value="Belleville">Belleville</option>
								<option value="St. Marys">St. Marys</option>
								<option value="Barrie">Barrie</option>
								<option value="Thunder Bay">Thunder Bay</option>
								<option value="Halton Hills">Halton Hills</option>
								<option value="Tillsonburg">Tillsonburg</option>
								<option value="Port Colborne">Port Colborne</option>
								<option value="Dryden">Dryden</option>
								<option value="New Tecumseth">New Tecumseth</option>
								<option value="Bradford West Gwillimbury">Bradford West Gwillimbury</option>
								<option value="Thorold">Thorold</option>
								<option value="Penetanguishene">Penetanguishene</option>
								<option value="Sault Ste. Marie">Sault Ste. Marie</option>
								<option value="Whitchurch-Stouffville">Whitchurch-Stouffville</option>
								<option value="Lincoln">Lincoln</option>
								<option value="Fort Erie">Fort Erie</option>
								<option value="Grimsby">Grimsby</option>
								<option value="Tecumseh">Tecumseh</option>
								<option value="Georgina">Georgina</option>
								<option value="Wasaga Beach">Wasaga Beach</option>
								<option value="Niagara-on-the-Lake">Niagara-on-the-Lake</option>
								<option value="LaSalle">LaSalle</option>
								<option value="Pelham">Pelham</option>
								<option value="Amherstburg">Amherstburg</option>
								<option value="Innisfil">Innisfil</option>	
								
							</select>
						</div>
						<div class="form-group select one-third">
							<label>Drop off location</label>
							<select name="textdestination" required>
								<option>Select location</option>
								<option value="Toronto">Toronto</option>
								<option value="Smiths Falls">Smiths Falls</option>
								<option value="Perth">Perth</option>
								<option value="Hanover">Hanover</option>
								<option value="Gananoque<">Gananoque</option>
								<option value="Mississauga">Mississauga</option>
								<option value="Goderich">Goderich</option>
								<option value="Arnprior">Arnprior</option>
								<option value="Parry Sound">Parry Sound</option>
								<option value="Orangeville">Orangeville</option>
								<option value="Carleton Place">Carleton Place</option>
								<option value="Ottawa">Ottawa</option>
								<option value="Burlington">Burlington</option>
								<option value="St. Catharines">St. Catharines</option>
								<option value="Stratfor">Stratford</option>
								<option value="Hamilton">Hamilton</option>
								<option value="Oakville">Oakville</option>
								<option value="Oshawa">Oshawa</option>
								<option value="Brockville">Brockville</option>
								<option value="Richmond Hill">Richmond Hill</option>
								<option value="Pickering">Pickering</option>
								<option value="Newmarket">Newmarket</option>
								<option value="Owen Sound">Owen Sound</option>
								<option value="Aylmer">Aylmer</option>
								<option value="London">London</option>
								<option value="Vaughan">Vaughan</option>
								<option value="Windsor">Windsor</option>
								<option value="Kingston">Kingston</option>
								<option value="Renfrew">Renfrew</option>
								<option value="Shelburne">Shelburne</option>
								<option value="Brampton">Brampton</option>
								<option value="Cobourg">Cobourg</option>
								<option value="Ingersoll">Ingersoll</option>
								<option value="Hawkesbury">Hawkesbury</option>
								<option value="Fort Frances">Fort Frances</option>
								<option value="Markham">Markham</option>
								<option value="Kitchener">Kitchener</option>
								<option value="Guelph">Guelph</option>
								<option value="Ajax">Ajax</option>
								<option value="Peterborough">Peterborough</option>
								<option value="Aurora">Aurora</option>
								<option value="Welland">Welland</option>
								<option value="St. Thomas">St. Thomas</option>
								<option value="Orillia">Orillia</option>
								<option value="Cornwall">Cornwall</option>
								<option value="Collingwood">Collingwood</option>
								<option value="Brantford">Brantford</option>
								<option value="Woodstock">Woodstock</option>
								<option value="Cambridge">Cambridge</option>
								<option value="Waterloo">Waterloo</option>
								<option value="Whitby">Whitby</option>
								<option value="Niagara Falls">Niagara Falls</option>
								<option value="Midland">Midland</option>
								<option value="Petrolia">Petrolia</option>
								<option value="Milton">Milton</option>
								<option value="Sarnia">Sarnia</option>
								<option value="North Bay">North Bay</option>
								<option value="Belleville">Belleville</option>
								<option value="St. Marys">St. Marys</option>
								<option value="Barrie">Barrie</option>
								<option value="Thunder Bay">Thunder Bay</option>
								<option value="Halton Hills">Halton Hills</option>
								<option value="Tillsonburg">Tillsonburg</option>
								<option value="Port Colborne">Port Colborne</option>
								<option value="Dryden">Dryden</option>
								<option value="New Tecumseth">New Tecumseth</option>
								<option value="Bradford West Gwillimbury">Bradford West Gwillimbury</option>
								<option value="Thorold">Thorold</option>
								<option value="Penetanguishene">Penetanguishene</option>
								<option value="Sault Ste. Marie">Sault Ste. Marie</option>
								<option value="Whitchurch-Stouffville">Whitchurch-Stouffville</option>
								<option value="Lincoln">Lincoln</option>
								<option value="Fort Erie">Fort Erie</option>
								<option value="Grimsby">Grimsby</option>
								<option value="Tecumseh">Tecumseh</option>
								<option value="Georgina">Georgina</option>
								<option value="Wasaga Beach">Wasaga Beach</option>
								<option value="Niagara-on-the-Lake">Niagara-on-the-Lake</option>
								<option value="LaSalle">LaSalle</option>
								<option value="Pelham">Pelham</option>
								<option value="Amherstburg">Amherstburg</option>
								<option value="Innisfil">Innisfil</option>								
								
							</select>
						</div>
					</div>
					<!-- //Row -->
					
					<!-- Row -->
					
					<!-- //Row -->
					
					<!-- Row -->
					<div>
						<div class="form-group right">
							<button type="submit" class="btn large black">Find a Ride</button>
						</div>
						
					</div>
					<!--// Row -->
				</form>
			</div>
		</div>
		<!-- //Search -->
                <div id="myModal3" class = "modal" >
							<div class = "modal-content" style = "width: 80%;" >
							<div  class = "modal-header" style= "text-align:center;">
								 <span class="close">&times;</span>
									<h3 style ="padding-top:10px;">SHOW MAP</h3>
								</div>	
							<div class="modal-body">	
								
							
							<div  id="map" class = "gmap2" style = "display: block;"></div>
							</div>
							</div>
						</div>
		
		<div class="wrap">
			<div class="row">
				<!--- Content -->
				<div class="full-width content">
					<h2 style = "color:#fff;">The available rides are below</h2>
					
					<div class="results">
                                            <% SearchRideBean objbean=new SearchRideBean();
                                            String[] newpath=null;
                                            String msg=request.getParameter("msg");
                                            System.out.println(msg);
                                            objbean.setSource(request.getParameter("textsource"));
                                            objbean.setDestination(request.getParameter("textdestination"));
                                            objbean.setDatetime(request.getParameter("textdate"));
                                            ArrayList<RideBean> al = RideServices.getRides(objbean);
                                            RideBean objbean1=null;
                                            if(al.isEmpty())
                                            {
                                            response.sendRedirect("Home.jsp?msg=empty");
                                            }
                                            for (int i = 0; i < al.size(); i++) {
                                                objbean1 = al.get(i);
                                                DriverBean objbean2=new DriverBean();
                                                int userid=objbean1.getUserid();
                                                 
                                                objbean2=ManageProfileServices.viewProfile(userid);
                                               %>
						<!-- Item -->
						<article class="result">
							<div class="one-fourth heightfix" style="text-align:center;font-size: 30;"><h3 style = "padding-top:10%">
                                                               <%
                                                                    newpath = objbean1.getPath().split(",", -1);
                                                                    for(int j=0;j<newpath.length;j++)
                                                                    {
                                                                        
                                                               %>
                                                               <%=newpath[j] %> - <br/>
                                                            <%
                                                                }
                                                            %>
                                                            </h3></div>
							<div class="one-half heightfix">
								<h3><%= objbean1.getCarname() %> <a href="javascript:void(0)" class="trigger color" title="Read more">?</a>  </h3>
								<ul>
									<li>
										<span class="ico people"></span>
										<p>Max <strong><%= objbean1.getSeats() %> people</strong> </p>
									</li>
									<li>
										<span class="ico phone"></span>
										<p> <strong><%= objbean2.getContact() %></strong> <br /></p>
									</li>
									<li>
										<span class="ico time"></span>
										<p>Departure Date and Time <br /><strong><%=objbean1.getDatetime() %></strong></p>
									</li>
								</ul>
							</div>
							<div class="one-fourth">
								<div>
									<div class="price"><%= objbean1.getCost() %><small>CAD</small></div>
									<span class="meta">per passenger/stop</span>
                                                                        <a href="mailto:<%= objbean2.getEmail() %>" class="btn grey large">send email</a>
								</div>
							</div>
							<div class="full-width information">	
								<a href="javascript:void(0)" class="close color" title="Close">x</a>
                                                                <p>Driver's Name  :<%= objbean2.getName() %></p><br>
                                                                <p>Driver's Email :<%= objbean2.getEmail() %></p>
                                                        </div>
						</article>
						<!-- //Item -->
						<%
                                                    }
                                                %>
					
					</div>
					
					
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
	<script src="js/jquery.datetimepicker.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/search.js"></script>
	<script src="js/scripts.js"></script>
	<script src = "js/jquery.js"></script>
	<script src = "js/jquery-ui.js"></script>
	<script type = "text/javascript">
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
var modal3 = document.getElementById('myModal3');
var btn = document.getElementById('myBtn');
var span = document.getElementsByClassName("close")[0];
//btn.onclick = function() {
//modal3.style.display = "block";
//}
span.onclick = function() {  
modal3.style.visibility = "hidden";	
}
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

  
}

function calculateAndDisplayRoute(directionsService, directionsDisplay) {
var locationont = "orangeville" + ", ont";
  var waypts = [{location: "waterloo, ont", stopover: true}, {location: locationont, stopover: true}, {location: "ottawa, ont", stopover: true} ];
 

  directionsService.route({
    origin: "toronto, ont",
    destination: "hamilton,ont",
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


