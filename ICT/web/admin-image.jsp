<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="net.model.StaffBean" %>
<jsp:useBean id="model_staff" class="net.model.StaffAccess" />

<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="admin-image.css">
	<link rel="stylesheet" type="text/css" href="back-to-top-button.css">
	<script type=text/javascript src="back-to-top-button.js"></script>

	<style>
		.image-with-tag {float:none; margin:0 auto 10px; display:block; width:400px; padding-bottom:35%;}
	</style>
</head>

<body>
<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader ("Expires", 0);

	if(session.getAttribute("username")==null || session == null)
		response.sendRedirect("admin-login.jsp");
%>
	<div class="navbarcont">
		<div class="navbarcont2">
			<div><a href="home.jsp">
				<img src="images/logo.png" class="navbarlogo">
			</a></div>
			<div class="logout">
				<div style="padding-right:10px; color:white;"><%=session.getAttribute("username")%></div>
				<a href="./AdminLogoutServlet" id ="log">Logout</a>
			</div>
		</div>
	</div>

	<button onclick="topFunction()" id="myBtn" title="Go to top">&#8593;</button>

	<%
		String sid = request.getParameter("sid");
		List<StaffBean> model = model_staff.get();
		int staff_id = Integer.parseInt(sid);
		int size = model.size();
		int previous;
		int next;
		if((staff_id-1)==0)
		{
			previous = size;
			next = staff_id + 1;
		}
		else if((staff_id + 1)>size)
		{
			next=1;
			previous = staff_id - 1;
		}
		else
		{
			previous = staff_id - 1;
			next = staff_id + 1;
		}

		for(StaffBean bean: model)
		{

			if(bean.getStaff_id().equals(sid))
			{

	%>

	<div class = "header1" style = "display: inline-flex; justify-content:center">
		<div class = "navigation_arrow"><a href="admin-image.jsp?sid=<%=previous%>"> <b>&#10094;</b> </a></div>
		<div style="padding:0 18px 0 20px;"><h1>Staff Information</h1></div>
		<div class = "navigation_arrow"><a href="admin-image.jsp?sid=<%=next%>"> <b>&#10095;</b> </a></div>
	</div>

	<div class = "back_to_staff_panel">
		<p style="text-align:center;"><a href = "admin-staff-panel.jsp">Back to Staff Panel</a></p>
	</div>

	<div class = "flexcontainer">
		<div class="flexbox">
			<div class="col">
				<h2>Image</h2>
				<hr></hr>

				<form style = "padding-top: 30px; text-align: center;" action="./ModifyImageServlet?sid=<%=request.getParameter("sid")%>" method="post" enctype="multipart/form-data">
					<input name="image" type="file" accept="image/*">
					<br></br>
					<div style = "text-align: left">
						<input type= "submit" value = "Save Changes" style = "margin-top: 50px; margin-right: 25px">
						<button><a href="admin-image.jsp?sid=<%=sid%>">Cancel</a></button>
					</div>
				</form>
			</div>

			<div class="col">
				<img src="images/<%=bean.getImage()%>">
				<h3><%=bean.getStaff_name()%></h3>


				<a href = "admin-personal-info.jsp?sid=<%=sid%>">
					<div class = "title-box">
						<div class = "hover">
							<h3>Personal Info</h3>
						</div>
					</div>
				</a>

				<a href = "admin-image.jsp?sid=<%=sid%>">
					<div class = "title-box">
						<div class = "hover">
							<h3>Image</h3>
						</div>
					</div>
				</a>

				<a href = "admin-background.jsp?sid=<%=sid%>">
					<div class = "title-box">
						<div class = "hover">
							<h3>Background and Expertise</h3>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<%
				break;
			}
		}
	%>


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

