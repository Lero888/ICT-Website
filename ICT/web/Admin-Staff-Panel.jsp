<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
	<title>Admin-Staff-Panel</title>
	<link rel="stylesheet" type="text/css" href="Panel.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="header.css">
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


	<h1>Staff Management Panel</h1>

	<div class="table-container">
		<table cellpadding="10">
			<tr class="title-row">
				<td class = "c1"><b>No</b></td>
				<td class = "c2"><b>Staff Name</b></td>
				<td class = "c3"><b>Operation</b></td>
			</tr>

			<%
				Class.forName("com.mysql.jdbc.Driver");
				Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
				String sql = "select staff_id as sid, staff_name as name, image as image\n" +
						"from staff";
				ResultSet rs= stm.executeQuery(sql);

				int cnt = 1;
				while(rs.next())
				{
					if(cnt%2!=0)
					{
			%>

			<tr class="row-color1">
				<td class = "c1"><%=cnt%></td>
				<td class = "c2"><%=rs.getString("name")%></td>
				<td class = "c3">[del]</td>
			</tr>


			<%
					}
					else
					{
			%>

			<tr class="row-color2">
				<td class = "c1"><%=cnt%></td>
				<td class = "c2"><%=rs.getString("name")%></td>
				<td class = "c3">[del]</td>
			</tr>

			<%
					}
				cnt++;
				}
			%>
		</table>
		<div class="new"><img src="images\add.png"> Add New Staff</div>

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


</body>
</html>