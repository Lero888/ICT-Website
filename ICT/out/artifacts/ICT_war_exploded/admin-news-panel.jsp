<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="net.model.NewsBean" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="model_news" class="net.model.NewsAccess" />


<!DOCTYPE html>
<html>
<head>
	<title>Admin-News-Panel</title>
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="panel.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="back-to-top-button.css">
	<script type=text/javascript src="back-to-top-button.js"></script>
<%--	<script type=text/javascript src="confirmation.js"></script>--%>
</head>
<body>
<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader ("Expires", 0);

	if(session.getAttribute("admin_id")==null)
		response.sendRedirect("admin-login.jsp");

%>
	<div class="navbarcont">
		<div class="navbarcont2">
			<div><a href="home.jsp">
				<img src="images/logo.png" alt="news" class="navbarlogo">
			</a></div>
			<div class="logout">
				<div style="padding-right:10px; color:white;"><%=session.getAttribute("username")%></div>
				<a href="./AdminLogoutServlet" id ="log">Logout</a>
			</div>
		</div>
	</div>

	<button onclick="topFunction()" id="myBtn" title="Go to top">&#8593;</button>

	<div class="header1">
		<div class="navigation_arrow"> <a href="admin-staff-panel.jsp"> <b>&#10094;</b> </a> </div>
		<div><h1>News Management Panel</h1></div>
		<div class="navigation_arrow"> <a href="admin-staff-panel.jsp"> <b>&#10095;</b> </a> </div>
	</div>

	<div class="container">

		<%
			List<NewsBean> model = model_news.get();

			for(NewsBean bean: model)
			{
		%>

		<div onclick="window.location.href='admin-modify-news.jsp?nid=<%=bean.getIdnews()%>'" class="item">

			<div class="left">
				<div class="image-container"><img src="images/<%=bean.getThumbnail()%>" alt="news"></div>

				<div class="info">
					<h3><%=bean.getTitle()%></h3>
					<div class="date">
						<!-- Date created -->
						<i class="fas fa-calendar-alt"></i>
						Date Created: <time datetime="2018-05-21"><%=bean.getDatecreated()%></time>
					</div>
				</div>
			</div>

			<div class="delete"><a href="./DeleteNewsServlet?nid=<%=bean.getIdnews()%>" onclick="return sure();"><img src="images/delete.png" alt="delete"></a></div>
		</div>

		<%
			}
		%>

		<a href="admin-add-news.jsp"><div class="new"><img src="images/add.png" alt="add"><p style="color:black;">Add News</p></div></a>

	</div>


	<!-- Footer section -->
	<footer>
		<section class="footer">

			<div class="footer-container">
				<div class="footer-column">
					<h3>EXPLORE</h3>
					<ul class="text-white">
						<li><a href="home.jsp">Home</a></li>
						<li><a href="staff.jsp">Staff</a></li>
						<li><a href="program-structure.jsp">Program Structure</a></li>
						<li><a href="student-activities.jsp">Student Activities</a></li>
						<li><a href ="about.jsp">About</a></li>
					</ul>
				</div>

				<div class="footer-column">
					<h3>QUICK LINK</h3>
					<ul class="text-white">
						<li><a href="http://www.xmu.edu.my/" target="_blank" rel="noopener">Xiamen University Malaysia</a></li>
						<li><a href="https://linc.xmu.edu.my/" target="_blank" rel="noopener">Library</a></li>
					</ul>
				</div>

				<div class="footer-column">
					<h3>OFFICE ADDRESS</h3>
					<ul class="text-white">
						<li>Xiamen University Malaysia</li>
						<li>10, Jalan Sunsuria,</li>
						<li>Bandar Sunsuria,</li>
						<li>43900 Sepang,</li>
						<li>Selangor Darul Ehsan, Malaysia.</li>
					</ul>
				</div>

				<div class="footer-column">
					<h3>CONTACT US</h3>
					<ul class="text-white">
						<li>
							<a href = "https://www.facebook.com/SWEstudentunion/?ref=br_rs" target="_blank" rel="noopener">
								<img src = "images\facebook.png" alt = "facebook">
							</a>
							<a href = "mailto: swestudentcouncil@outlook.com">
								<img src = "images\mail.png" alt = "mail">
							</a>
							<a href = "https://xmux.xdea.top/" target="_blank" rel="noopener">
								<img src = "images\xmux.jpg" alt = "xmux">
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