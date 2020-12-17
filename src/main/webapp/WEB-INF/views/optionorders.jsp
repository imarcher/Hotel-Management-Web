<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单操作</title>
 <link rel="stylesheet" type="texts" href="/ssmdemo/css/bootstrap.min.css"/>
         <script src="/ssmdemo/js/jquery-3.5.1.min.js" type="text/javascript" charset="utf-8"></script>
         <script src="/ssmdemo/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
         <link rel="stylesheet" href="/ssmdemo/css/font-awesome.min.css">
         <script type="text/javascript">
					$(function(){
						

						if(${model1}==1){

							alert("该房间已被预订");
							}
						
					});
				</script>
</head>
<style>
a:link {text-decoration:none;}    /* 未被访问的链接 */
a:visited {text-decoration:none;} /* 已被访问的链接 */
a:hover {text-decoration:underline;}   /* 鼠标指针移动到链接上 */
a:active {text-decoration:underline;}  /* 正在被点击的链接 */	
body{
	background-image: url(/ssmdemo/img/beijing_bandaojiudian-006.jpg);
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
  text-decoration:none;
  }
  </style>
  
<body>

<table border="1">
			<table id = "customers">
			<tr>
				<td><b><h2>订单号</h2></b></td>
				<td><b><h2>房间号</h2></b></td>
				<td><b><h2>房间类型</h2></b></td>
				<td><b><h2>价格</h2></b></td>
				<td><b><h2>入住人</h2></b></td>
				<td><b><h2>日期</h2></b></td>
			</tr>
			<c:forEach var="order" items="${model}">
			<tr>
				<td><b><h2>${order.id}</h2></b></td>
				<td><b><h2>${order.roomid}</h2></b></td>
				<td><b><h2>${order.roomtype}</h2></b></td>
				<td><b><h2>${order.price}</h2></b></td>
				<td><b><h2>${order.username}</h2></b></td>
				<td><b><h2>${order.day}</h2></b></td>
				<td><a href="http://localhost:8080/ssmdemo/manager/deleteorder/${order.id}" text-decoration="none" onclick="JavaScript:confirm('你确定要删除订单${order.id}?')"><h1>删除</h1></a>
					<a href="http://localhost:8080/ssmdemo/manager/reneworder/${order.id}"><h1>续订</h1></a>
				</td>
			</tr>
			</c:forEach>
		</table>




</body>
</html>