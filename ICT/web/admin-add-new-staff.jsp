<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="admin-add-new-staff.css">

	<style>
		.image-with-tag {float:none; margin:0 auto 10px; display:block; width:400px; padding-bottom:35%;}
    </style>
</head>

<body>

	<div class="navbarcont">
		<div class="navbarcont2">
			<div><a href="home.jsp">
				<img src="images/logo.png" class="navbarlogo">
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

	<div style = "margin: 50px; text-align: left;">
		<h1 style = "text-align: center;">Add A Staff</h1>
	</div>
	
	<div style = "margin: 90px; margin-bottom: 50px; padding: 2px; padding-bottom: 0px; background-color: #F5F5F5;">
		<h2>Personal Info</h2>
		<hr></hr>
	</div>

	<form action = "./AddStaffServlet" method = "post" enctype="multipart/form-data">
		<div class = "flexcontainer">
			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
					<input type="text" name="name" placeholder="Full name" style = "width: 299px;" required>
		  		</div>
		  		
		  		<div class="col">
		  			<p>Name</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
					<input type="text" name="position" placeholder="Position" style = "width: 299px;" required>
		  		</div>
		  		
		  		<div class="col">
		  			<p>Position</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
	  				<select name="school">
	  					<option value="School of Energy and Chemical Engineering">School of Energy and Chemical Engineering</option>
	  					<option value="School of Information Science and Technology">School of Information Science and Technology</option>
	  					<option value="School of Ocean and Environment">School of Ocean and Environment</option>
	  				</select>
		  		</div>
		  		
		  		<div class="col">
		  			<p>School</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
		  			<input type="text" name="tel" placeholder="XXX-XXXXXXX" style = "width: 299px;" required>
		  		</div>
		  		
		  		<div class="col">
		  			<p>Tel</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
					<input type="email" name="email" placeholder="Email" style = "width: 299px;" required>
		  		</div>
		  		
		  		<div class="col">
		  			<p>Email</p>
		  		</div>
			</div>
		</div>

		<div style = "margin: 90px; margin-bottom: 50px; padding: 2px; padding-bottom: 0px; background-color: #F5F5F5;">
			<h2>Background and Expertise</h2>
			<hr></hr>
		</div>

		<div class = "flexcontainer">
			<div class="flexbox">
		  		<div class="col" style = "flex: 8;">
		  			<textarea name="Educational-Background" required></textarea>
		  		</div>
		  		
		  		<div class="col" style = "flex: 2; min-width: 178.41px;">
		  			<p>Educational Background</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "flex: 8;">
		  			<textarea name="Research-Interest" required></textarea>
		  		</div>
		  		
		  		<div class="col"  style = "flex: 2; min-width: 178.41px;">
		  			<p>Research Interest</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col"  style = "flex: 8;">
		  			<textarea name="Academic-Experience" required></textarea>
		  		</div>
		  		
		  		<div class="col" style = "flex: 2; min-width: 178.41px;">
		  			<p>Academic Experience</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col"  style = "flex: 8;">
		  			<textarea name="Representative-Publications" required></textarea>
		  		</div>
		  		
		  		<div class="col" style = "flex: 2; min-width: 178.41px;">
		  			<p>Representative Publications</p>
		  		</div>
			</div>
		</div>

		<div style = "margin: 90px; margin-bottom: 50px; padding: 2px; padding-bottom: 0px; background-color: #F5F5F5;">
			<h2>Image</h2>
			<hr></hr>
		</div>

		<div class = "flexcontainer">
			<div class="flexbox">
		  		<div class="col">
		  			<div style = "padding-top: 30px; text-align: left;">
	  					<input type="file" name="image" accept="image/*">
					</div>
		  		</div>
		  	</div>

		  	<div class = "flexbox">
		  		<div class = "submit-container">
		  			<input type= "submit" value = "Submit" style = "margin-right: 10px;">
	  				<button><a href="admin-staff-panel.jsp">Cancel</a></button>
	  			</div>
		  	</div>
		</div>
	</form>


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
								<img src = "images/facebook.png" alt = "facebook">
							</a>
							<a href = "mailto: SWEstudentcouncil@outlook.com">
								<img src = "images/mail.png" alt = "mail">
							</a>
							<a href = "https://xmux.xdea.top/">
								<img src = "images/xmux.jpg" alt = "xmux">
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

</body>
</html>

