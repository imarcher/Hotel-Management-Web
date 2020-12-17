<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>圣马家勾大酒店_注册页面</title>
		<link rel="stylesheet" type="text/css" href="/ssmdemo/css/bootstrap.min.css"/>
		<script src="/ssmdemo/js/jquery-3.5.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/ssmdemo/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/ssmdemo/css/register.css"/>
		<script type="text/javascript">
					$(function(){
						$("form").submit(
							function(){
								var flag=true;
								if($("#username").val()==""){
									flag=false;
									$("#e1").text("用户名不能为空");
								}else{
									$("#e1").text("");
								}
								if($("#password").val()==""){
									flag=false;
									$("#e2").text("密码不能为空");
								}else{
									$("#e2").text("");
								}
								if($("#re-password").val()!=$("#password").val()){
									flag=false;
									$("#e3").text("两次密码不相同");
								}else{
									$("#e3").text("");
								}
								return flag;
							}
						);

						if(${model}==1){

							alert("该用户名已被注册");
							}
						
					});
				</script>
	</head>
	<body style="background-image: url(/ssmdemo/img/beijing_bandaojiudian-003.jpg);background-repeat: no-repeat;
	background-size:100% 100%; background-attachment: fixed;" method="POST">
		<form action="http://localhost:8080/ssmdemo/user/adduser" method="post">
		<div class="container">
			<div class="col-xs-12" id="top" >
				<div id="top1">	
				</div>
				<center><h1><b><i>圣&nbsp &nbsp马&nbsp &nbsp家&nbsp &nbsp沟&nbsp &nbsp大&nbsp &nbsp酒&nbsp &nbsp店</i></b></h1></center>
			</div >
			
			<div class="col-xs-3" id="login_table">
				
				<div class="col-xs-12"   id="t1"><center><b>register</b></center></div><br>
				<div  class="col-xs-12" id="t2">
					username: <input type="text" id="username" name="username" style="width: 220px;"/><span id="e1"></span>
				</div>
				<div  class="col-xs-12" id="t3">
					password: <input type="password" id="password" name="password" style="width: 220px;"/><span id="e2"></span>
				</div>
				<div class="col-xs-12" id="t4">
					re-password: <input type="password" id="re-password"  style="width: 220px;"/><span id="e3"></span>
				</div>
				
				<div  class="col-xs-12" id="t5">
				
				<center>
				<input type="submit" name="" id="" value="注册" style="width: 200px;"/>
				</center>
				
				</div>
				
				
			</div>
			<div class="col-xs-9">
				
			</div>
			<div class="col-xs-12" id="bottom">
				
			</div>
		</div>
		</form>
	</body>
</html>