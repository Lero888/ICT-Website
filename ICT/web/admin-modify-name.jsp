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
    <link rel="stylesheet" type="text/css" href="admin-personalinfo.css">

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
        List<StaffBean> model = model_staff.get();

        for(StaffBean bean: model)
        {

            if(bean.getStaff_id().equals(sid))
            {

    %>

    <div style = "margin: 50px; text-align: center;">
        <h1>Staff Information</h1>
    </div>

    <div class = "flexcontainer">
        <div class="flexbox">
            <div class="col">
                <h2>Personal Info</h2>
                <hr></hr>

                <div class = "infocontainer">
                    <div class = "infobox" style = "background-color: #F5F5F5">
                        <div class = "column" style = "flex: 8.5;">
                            <form action = "./ModifyNameServlet?sid=<%=request.getParameter("sid")%>" method = "post">
                                <input type="text" name="name" value="<%=bean.getStaff_name()%>" placeholder="Name" required> <br></br>
                                <button><a href="admin-personalinfo.jsp?sid=<%=sid%>" style = "color: #000000; text-decoration: none;">Cancel</a></button>
                        </div>

                        <div class = "column" style = "flex: 1.5;">
                            <p>Name</p>
                            <input type = "submit" value = "Save Changes" style = "margin-top: 5px;">
                            </form>
                        </div>
                    </div>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px;">
                        <div class = "column">
                            <%=bean.getPosition()%>
                        </div>

                        <div class = "column">
                            <p>Position</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-position.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px">
                        <div class = "column">
                            <%=bean.getSchool()%>
                        </div>

                        <div class = "column">
                            <p>School</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-school.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px">
                        <div class = "column">
                            <%=bean.getTel()%>
                        </div>

                        <div class = "column">
                            <p>Tel</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-tel.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px; border-bottom: none;">
                        <div class = "column">
                            <%=bean.getEmail()%>
                        </div>

                        <div class = "column">
                            <p>Email</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-email.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>
                </div>
                <hr></hr>
            </div>

            <div class="col">
                <img src="images/<%=bean.getImage()%>">
                <h3><%=bean.getStaff_name()%></h3>

                <a href = "admin-personalinfo.jsp?sid=<%=sid%>">
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

