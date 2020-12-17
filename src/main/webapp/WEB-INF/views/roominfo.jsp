<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>房间信息</title>
</head>
<style>
img
{
opacity:0.4;
filter:alpha(opacity=40); /* For IE8 and earlier */
}
img:hover
{
opacity:1.0;
filter:alpha(opacity=100); /* For IE8 and earlier */
}	
body{
	background-image: url(/ssmdemo/img/bd652aeda622043c6766c88020f3e8d1.jpg);
	background-repeat: no-repeat;
	background-size:100% 100%; 
	background-attachment: fixed;
}
h1{
	color:navajowhite;
	width: auto;
}	
h2{
	color:rgba(143,122,16,1.0);
	width: fit-content;
	height:fit-content;
}
#customers
  {
  font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
  width:100%;
  border-collapse:collapse;
  }

#customers td, #customers th 
  {
  font-size:1em;
  border:1px solid #98bf21;
  padding:3px 7px 2px 7px;
  }

#customers th ,td
  {
  font-size:1.1em;
  text-align:left;
  padding-top:5px;
  padding-bottom:4px;
  background-color:rgba(255,255,255,0.6);
  color: rgba(255,196,125,0.5);
  }
 </style>
<body>
	<h1>房间信息</h1>
<table border="1">
			<table id = "customers">
			<tr>
				<td><b><h2>编号</h2></b></td>
				<td><b><h2>房间号</h2></b></td>
				<td><b><h2>房间类型</h2></b></td>
				<td><b><h2>价格</h2></b></td>
			</tr>
			<c:forEach var="room" items="${model}">
			<tr>
				<td><b><h2>${room.id}</h2></b></td>
				<td><b><h2>${room.roomid}</h2></b></td>
				<td><b><h2>${room.roomtype}</h2></b></td>
				<td><b><h2>${room.price}</h2></b></td>
			</tr>
			</c:forEach>
		</table>




</body>
</html>