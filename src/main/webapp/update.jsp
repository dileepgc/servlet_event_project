<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Update Events </h1>
<% 
ResultSet rs=(ResultSet)request.getAttribute("rs");
%>

<form action="updation">
	<input type="text" name="id" value="<%=rs.getInt(1) %>" placeholder="enter id" >
	<input type="text" name="title" value="<%=rs.getString(2) %>" placeholder="enter title" >
	<input type="text" name="location" value="<%=rs.getString(3) %>" placeholder="enter location" >
	<input type="text" name="date" value="<%=rs.getString(4) %>" placeholder="enter date" >
	<input type="text" name="guest" value="<%=rs.getString(5) %>"placeholder="enter guest" >
	<button type="submit">Update</button>
</form>


</body>
</html>