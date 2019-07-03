<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="admin-personalinfo.css">

	<style>
		.image-with-tag {float:none; margin:0 auto 10px; display:block; width:400px; padding-bottom:35%;}
    </style>
</head>

<body>

	<div class="navbarcont">
		<div class="navbarcont2">
			<div><a href="home.jsp">
				<img src="../images/logo.png" class="navbarlogo">
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
	  			<h2>Personal Info</h2>
	  			<hr></hr>

	  			<div class = "infocontainer">
	  				<div class = "infobox">
	  					<div class = "column">
							<%=rs.getString("name")%>
	  					</div>

	  					<div class = "column">
	  						<p>Name</p>
	  					</div>

	  					<div class = "column">
	  						<p><a href = "name-modify.jsp">Edit</a></p>
	  					</div>
	  				</div>

	  				<div class = "infobox" style = "padding-top: 0px;">
	  					<div class = "column">
							<%=rs.getString("pos")%>
	  					</div>

	  					<div class = "column">
	  						<p>Position</p>
	  					</div>

	  					<div class = "column">
	  						<p><a href = "position-modify.jsp">Edit</a></p>
	  					</div>
	  				</div>

	  				<div class = "infobox" style = "padding-top: 0px;">
	  					<div class = "column">
							<%=rs.getString("sch")%>
	  					</div>

	  					<div class = "column">
	  						<p>School</p>
	  					</div>

	  					<div class = "column">
	  						<p><a href = "school-modify.jsp">Edit</a></p>
	  					</div>
	  				</div>

	  				<div class = "infobox" style = "padding-top: 0px;">
	  					<div class = "column">
							<%=rs.getString("tel")%>
	  					</div>

	  					<div class = "column">
	  						<p>Tel</p>
	  					</div>

	  					<div class = "column">
	  						<p><a href = " ">Edit</a></p>
	  					</div>
	  				</div>

	  				<div class = "infobox" style = "padding-top: 0px; border-bottom: none;">
	  					<div class = "column">
							<%=rs.getString("email")%>
	  					</div>

	  					<div class = "column">
	  						<p>Email</p>
	  					</div>

	  					<div class = "column">
	  						<p><a href = "">Edit</a></p>
	  					</div>
	  				</div>
	  			</div>
	  			<hr></hr>
	  		</div>
	  		
	  		<div class="col">
				<img src="images/<%=rs.getString("image")%>">
	  			<p>Name</p>

	  			<div class = "title-box">
	  				<div class = "hover">
	  					<h3><a href = "admin-personalinfo.jsp">Personal Info</a></h3>
	  				</div>
	  			</div>

	  			<div class = "title-box">
	  				<div class = "hover">
	  					<h3><a href = "admin-image.jsp">Image</a></h3>
	  				</div>	
	  			</div>

	  			<div class = "title-box">
	  				<div class = "hover">
	  					<h3><a href = "admin-background.jsp">Background and Expertise</a></h3>
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
								<img src = "../images/facebook.png">
							</a>
							<a href = "mailto: SWEstudentunion@outlook.com">
								<img src = "../images/mail.png">
							</a>
							<a href = "https://xmux.xdea.top/">
								<img src = "../images/xmux.jpg">
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

