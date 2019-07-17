<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="net.model.NewsBean" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="model_news" class="net.model.NewsAccess" />
<!DOCTYPE html>
<html>
<head>
	<title>Student Life</title>
	<link rel="stylesheet" type="text/css" href="student-activities.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
</head>
<body>
	<div class="navbarcont" style="height:auto;">
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
		
	</div>
	<div class="container">
		<div class="banner">
			<div class="category" id="highlight">
				<div class="leftcc" style="padding-left: 50px;">
					<strong>Highlights</strong>
				</div>
			</div>
			<div style="display:inline-flex;">
			<%
				String category = "highlight";
				List<NewsBean> model = model_news.get();
				int i =1;

				for(NewsBean bean: model)
				{
					if(bean.getCategory().equals(category))
					{

			%>
				<figure class="bignews" style="margin-bottom:3.33px">
					<!-- bignews -->
					<a href="news.jsp?nid=<%=bean.getIdnews()%>"><img src="<%=bean.getThumbnail()%>" class="image" style="width:400px; height:310px;"></a>
					<figcaption class="absolutecapt"><%=bean.getCaption()%></figcaption>
				</figure>
			<%
						break;
					}

				}
			%>
				<div style="display:inherit;">
					<!-- smallnews -->
					<div style="display:inline-block;">
					<%
						int cnt = 0;
						for(int j=i; j< model.size();j++)
						{
							i++;
							if(model.get(j).getCategory().equals(category))
							{
					%>
						<figure class="relativeimg" style="margin-bottom:10px;">
							<!-- topleft -->
							<a href="news.jsp?nid=<%=model.get(j).getIdnews()%>"><img src="<%=model.get(j).getThumbnail()%>" class="image" style="width:200px; height:150px;"></a>
							<figcaption class="absolutecapt"><%=model.get(j).getTitle()%></figcaption>
						</figure>
					<%
								cnt ++;

								if(cnt==1)
									break;
							}
						}
						for(int j=i; j< model.size();j++)
						{
							i++;
							if(model.get(j).getCategory().equals(category))
							{
					%>
						<figure class="relativeimg">
							<!-- bottomleft -->
							<a href="news.jsp?nid=<%=model.get(j).getIdnews()%>"><img src="<%=model.get(j).getThumbnail()%>" class="image" style="width:200px; height:150px;"></a>
							<figcaption class="absolutecapt"><%=model.get(j).getTitle()%></figcaption>
						</figure>
					<%
								cnt ++;

								if(cnt==2)
									break;
							}
						}
					%>

					</div>
					<div style="display:inline-block; margin-left:5px;">
						<%
							for(int j=i; j< model.size();j++)
							{
								i++;
								if(model.get(j).getCategory().equals(category))
								{
						%>
						<figure class="relativeimg" style="margin-bottom:10px;">
							<!-- topright -->
							<a href="news.jsp?nid=<%=model.get(j).getIdnews()%>"><img src="<%=model.get(j).getThumbnail()%>" class="image" style="width:200px; height:150px;"></a>
							<figcaption class="absolutecapt"><%=model.get(j).getTitle()%></figcaption>
						</figure>
						<%
									cnt ++;

									if(cnt==3)
										break;
								}
							}
							for(int j=i; j< model.size();j++)
							{
								i++;
								if(model.get(j).getCategory().equals(category))
								{
						%>
							<figure class="relativeimg">
								<!-- bottomright -->
								<a href="news.jsp?nid=<%=model.get(j).getIdnews()%>"><img src="<%=model.get(j).getThumbnail()%>" class="image" style="width:200px; height:150px;"></a>
								<figcaption class="absolutecapt"><%=model.get(j).getTitle()%></figcaption>
							</figure>
						<%
									cnt ++;
									if(cnt==4)
										break;
								}
							}
						%>
					</div>
				</div>
			</div>
		</div>

		<div class="content">
			<div class="contentcontainer">
				<div class="category">
					<div class="leftcc">
						<i class="fas fa-clock" style="font-size: 15px;"></i>
						<strong>RECENT</strong>
					</div>
					<div class="rightcc">
						<a href="morenews.jsp">More...</a>
					</div>
				</div>
				<div>
					<%
						List<NewsBean> model1 = model_news.get();

						for(NewsBean bean1: model1)
						{
					%>

					<div class="recentcontent">
						<button type="button" onclick="location.href='news.jsp?nid=<%=bean1.getIdnews()%>';">
							<div style="display:flex;">
								<!-- img -->
								<img src="<%=bean1.getThumbnail()%>" class="newsimg">
							</div>
							<div style="width:70%; display:flex;">
								<div style="padding:10px 0 0 20px;">
									<!-- title -->
									<b><%=bean1.getTitle()%></b>
									<div class="date">
										<!-- Date created -->
										<i class="fas fa-calendar-alt"></i>
										Date Created: <time datetime="2018-05-21"><%=bean1.getDatecreated()%></time>
									</div>
									<!-- content -->
									<p style="text-align:justify;"><%=bean1.getCaption()%></p>
								</div>
							</div>
						</button>
					</div>

					<%}%>
					<div class="showmore">
						<button type="button" onclick="location.href='morenews.jsp';">
								<b>Show more news</b>
						</button>
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
	

</body>
</html>