<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body{
background-image: url("data:image/jpeg;base64,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");
}
</style>
</head>
<body>

<h1 style="color:green">Welcome!!!!</h1>
<form action="home">
<label>Username:-</label><br>
<input type="text" placeholder="Enter User Name" name="username"><br><br>
<label>Password:-</label><br>
<input type="password" name="password"  ><br><br>
<input type="submit" value="Login">
</form>
<!--  
<h1>Registration</h1>
<form action="register">
<label>Username:-</label><br>
<input type="text" placeholder="Enter User Name" name="username"><br><br>
<label>Password:-</label><br>
<input type="password" name="password"  ><br><br>
<input type="submit" value="Register">
</form>
-->
</body>
</html>