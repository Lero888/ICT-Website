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
			<div><a href="../../../Documents/GitHub/ICT-Website/home.html">
				<img src="images/logo.png" class="navbarlogo">
			</a></div>	
			<div class="navigationlist">
				<div id="nav_item"><a href="../../../Documents/GitHub/ICT-Website/home.html">Home</a></div>
				<div id="nav_item"><a href="staff.jsp">Staff</a></div>
				<div id="nav_item"><a href="../../../Documents/GitHub/ICT-Website/Program%20Structure.html">Program Structure</a></div>
				<div id="nav_item"><a href="../../../Documents/GitHub/ICT-Website/studentactivities.html">Student Activities</a></div>
				<div id="nav_item"><a href="../../../Documents/GitHub/ICT-Website/about.html">About</a></div>
			</div>	
		</div>
	</div>
	
	<div class="banner_body">

		<div class="staff_container">

			<div><h2>Staff Directory</h2></div>


			<div class="staff_dir">


				<%
					Class.forName("com.mysql.jdbc.Driver");
					Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "1234").createStatement();
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


		<footer="footer">
		<section class="footer">
			


	        <div class="footerrow">
	            <div class="footercolumn">
	                <h3>EXPLORE</h3>
	                <u1 style = "list-style-type: none;" class="text-white">
	                    <li><a href="../../../Documents/GitHub/ICT-Website/home.html">Home</a></li>
	                    <li><a href="staff.jsp">Staff</a></li>
	                    <li><a href="../../../Documents/GitHub/ICT-Website/Program%20Structure.html">Program Structure</a></li>
	                    <li><a href="../../../Documents/GitHub/ICT-Website/studentactivities.html">Student Activities</a></li>
	                    <li><a href="../../../Documents/GitHub/ICT-Website/about.html">About</a></li>
	                </ul> 
	            </div>

	            <div class="footercolumn">
	                <h3>QUICK LINK</h3>
	                <u1 style = "list-style-type: none;" class="text-white">
	                    <li><a href="http://www.xmu.edu.my/">Xiamen University Malaysia</a></li>
	                    <li><a href="https://linc.xmu.edu.my/">Library</a></li>
	                </ul>
	            </div>

	            <div class="footercolumn">
	                <h3>OFFICE ADDRESS</h3>
	                <u1 style = "list-style-type: none;" class="text-white">
	                	<li>XIAMEN UNIVERSITY MALAYSIA</li>
	                    <li>10, Jalan Sunsuria, Bandar Sunsuria, 43900 Sepang, Selangor Darul Ehsan, Malaysia.</li>
	                </ul>
	            </div>

	            <div class="footercolumn">
	                <h3>CONTACT US</h3>
	                <u1 style = "list-style-type: none;" class="text-white">
	                    <li>
							<img src = "images/facebook.png">
							<img src = "images/twitter.png">
							<img src = "images/google_plusone_share.png">
							<img src = "images/sinaweibo.png">
							<img src = "images/addthis.png">
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
