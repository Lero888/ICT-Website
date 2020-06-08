<%@ page import="java.util.List" %>
<%@ page import="net.model.StaffBean" %>
<jsp:useBean id="model_staff" class="net.model.StaffAccess" />
<%
	List<StaffBean> model = model_staff.get();
	int sid=0;
	String temp = "";
	int temp2 = 0;
	boolean inc = true;

	for(int i=1;i<=model.size();i++)
	{
		sid=i;
		temp = model.get(i-1).getStaff_id();
		temp2 = Integer.parseInt(temp);
		if( temp2!=(sid)  )
		{
			inc = false;
			break;
		}
	}

	if(inc == true)
	{
		sid = sid + 1;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="admin-add-new-staff.css">
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

	<div style = "margin: 50px; text-align: left;">
		<h1 style = "text-align: center;">Add A Staff</h1>
	</div>
	
	<div style = "margin: 90px; margin-bottom: 50px; padding: 2px; padding-bottom: 0px; background-color: #F5F5F5;">
		<h2>Personal Info</h2>
		<hr></hr>
	</div>

	<form action = "./AddStaffServlet" method = "post" enctype="multipart/form-data">
		<input type="hidden" name="sid" value="<%=sid%>"/>
		<div class = "flexcontainer">
			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
					<input type="text" name="name" placeholder="Full name" style = "width: 299px;" required>
		  		</div>
		  		
		  		<div class="col">
		  			<p>Name</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
					<input type="text" name="position" placeholder="Position" style = "width: 299px;" required>
		  		</div>
		  		
		  		<div class="col">
		  			<p>Position</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
	  				<select name="school" required>
						<option value="" selected disabled hidden>Select one</option>
	  					<option value="School of Energy and Chemical Engineering">School of Energy and Chemical Engineering</option>
	  					<option value="School of Information Science and Technology">School of Information Science and Technology</option>
	  					<option value="School of Ocean and Environment">School of Ocean and Environment</option>
	  				</select>
		  		</div>
		  		
		  		<div class="col">
		  			<p>School</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
		  			<input type="text" name="tel" placeholder="XXX-XXXXXXX" style = "width: 299px;" required>
		  		</div>
		  		
		  		<div class="col">
		  			<p>Tel</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "margin-top: 16px;">
					<input type="email" name="email" placeholder="Email" style = "width: 299px;" required>
		  		</div>
		  		
		  		<div class="col">
		  			<p>Email</p>
		  		</div>
			</div>
		</div>

		<div style = "margin: 90px; margin-bottom: 50px; padding: 2px; padding-bottom: 0px; background-color: #F5F5F5;">
			<h2>Background and Expertise</h2>
			<hr></hr>
		</div>

		<div class = "flexcontainer">
			<div class="flexbox">
		  		<div class="col" style = "flex: 8;">
		  			<textarea name="Educational-Background" required></textarea>
		  		</div>
		  		
		  		<div class="col" style = "flex: 2; min-width: 178.41px;">
		  			<p>Educational Background</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col" style = "flex: 8;">
		  			<textarea name="Research-Interest" required></textarea>
		  		</div>
		  		
		  		<div class="col"  style = "flex: 2; min-width: 178.41px;">
		  			<p>Research Interest</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col"  style = "flex: 8;">
		  			<textarea name="Academic-Experience" required></textarea>
		  		</div>
		  		
		  		<div class="col" style = "flex: 2; min-width: 178.41px;">
		  			<p>Academic Experience</p>
		  		</div>
			</div>

			<div class="flexbox">
		  		<div class="col"  style = "flex: 8;">
		  			<textarea name="Representative-Publications" required></textarea>
		  		</div>
		  		
		  		<div class="col" style = "flex: 2; min-width: 178.41px;">
		  			<p>Representative Publications</p>
		  		</div>
			</div>
		</div>

		<div style = "margin: 90px; margin-bottom: 50px; padding: 2px; padding-bottom: 0px; background-color: #F5F5F5;">
			<h2>Image</h2>
			<hr></hr>
		</div>

		<div class = "flexcontainer">
			<div class="flexbox">
		  		<div class="col">
		  			<div style = "padding-top: 30px; text-align: left;">
	  					<input type="file" name="image" accept="image/*">
					</div>
		  		</div>
		  	</div>

		  	<div class = "flexbox">
		  		<div class = "submit-container">
		  			<input type= "submit" value = "Submit" style = "margin-right: 10px;">
	  				<button><a href="admin-staff-panel.jsp">Cancel</a></button>
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

