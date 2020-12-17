<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>
<style>
	body{
		background-repeat: no-repeat;
		background-size: 100% 100%;
		background-attachment: fixed;
	}
</style>
      <link rel="stylesheet" type="texts" href="/ssmdemo/css/bootstrap.min.css"/>
      <script src="/ssmdemo/js/jquery-3.5.1.min.js" type="text/javascript" charset="utf-8"></script>
      <script src="/ssmdemo/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
      <link rel="stylesheet" href="/ssmdemo/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="/ssmdemo/css/register.css"/>
      
       <script type="text/javascript">
					$(function(){
						$("form").submit(
							function(){
								var flag=true;
								if($("#password").val()==""){
									flag=false;
									$("#e1").text("密码不能为空");
								}else{
									$("#e1").text("");
								}
								if($("#re-password").val()!=$("#password").val()){
									flag=false;
									$("#e2").text("两次密码不相同");
								}else{
									$("#e2").text("");
								}
								return flag;
							}
						);

						
						
					});
				</script>
</head>
<body background="/ssmdemo/img/bd652aeda622043c6766c88020f3e8d1.jpg">
	<div class="container">
		<div class="col-xs-12" id="top" >
			<div id="top1">
				
			</div>
			<center><h1><b><i>修&nbsp &nbsp改&nbsp &nbsp用&nbsp &nbsp户&nbsp &nbsp密&nbsp &nbsp码</i></b></h1></center>
		</div >
			<div class="col-xs-9">
				
			</div>
		<div class="col-xs-3" id="login_table"">
	<form action="http://localhost:8080/ssmdemo/user/updateuser/${model}" method="post">
		<div class="col-xs-12" id="t1">
	<center>新密码：<input type="password" id="password" name="password" style="width: 200px;height:30px"/><span id="e1"></span></center><span id="e1"></span><br>
	<center>再次确认：<input type="password" id="re-password"  style="width: 200px;height:30px"/><span id="e2"></span></center>
      <div id="top1">
      	
      </div>
       <center><input type="submit" name="" id="" value="修改密码" style="width: 200px;height:30px"/></center>
      </div>
      	 </div>
      	 
   </div>	 
</form>

</body>
</html>