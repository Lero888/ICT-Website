<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
	<title>Staff Infomation</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="staff_info.css">
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



	<div class="banner_body">
		<div class="content">
			<div class="top_logo_info_container">
				<div class="logo_container">
					<img src="images/<%=rs.getString("image")%>">
				</div>

				<div>
					<div class="staff_name"><%=rs.getString("name")%></div>

					<div class="info_container">
						<table>	
							<tr>
								<td>Position: </td>
								<td class="c2"><%=rs.getString("pos")%></td>
							</tr>
							<tr>
								<td>Programme: </td>
								<td class="c2"><%=rs.getString("sch")%></td>
							</tr>
							<tr>
								<td>Tel: </td>
								<td class="c2"><%=rs.getString("tel")%></td>
							</tr>
							<tr>
								<td>Email: </td>
								<td class="c2"><%=rs.getString("email")%></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<div>
				<h2>educational background</h2>
				<ul>
					<%
						Statement stm2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
						String sql2 = "select edu_bg.description as description\n" +
								"from staff, edu_bg\n" +
								"where staff.staff_id = edu_bg.staff_id and staff.staff_id = '"+ sid +"' ";
						System.out.println(sql2);
						ResultSet rs2 = stm.executeQuery(sql2);
						while(rs2.next())
						{
					%>

					<li><%=rs2.getString("description")%></li>

					<%
						}
					%>
				</ul>

				<h2>RESEARCH INTERESTS</h2>
				<ul>
					<%
						Statement stm3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
						String sql3 = "select r_interest.description as description\n" +
								"from staff, r_interest\n" +
								"where staff.staff_id = r_interest.staff_id and staff.staff_id = '"+ sid +"'";
						System.out.println(sql3);
						ResultSet rs3 = stm.executeQuery(sql3);
						while(rs3.next())
						{
					%>

					<li><%=rs3.getString("description")%></li>

					<%
						}
					%>
				</ul>

				<h2>ACADEMIC EXPERIENCE</h2>
				<ul>
					<%
						Statement stm4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
						String sql4 = "select acad_exp.description as description\n" +
								"from staff, acad_exp\n" +
								"where staff.staff_id = acad_exp.staff_id and staff.staff_id = '"+ sid +"'";
						System.out.println(sql4);
						ResultSet rs4 = stm.executeQuery(sql4);
						while(rs4.next())
						{
					%>

					<li><%=rs4.getString("description")%></li>

					<%
						}
					%>
				</ul>

				<h2>REPRESENTATIVE PUBLICATIONS</h2>
				<ul>
					<%
						Statement stm5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
						String sql5 = "select rep_pub.description as description\n" +
								"from staff, rep_pub\n" +
								"where staff.staff_id = rep_pub.staff_id and staff.staff_id = '"+ sid +"'";
						System.out.println(sql5);
						ResultSet rs5 = stm.executeQuery(sql5);
						while(rs5.next())
						{
					%>

					<li><%=rs5.getString("description")%></li>

					<%
						}
					%>
				</ul>

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