<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.lang.String" %>
<!DOCTYPE html>
<html>
<head>
	<title>Student Life</title>
	<link rel="stylesheet" type="text/css" href="news.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
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

	<div class="container">
		<div class="contentcontainer">
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
				String sql = "select idnews as nid, title as nt, content as nc, thumbnail as img, datecreated as date\n" +
						"from news\n" +
						"where idnews = " + request.getParameter("nid");
				ResultSet rs= stm.executeQuery(sql);
				if (rs.next()){
			%>
			<div class="titlecontainer">
				<h1><%=rs.getString("nt")%></h1>
				<div class="details">
					<div style="display:inline-flex; justify-content: space-between; width:100%;">
						<div class="datecreated">
							<i class="fas fa-clock" style="font-size: 15px; margin-right:5px;"></i>
							<time datetime="2018-05-21"><%=rs.getDate("date")%></time>
						</div>
						<div class="icon">
							<div id="fb">
								<i class="fab fa-facebook-f"></i>
							</div>
							<div id="wc">
								<i class="fab fa-weixin"></i>
							</div>
							<div id="share">
								<i class="fas fa-share-alt"></i>	
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="imgcontainer">
				<img src="<%=rs.getString("img")%>" style="min-width:100%; min-height:300px; max-height: 500px;">
			</div>
			<div class="content">
				<p><%=rs.getString("nc")%></p>
			</div>
			<% } %>
		</div>
		<div style="display:flex; flex-direction: column; width:20%; margin-left: 20px">
			<div class="sidecontainer">
				<div class="sidetitle">
					Latest News
				</div>
				<div class="sidecontent">
					<%
						Class.forName("com.mysql.jdbc.Driver");
						stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
						sql = "select idnews as nid, title as nt, content as nc, thumbnail as img, datecreated as date\n" +
								"from news\n" +
								"where category='highlight'" +
								"order by datecreated DESC";
						rs= stm.executeQuery(sql);
						if(rs.next())
						{
					%>
					<div class="story">
						<div class="sidect">
							<a href="news.jsp?nid=<%=rs.getInt("nid")%>"><b><%=rs.getString("nt")%></b></a>
						</div>
						<div class="sidecc">
							<div class="datecreated" id="sidedate">
								<i class="fas fa-clock" style="margin-right:5px;"></i>
								<time datetime="2018-05-21"><%=rs.getString("date")%></time>
							</div>
						</div>
					</div>
					<% }if(rs.next()){ %>
					<div class="story">
						<div class="sidect">
							<a href="news.jsp?nid=<%=rs.getInt("nid")%>"><b><%=rs.getString("nt")%></b></a>
						</div>
						<div class="sidecc">
							<div class="datecreated" id="sidedate">
								<i class="fas fa-clock" style="margin-right:5px;"></i>
								<time datetime="2018-05-21"><%=rs.getString("date")%></time>
							</div>
						</div>
					</div>
					<% }if(rs.next()){ %>
					<div class="story">
						<div class="sidect">
							<a href="news.jsp?nid=<%=rs.getInt("nid")%>"><b><%=rs.getString("nt")%></b></a>
						</div>
						<div class="sidecc">
							<div class="datecreated" id="sidedate">
								<i class="fas fa-clock" style="margin-right:5px;"></i>
								<time datetime="2018-05-21"><%=rs.getString("date")%></time>
							</div>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>

			<div class="mostreadtitle">
					Most Read
				</div>
				<div class="mostreadcontent">
					<a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing</a>
					<div class="ranking">
						1
					</div>
				</div>
				<div class="mostreadcontent">
					<a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing</a>
					<div class="ranking">
						2
					</div>
				</div>
				<div class="mostreadcontent">
					<a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing</a>
					<div class="ranking">
						3
					</div>
				</div>
				<div class="mostreadcontent">
					<a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing</a>
					<div class="ranking">
						4
					</div>
				</div>
				<div class="mostreadcontent">
					<a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing</a>
					<div class="ranking">
						5
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
			Copyright © 2019 Information Technology Xiamen University Malaysia. All rights reserved.
		</div>
	</footer>

	</div>

	
	
</body>
</html>
