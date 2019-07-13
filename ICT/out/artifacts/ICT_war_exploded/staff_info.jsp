<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="net.model.StaffBean" %>
<jsp:useBean id="model_staff" class="net.model.StaffAccess" />
<%@ page import="net.model.AcadExpBean" %>
<jsp:useBean id="model_AcadExp" class="net.model.AcadExpAccess" />
<%@ page import="net.model.EduBgBean" %>
<jsp:useBean id="model_EduBg" class="net.model.EduBgAccess" />
<%@ page import="net.model.ResIntBean" %>
<jsp:useBean id="model_ResInt" class="net.model.ResIntAccess" />
<%@ page import="net.model.RepPubBean" %>
<jsp:useBean id="model_RepPub" class="net.model.RepPubAccess" />

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
		List<StaffBean> model = model_staff.get();

		for(StaffBean bean: model)
		{

			if(bean.getStaff_id().equals(sid))
			{

	%>



	<div class="banner_body">
		<div class="content">
			<div class="top_logo_info_container">
				<div class="logo_container">
					<img src="images/<%=bean.getImage()%>">
				</div>

				<div>
					<div class="staff_name"><%=bean.getStaff_name()%></div>

					<div class="info_container">
						<table>	
							<tr>
								<td>Position: </td>
								<td class="c2"><%=bean.getPosition()%></td>
							</tr>
							<tr>
								<td>School: </td>
								<td class="c2"><%=bean.getSchool()%></td>
							</tr>
							<tr>
								<td>Tel: </td>
								<td class="c2"><%=bean.getTel()%></td>
							</tr>
							<tr>
								<td>Email: </td>
								<td class="c2"><%=bean.getEmail()%></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

	<%
				break;
			}
		}
	%>

			<div>
				<h2>educational background</h2>
				<ul>

					<%
						List<EduBgBean> model2 = model_EduBg.get();

						for(EduBgBean bean2: model2)
						{
							if(bean2.getStaff_id().equals(sid))
							{

					%>

					<li><%=bean2.getDescription()%></li>

					<%
							}
						}
					%>
				</ul>

				<h2>RESEARCH INTERESTS</h2>
				<ul>

					<%
						List<ResIntBean> model3 = model_ResInt.get();

						for(ResIntBean bean3: model3)
						{
							if(bean3.getStaff_id().equals(sid))
							{

					%>


					<li><%=bean3.getDescription()%></li>

					<%

							}
						}
					%>
				</ul>

				<h2>ACADEMIC EXPERIENCE</h2>
				<ul>

					<%
						List<AcadExpBean> model4 = model_AcadExp.get();


						for(AcadExpBean bean4: model4)
						{
							if(bean4.getStaff_id().equals(sid))
							{

					%>

					<li><%=bean4.getDescription()%></li>

					<%
							}
						}
					%>
				</ul>

				<h2>REPRESENTATIVE PUBLICATIONS</h2>
				<ul>

					<%
						List<RepPubBean> model5 = model_RepPub.get();


						for(RepPubBean bean5: model5)
						{
							if(bean5.getStaff_id().equals(sid))
							{

					%>

					<li><%=bean5.getDescription()%></li>

					<%
							}
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