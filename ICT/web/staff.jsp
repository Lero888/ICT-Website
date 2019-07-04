<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
	<title>Staff</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="staff.css">
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
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
	
	<div class="banner_body">

		<div class="staff_container">

			<div><h2>Staff Directory</h2></div>


			<div class="staff_dir">


				<%
					Class.forName("com.mysql.jdbc.Driver");
					Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
					String sql = "select staff_id as sid, staff_name as name, image as image\n" +
							"from staff";
					ResultSet rs= stm.executeQuery(sql);
					while(rs.next())
					{
				%>

				<div class="card_container">
					<a href="staff_info.jsp?sid=<%=rs.getInt("sid")%>">
						<div class="card">
							<img src="images/<%=rs.getString("image")%>">
							<h4><strong><%=rs.getString("name")%></strong></h4>
						</div>
					</a>
				</div>

				<%
					}
				%>

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
									<img src = "images/facebook.png">
								</a>
								<a href = "mailto: SWEstudentunion@outlook.com">
									<img src = "images/mail.png">
								</a>
								<a href = "https://xmux.xdea.top/">
									<img src = "images/xmux.jpg">
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

	</div>

	
	
</body>
</html>
