<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Event Page</title>
</head>
<body>
<h1>Welcome to Create Event page</h1>

<form action="create" style="border:1px solid black; width:50vw ; height:50vh; margin:auto">
	<div style="margin:15px"><input type="text" name="id" placeholder="Enter event ID" style="width:60%;height:5vh;"></div>
	<div style="margin:15px"><input type="text" name="title" placeholder="Enter event Title" style="width:60%;height:5vh;"></div>
	<div style="margin:15px"><input type="text" name="location" placeholder="Enter event location" style="width:60%;height:5vh;"></div>
	<div style="margin:15px"><input type="text" name="date" placeholder="Enter event Date" style="width:60%;height:5vh;"></div>
	<div style="margin:15px"><input type="text" name="guest" placeholder="Chief Guest" style="width:60%;height:5vh;"></div>
	
	<div><button type="submit">Submit</button></div>
</form>
</body>
</html>