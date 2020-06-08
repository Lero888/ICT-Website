<!DOCTYPE html>
<html>
<head>
	<title>ICT Main Page</title>
	<link rel="stylesheet" type="text/css" href="home.css">

</head>
<body>

	<div class="navbarcont">
		<div class="navbarcont2">
			<div><a href="home.jsp">
				<img src="images/logo.png" class="navbarlogo">
			</a></div>
			<div class="navigationlist">
				<div class="nav_item"><a href="home.jsp">Home</a></div>
				<div class="nav_item"><a href="staff.jsp">Staff</a></div>
				<div class="nav_item"><a href="program-structure.jsp">Program Structure</a></div>
				<div class="nav_item"><a href="student-activities.jsp">Student Activities</a></div>
				<div class="nav_item"><a href="about.jsp">About</a></div>
			</div>
		</div>
	</div>

	<div class="video_container">
		<video autoplay muted loop id="IntroVideo">
			<source src="images/xiamen cut.mp4" type="video/mp4">
		</video>	
	</div>	
	<div class="contentcontainer">
		<div class="title">
			WELCOME TO SCHOOL OF ICT
		</div>
		<div class="content">
			<button class="btn btn-success" onclick="window.location.href='about.jsp';">Learn more</button>
		</div>
	</div>
</body>
</html>