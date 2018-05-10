<%-- 
    Document   : login2
    Created on : May 10, 2018, 4:59:58 PM
    Author     : Bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Login : ANGINHI</h2>
			<%
				if(request.getParameter("error") != null){
					out.print("<p style='color:red'>Sai tên đăng nhập hoặc mật khẩu </p>");
				}
			%>
        <form action="<%=request.getContextPath() %>/checklogin" method="post" >
				<div>
					<label>Username: </label>
					<input type="text" name="username" value="" />
				</div>
				<br />
				<div>
					<label>Password: </label>
					<input type="password" name="password" value="" />
				</div>
				<br />
				<div>
					<input type="submit" name="submit" value="Login" />
					<input type="reset" name="reset" value="Reset" />
				</div>
			</form>
    </body>
</html>
