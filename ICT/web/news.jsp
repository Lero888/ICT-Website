<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.lang.String" %>
<%@ page import="net.model.NewsBean" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="model_news" class="net.model.NewsAccess" />
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
				String nid = request.getParameter("nid");
				List<NewsBean> model = model_news.get();

				for(NewsBean bean: model)
				{
					if(bean.getIdnews().equals(nid))
					{

			%>
			<div class="titlecontainer">
				<h1><%=bean.getTitle()%></h1>
				<div class="details">
					<div style="display:inline-flex; justify-content: space-between; width:100%;">
						<div class="datecreated">
							<i class="fas fa-clock" style="font-size: 15px; margin-right:5px;"></i>
							<time datetime="2018-05-21"><%=bean.getDatecreated()%></time>
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
				<img src="<%=bean.getThumbnail()%>" style="min-width:100%; min-height:300px; max-height: 500px;">
			</div>
			<div class="content">
				<p><%=bean.getContent()%></p>
			</div>
			<%
					}
				}
			%>
		</div>
		<div style="display:flex; flex-direction: column; width:20%; margin-left: 20px">
			<div class="sidecontainer">
				<div class="sidetitle">
					Latest News
				</div>
				<div class="sidecontent">
					<%
						String category = "highlight";
						List <NewsBean> model1 = model_news.get();

						for(NewsBean bean1: model1)
						{
							if (bean1.getCategory().equals(category))
							{
					%>
					<div class="story">
						<div class="sidect">
							<a href="news.jsp?nid=<%=bean1.getIdnews()%>"><b><%=bean1.getTitle()%></b></a>
						</div>
						<div class="sidecc">
							<div class="datecreated" id="sidedate">
								<i class="fas fa-clock" style="margin-right:5px;"></i>
								<time datetime="2018-05-21"><%=bean1.getDatecreated()%></time>
							</div>
						</div>
					</div>


					<%
							}
						}
					%>
				</div>
			</div>

			<div class="mostreadtitle">
				Most Read
			</div>
			<%
				category = "mostread";
				List <NewsBean> model2 = model_news.get();
				for (NewsBean bean2:model2){
					if (bean2.getCategory().equals(category)){
			%>
				<div class="mostreadcontent">
					<a href="news.jsp?nid=<%=bean2.getIdnews()%>"><%=bean2.getTitle()%></a>
					<div class="ranking">
						1
					</div>
				</div>
				<div class="mostreadcontent">
					<a href="news.jsp?nid=<%=bean2.getIdnews()%>"><%=bean2.getTitle()%></a>
					<div class="ranking">
						2
					</div>
				</div>
				<div class="mostreadcontent">
					<a href="news.jsp?nid=<%=bean2.getIdnews()%>"><%=bean2.getTitle()%></a>
					<div class="ranking">
						3
					</div>
				</div>
				<div class="mostreadcontent">
					<a href="news.jsp?nid=<%=bean2.getIdnews()%>"><%=bean2.getTitle()%></a>
					<div class="ranking">
						4
					</div>
				</div>
				<div class="mostreadcontent">
					<a href="news.jsp?nid=<%=bean2.getIdnews()%>"><%=bean2.getTitle()%></a>
					<div class="ranking">
						5
					</div>
				</div>
			<%
					}
				}
			%>
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
