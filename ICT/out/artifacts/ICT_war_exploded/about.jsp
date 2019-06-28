<!DOCTYPE html>
<html>
<head>
	<title>About</title>
	<link rel="stylesheet" type="text/css" href="about.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
	<div class="navbarcont">
		<div class="navbarcont2">
			<div><a href="home.jsp">
				<img src="images\logo.png" class="navbarlogo">
			</a></div>	
			<div class="navigationlist">
				<div id="nav_item"><a href="home.jsp">Home</a></div>
				<div id="nav_item"><a href="staff.jsp">Staff</a></div>
				<div id="nav_item"><a href="program-structure.jsp">Program Structure</a></div>
				<div id="nav_item"><a href="student-activities.jsp">Student Activities</a></div>
				<div id="nav_item"><a href="about.jsp">About</a></div>
			</div>	
		</div>
	</div>

	<div class="session1">
		<img src="images\aboutus.jpg">

		<div class="title">About Us</div>
	</div>

	
	<div  class="session2">
		<div class="content">
			<h2>ABOUT OUR SCHOOL</h2>
			<br>
			<p style="text-align: center;"><b>School of Information Science and Technology</b></p>
			<br>
			<br>
			<p>As one of the earliest engineering schools in China with a comprehensive range of subjects, School of Information Science and Engineering has an exemplary national teaching center for electronic information and an Education Ministry Key Laboratory of Underwater Acoustic Communication and Marine Information Engineering. It has established extensive ties through academic exchange and cooperation with many world-renowned universities and enterprises. It has appointed over 20 internationally and domestically well-known scholars as part-time, guest or honorary professors including members of the Engineering Academies of the US and Canada. The Software School has won the Exemplary Software School Construction Achievements Prize conferred by the Chinese Ministry of Education.</p>
		</div>
	</div>
		
	<div  class="session3">
		<h2>Programmes</h2>

			<!--Section 2-->
		<div class = "row">
			<div class = "column">
				<a href="Computer Science.html">
					<div class="course_container">
	 					 <img src="images\PS - cst.png" alt="Computer Science Technology" class="image">
	  						<div class="overlay">
	    						<div class="text">Computer Science Technology</div>
	  						</div>
					</div>
				</a>
			</div>

			<div class = "column">
				<div>
					<p class = "text-exp">The CST programme at Xiamen University (XMU) was introduced in 1982 and is currently offered through School of Information Science and Engineering (SISE). As one of the oldest engineering schools in China with a comprehensive range of academic programmes, SISE owns an exemplary national educational centre for electronic information, and hosts the Ministry of Education's "Key Laboratory for Underwater Acoustic Communication and Marine Information Engineering". </p>
				</div>
			</div>
		</div>

		<div class = "row_reverse" >
			<div class = "column">
				<p class = text-exp>The Software engineering programme at Xiamen University (XMU), which was introduced in 2002, is supported by the Software School, one of the 35 national exemplary software engineering schools approved by China's Ministry of Education. The school has established joint research and development collaborations with a number of overseas IT enterprises including MICROSOFT, IBM, BEA, ORACLE, SYBASE, SUN and DELL.</p>
			</div>

			<div class = "column">
				<a href="Software Engineering.html">
					<div class="course_container">
	 					 <img src="images\PS - swe.png" alt="Software Engineering" class="image">
	  						<div class="overlay">
	    						<div class="text">Software Engineering</div>
	  						</div>
					</div>
				</a>
			</div>
		</div>

		<div class = "row" >
			<div class = "column">
				<a href="Digital Media.html">
					<div class="course_container">
	 					 <img src="images\PS - dmt.png" alt="Digital Media Technology" class="image">
	  						<div class="overlay">
	    						<div class="text">Digital Media Technology</div>
	  						</div>
					</div>
				</a>
			</div>

			<div class = "column">
				<p class = text-exp>The DMT programme at Xiamen University is offered through the Software School, one of the 35 national exemplary software engineering schools approved by China’s Ministry of Education. The Software School has established joint research and development collaborations with a number of overseas IT enterprises such as MICROSOFT, IBM, BEA, ORACLE, SYBASE, SUN and DELL. The programme focuses on the provision of a strong background in fundamental computing knowledge along with a dose of computer animation, game design and interactive design. We provide advanced and specialised courses such as audio-visual language, augmented reality technology and design, information visualization, big data analytics, etc.</p>
			</div>
		</div>	
	</div>

	<div class="session4">
		<h2>Our Team</h2>
		<img src="images\Union-Logo.png">
		<p>Software Engineering Student Union</p>
	</div>

	<div  class="session5">
			<h2>Gallery</h2>

			<div class="slide_container">
				<div class="slide_content">
				  <img class="slide" src="images\recent4.jpg">
				  <img class="slide" src="images\small1.jpg" >
				  <img class="slide" src="images\small2.jpg">
				</div>
				
				<div class="slide_content2">
				    <div class="navigation_arrow" onclick="plusDivs(-1)">&#10094;</div>
				    <div>
				    	<div class="dot demo" onclick="currentDiv(1)"></div>
				    	<div class="dot demo" onclick="currentDiv(2)"></div>
				    	<div class="dot demo" onclick="currentDiv(3)"></div>
				    </div>
				    <div class="navigation_arrow" onclick="plusDivs(1)">&#10095;</div>
				</div>
			</div>
	</div>

	<!-- Footer section -->
	<footer>
		<section class="footer">

			<div class="footer-container">
				<div class="footer-column">
					<h3>EXPLORE</h3>
					<ul style = "list-style-type: none;" class="text-white">
						<li><a href="home.jsp">Home</a></li>
						<li><a href="staff.jsp">Staff</a></li>
						<li><a href="program-structure.jsp">Program Structure</a></li>
						<li><a href="student-activities.jsp">Student Activities</a></li>
						<li><a href ="about.jsp">About</a></li>
					</ul>
				</div>

				<div class="footer-column">
					<h3>QUICK LINK</h3>
					<ul style = "list-style-type: none;" class="text-white">
						<li><a href="http://www.xmu.edu.my/">Xiamen University Malaysia</a></li>
						<li><a href="https://linc.xmu.edu.my/">Library</a></li>
					</ul>
				</div>

				<div class="footer-column">
					<h3>OFFICE ADDRESS</h3>
					<ul style = "list-style-type: none;" class="text-white">
						<li>Xiamen University Malaysia</li>
						<li>10, Jalan Sunsuria,</li>
						<li>Bandar Sunsuria,</li>
						<li>43900 Sepang,</li>
						<li>Selangor Darul Ehsan, Malaysia.</li>
					</ul>
				</div>

				<div class="footer-column">
					<h3>CONTACT US</h3>
					<ul style = "list-style-type: none;" class="text-white">
						<li>
							<a href = "https://www.facebook.com/SWEstudentunion/?ref=br_rs">
								<img src = "images\facebook.png">
							</a>
							<a href = "mailto: SWEstudentunion@outlook.com">
								<img src = "images\mail.png">
							</a>
							<a href = "https://xmux.xdea.top/">
								<img src = "images\xmux.jpg">
							</a>

						</li>
					</ul>
				</div>
			</div>

		</section>

		<div class = "footer2">
			Copyright &#0169 2019 Information Technology Xiamen University Malaysia. All rights reserved.
		</div>
	</footer>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("slide");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" dot2", " dot");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " dot2";
}
</script>

</body>
</html>