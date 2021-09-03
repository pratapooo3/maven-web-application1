<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sridhar defence school- Home Page</title>
<link href="images/Sridhar logo.jpg" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to Sridhar  defence school.</h1>
<h1 align="center"> Sridhar  defence school- Very Good  school for Student which covers all activities </h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/Sridhar logo.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		Sridhar  defence school, 
		Martha Halli, Above ICICI Bank, Beside Meghana Foods,
		Bangalore,
		+91-7794060636
		pratapdevopsooo3@gmail.com
		<br>
		<a href="mailto:pratapdevopsooo3@gmail.com">Mail to Sridhar  defence school</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/Student/getStudentDetails">Get Student Details </p>
<hr>
<hr>
<p align=center>Sridhar  defence school - Consultant, Training, Development Center.</p>
<p align=center><small>Copyrights 2019 by <a href="http://Sridhar defence school.com/">Sridhar  defence school</a> </small></p>

</body>
</html>
