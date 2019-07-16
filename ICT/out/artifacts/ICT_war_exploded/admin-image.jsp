<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="admin-image.css">

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

	<%
		String sid = request.getParameter("sid");
		Class.forName("com.mysql.jdbc.Driver");
		Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
		String sql = "select staff.staff_name as name, staff.image as image, staff.position as pos, staff.school as sch, staff.tel as tel, staff.email as email\n" +
				"from staff\n" +
				"where staff_id = '"+ sid +"'";
		System.out.println(sql);
		ResultSet rs = stm.executeQuery(sql);
		rs.next();

	%>

	<div style = "margin: 50px; text-align: center;">
		<h1>Staff Information</h1>
	</div>

	<div class = "flexcontainer">
		<div class="flexbox">
			<div class="col">
				<h2>Image</h2>
				<hr></hr>

				<form style = "padding-top: 30px; text-align: center;" action="./StaffImageServlet?sid=<%=request.getParameter("sid")%>" method="post" enctype="multipart/form-data">
					<input name="image" type="file" accept="image/*">
					<br></br>
					<div style = "text-align: left">
						<input type= "submit" value = "Save Changes" style = "margin-top: 50px; margin-right: 25px">
						<button><a href="admin-image.jsp?sid=<%=sid%>">Cancel</a></button>
					</div>
				</form>
			</div>

			<div class="col">
				<img src="images/<%=rs.getString("image")%>">
				<h3><%=rs.getString("name")%></h3>


				<div class = "title-box">
					<div class = "hover">
						<h3><a href = "admin-personalinfo.jsp?sid=<%=sid%>">Personal Info</a></h3>
					</div>
				</div>

				<div class = "title-box">
					<div class = "hover">
						<h3><a href = "admin-image.jsp?sid=<%=sid%>">Image</a></h3>
					</div>
				</div>

				<div class = "title-box">
					<div class = "hover">
						<h3><a href = "admin-background.jsp?sid=<%=sid%>">Background and Expertise</a></h3>
					</div>
				</div>
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

