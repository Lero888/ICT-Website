<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.lang.String" %>
<%@ page import="net.model.NewsBean" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="model_news" class="net.model.NewsAccess" />
<%@ page import="net.model.NewsContentBean" %>
<%@ page import="java.util.Objects" %>
<jsp:useBean id="model_newsContent" class="net.model.NewsContentAccess" />
<!DOCTYPE html>
<html>
<head>
	<title>Student Life</title>
	<link rel="stylesheet" type="text/css" href="admin-modify-news.css">
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
	<form id="modifynews" method="post" action="./ModifyNewsServlet" enctype="multipart/form-data">
		<input type="hidden" name="nid" value="<%=request.getParameter("nid")%>">
		<div class="container">
			<div class="contentcontainer">
				<div class="titlecontainer">
					<%
						String nid = request.getParameter("nid");
						List<NewsBean> model = model_news.get();
						for(NewsBean bean: model)
						{
							if(bean.getIdnews().equals(nid))
							{
					%>
					<div style="margin-bottom:10px; width:100%;">
						<input type="text" name="title" value="<%=bean.getTitle()%>" style="width:100%;" title="Title" >
					</div>
					<div style="width:100%;">
						<input type="text" name="caption" value="<%=bean.getCaption()%>" style="width:100%;" title="Caption">
					</div>

					<div class="details">
						<div style="display:inline-flex; justify-content: space-between; width:100%;">
							<div class="datecreated">
								<i class="fas fa-clock" style="font-size: 15px; margin-right:5px;"></i>
								<input type="text" name="date" value="<%=bean.getDatecreated()%>" style="width:100%;" title="date">
							</div>
							<div style="display:flex;align-items:center;">
								<select name="category" required style=" height:20px;">
									<option value="" selected disabled hidden>Select one</option>
									<option value="Highlight">Highlight</option>
									<option value="Most Read">Most Read</option>
									<option value="Normal">Normal</option>
								</select>
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
					<img src="images/<%=bean.getThumbnail()%>" style="min-width:70%; min-height:300px; max-height: 500px;" title="<%=bean.getTitle()%>" >
				</div>
				<input type="file" name="image" accept="image/*">

				<div class="content">
					<textarea name="n_content" style="min-width:1063px; height:500px; margin-top:50px;" title="Content"><%
								List<NewsContentBean> model3 = model_newsContent.get();
								for(NewsContentBean bean3: model3)
								{
									boolean content= Objects.equals(bean3.getNid(), nid);

									if(content)
									{
										out.println(bean3.getContent().trim());
										out.println();
									}
								}
							}
						}
					%></textarea>
				</div>
				<div style = "flexbox">
					<div style="display:flex; justify-content:flex-end;">
						<input type= "submit" value = "Submit" style = "margin-right: 10px;">
						<button class="btn-cancel" onclick="location.href='admin-news-panel.jsp';">Cancel</button>
					</div>
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
