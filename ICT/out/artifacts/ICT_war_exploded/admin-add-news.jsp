<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="admin-add-news.css">

	<style>
		.image-with-tag {float:none; margin:0 auto 10px; display:block; width:400px; padding-bottom:35%;}
	</style>
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

<div style = "margin: 50px; text-align: left;">
	<h1 style = "text-align: center;">Add A News</h1>
</div>

<div style = "margin: 90px; margin-bottom: 50px; padding: 2px; padding-bottom: 0px; background-color: #F5F5F5;">
	<h2>News</h2>
	<hr></hr>
</div>

<form action = "./AddNewsServlet" method = "post" enctype="multipart/form-data">
	<div class = "flexcontainer">
		<div class="flexbox">
			<div class="col" style = "margin-top: 16px;">
				<input type="text" name="title" placeholder="Title" style = "width: 611px;" required>
			</div>

			<div class="col">
				<p>Title</p>
			</div>
		</div>

		<div class="flexbox">
			<div class="col" style = "margin-top: 16px;">
				<input type="text" name="caption" placeholder="Caption" style = "width: 611px;" required>
			</div>

			<div class="col">
				<p>Caption</p>
			</div>
		</div>

		<div class="flexbox">
			<div class="col" style = "margin-top: 16px;">
				<select name="category" required>
					<option value="" selected disabled hidden>Select one</option>
					<option value="Highlight">Highlight</option>
					<option value="Most Read">Most Read</option>
				</select>
			</div>

			<div class="col">
				<p>Category</p>
			</div>
		</div>

		<div class="flexbox">
			<div class="col" style = "margin-top: 16px;">
				<input type="date" name="date" min="2016-01-01" required>
			</div>

			<div class="col">
				<p>Date</p>
			</div>
		</div>

		<div class="flexbox">
			<div class="col">
				<textarea name="n_content" style="width:100%; height:150px; margin-top: 16px;" required></textarea>
			</div>

			<div class="col">
				<p>Content</p>
			</div>
		</div>
	</div>

	<div style = "margin: 90px; margin-bottom: 50px; padding: 2px; padding-bottom: 0px; background-color: #F5F5F5;">
		<h2>Image</h2>
		<hr></hr>
	</div>

	<div class = flexcontainer>
		<div class="flexbox">
			<div class="col">
				<input type="file" name="image" accept="image/*"  style = "padding-top: 30px; text-align: left;" required>
			</div>
		</div>

		<div class = "flexbox">
			<div class = "submit-container">
				<input type= "submit" value = "Submit" style = "margin-right: 10px;">
				<button><a href="admin-news-panel.jsp">Cancel</a></button>
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
					<li><a href="home.html">Home</a></li>
					<li><a href="staff.html">Staff</a></li>
					<li><a href="program-structure.html">Program Structure</a></li>
					<li><a href="student-activities.html">Student Activities</a></li>
					<li><a href ="about.html">About</a></li>
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
						<a href = "mailto: SWEstudentcouncil@outlook.com">
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
		Copyright © 2019 Information Technology Xiamen University Malaysia. All rights reserved.
	</div>
</footer>

</body>
</html>