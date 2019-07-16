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

    <style>
        .image-with-tag {float:none; margin:0 auto 10px; display:block; width:400px; padding-bottom:35%;}
    </style>
</head>

<body>

    <div class="navbarcont">
        <div class="navbarcont2">
            <div><a href="home.jsp">
                <img src="images\logo.png" class="navbarlogo">
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
                            <form action = "">
                                <textarea style = "margin-top: 15px; width: 482px; height:202px;" name = "educational">
                                        <%
                                            List<EduBgBean> model2 = model_EduBg.get();

                                            for(EduBgBean bean2: model2)
                                            {
                                                if(bean2.getStaff_id().equals(sid))
                                                {

                                        %>

<%=bean2.getDescription()%>

                                    <%
                                            }
                                        }
                                    %>

                                </textarea> <br></br>
                                <button><a href="admin-personalinfo.jsp?sid=<%=sid%>" style = "color: #000000; text-decoration: none;">Cancel</a></button>
                        </div>

                        <div class = "column" style = "flex: 2;">
                            <p>Educational Background</p>
                            <input type = "submit" value = "Save Changes" style = "margin-top: 155px;">
                            </form>
                        </div>
                    </div>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px">
                        <div class = "column" style = "margin-bottom: 15px;">
                            <ul>

                                <%
                                    List<EduBgBean> model3 = model_EduBg.get();

                                    for(EduBgBean bean3: model3)
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

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px">
                        <div class = "column" style = "margin-bottom: 15px; text-align: justify;">
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
                        </div>

                        <div class = "column">
                            <p>Academic Experience</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-academic.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

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

                <div class = "title-box">
                    <div class = "hover">
                        <h3><a href = "admin-personalinfo.jsp?sid=<%=sid%>">Personal Info</a></h3>
                    </div>
                </div>

                <div class = "title-box">
                    <div class = "hover">
                        <h3><a href = "admin-image.jsp?sid=<%=sid%>">Image</a></h3>
                    </div>
                </div>

                <div class = "title-box">
                    <div class = "hover">
                        <h3><a href = "admin-background.jsp?sid=<%=sid%>">Background and Expertise</a></h3>
                    </div>
                </div>
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
                                <img src = "images\facebook.png" alt = "facebook">
                            </a>
                            <a href = "mailto: SWEstudentcouncil@outlook.com">
                                <img src = "images\mail.png" alt = "mail">
                            </a>
                            <a href = "https://xmux.xdea.top/">
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
