<%
	Cookie[] arr_ck = request.getCookies();
	String username ="";
	String password ="";
	for(int i=0; i<arr_ck.length; ++i)
	{
		if(arr_ck[i].getName().equals("username"))
			username = arr_ck[i].getValue();
		if(arr_ck[i].getName().equals("password"))
			password = arr_ck[i].getValue();
	}

	if(!username.equals(""))
	{
		response.sendRedirect("AdminLoginServlet?username=" + username + "&password=" + password + " ");
	}
%>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="adminlogin.css">
</head>
<body>
	<div class="container">
		<div class="left-container">
			<div class="imgcontainer">
				<div class="imgtitle">
					<b>ICT WEBSITE</b>
				</div>
			</div>
		</div>
		<div class="right-container">
			<div class="logincontainer">
				<div class="logincontent">
					<div class="title">
						LOGIN AS ADMIN
					</div>
					<form id="login" method="post" action="./AdminLoginServlet">
						<div class="inputbox">
							<input type="text" name="username" placeholder="Username" style="height: 40px; padding-left: 10px; width:186px;">
							<input type="password" name="password" placeholder="Password" style="height: 40px; padding-left: 10px; width:186px;">
							<button class="btn" onclick="document.getElementById('login').submit();">Login</button>
						</div>
					</form>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>