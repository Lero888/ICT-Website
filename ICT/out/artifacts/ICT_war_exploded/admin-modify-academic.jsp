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
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="header.css">
    <link rel="stylesheet" type="text/css" href="footer.css">
    <link rel="stylesheet" type="text/css" href="admin-background.css">
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
                <img src="images\logo.png" class="navbarlogo">
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

    %>

    <div style = "margin: 50px; text-align: center;">
        <h1>Staff Information</h1>
    </div>

    <div class = "flexcontainer">
        <div class="flexbox">

            <div class="col">
                <h2>Background and Expertise</h2>
                <hr></hr>

                <div class = "infocontainer">
                    <div class = "infobox">
                        <div class = "column" style = "margin-bottom: 15px; text-align: justify;">
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
                        </div>

                        <div class = "column">
                            <p>Educational Background</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-edu.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px">
                        <div class = "column" style = "margin-bottom: 15px;">
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
                        </div>

                        <div class = "column">
                            <p>Research Interest</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-research.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

                    <form action = "./ModifyAcademicServlet?sid=<%=request.getParameter("sid")%>" method = "post">
                        <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px">
                            <div class = "column" style = "margin-bottom: 15px; text-align: justify;">
                                <textarea style = "margin-top: 15px; width: 482px; height:202px;" name = "academic" required = "required"><%
                                    List<AcadExpBean> model4 = model_AcadExp.get();
                                    for(AcadExpBean bean4: model4)
                                    {
                                        if(bean4.getStaff_id().equals(sid))
                                        {
                                            out.println(bean4.getDescription());
                                        }
                                    }
                                %></textarea>

                                <br></br>
                                <button><a href="admin-background.jsp?sid=<%=sid%>" style = "color: #000000; text-decoration: none;">Cancel</a></button>
                            </div>

                            <div class = "column" style = "flex: 2;">
                                <p>Academic Experience</p>
                                <input type = "submit" value = "Save Changes" style = "margin-top: 190px;">
                            </div>
                        </div>
                    </form>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px; border-bottom: none;">
                        <div class = "column" style = "margin-bottom: 15px; padding-left: 0px">
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

                        <div class = "column">
                            <p>Representative Publications</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-representative.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>
                </div>
                <hr></hr>
            </div>

            <%
                List<StaffBean> model = model_staff.get();

                for(StaffBean bean: model)
                {

                    if(bean.getStaff_id().equals(sid))
                    {

            %>

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


