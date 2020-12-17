<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加一个订单</title>
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
		<style type="text/css">
		    #QRcodeImg{
		        background: url(/ssmdemo/img/link.jpg) no-repeat 0px 0px;
		        width: 300px;
		        height: 210px;
		        position: absolute;
		        **/*可以覆盖在内容之上，因为采用absolute时，脱离文档流*/**
		        z-index:22;
		        border: 2px solid green;
		        display: none;
		    }
		    a:hover #QRcodeImg{
		        display:block;
		    }
			#QRcodeImg1{
			    background: url(/ssmdemo/img/下载.jpg) no-repeat 0px 0px;
			    width: 300px;
			    height: 210px;
			    position: absolute;
			    **/*可以覆盖在内容之上，因为采用absolute时，脱离文档流*/**
			    z-index:22;
			    border: 2px solid green;
			    display: none;
			}
			a:hover #QRcodeImg1{
			    display:block;
			}
		    </style>
		    
		    <script type="text/javascript">
					$(function(){
						

						if(${model}==1){

							alert("该房间已被预订");
							}
						if(${model}==2){

							alert("日期输入错误");
							}
					});
				</script>
</head>
<body background="/ssmdemo/img/bd652aeda622043c6766c88020f3e8d1.jpg" >
<div class="container">
	<div class="col-xs-12" id="top" >
		<div id="top1">
			
		</div>
		<center><h1><b><i>预&nbsp &nbsp订&nbsp &nbsp房&nbsp &nbsp间</i></b></h1></center>
	</div >
	<div class="col-xs-3" id="login_table"">
           <form action="http://localhost:8080/ssmdemo/user/saveorder/${model1}" method="post">
			   
           <div class="col-xs-12" id="t1">
			<center>房间：
			<select name="rid" class="" width="200"id=""style="width: 520px;height:40px">
			<c:forEach var="aroom" items="${model2}">
			<center><option value="${aroom.id}" >房间号：${aroom.roomid}房间类型：${aroom.roomtype}房间价格：${aroom.price}</option></center>	
			</c:forEach>
			</select></center>
			<span style="font-style: normal;"></span>
		    </div >
			<div class="col-xs-12" id="t1">
			<center>日期（yyyy-MM-xx)：<input type="text" name="day" id="" value="" style="width: 240px;height:40px"/><span id="e1"></span></center>
                   <br>
			<center><input type="submit" name="" id="" value="添加订单" style="width: 200px;height:40px"/></center>   
            </div >
			</form>
			<div id="top1">
				
			</div>
			<div  class="col-xs-12" id="t1">
				<div id="head">
				        <center><a href="">单人房
				            <center><div id="QRcodeImg">
				            </div></center>
				        </a></center>
				           <center><a href="">双人房
				               <center><div id="QRcodeImg1">
				               </div></center>
				           </a></center>
				      </div> 
				<!--<img src='../../img/link.jpg' id="oImg" style='display:none'>
				
				<!--<center><INPUT TYPE="button" value='显示单人房'style="width: 200px;height:40px;border:3px orange double" onclick="reP()"></center>
				--><!--<center><INPUT TYPE="button" value='隐藏单人房' onclick="reH()"></center>-->
				<!--<img src='../../img/link (1).jpg' id="oImg1" style='display:none'>-->
				<!--<center><INPUT TYPE="button" value='显示双人房' style="width: 200px;height:40px;border:3px orange double"onclick="reP1()"></center>
				<!--<center><center><INPUT TYPE="button" value='隐藏双人房' onclick="reH1()"></center>-->
			 </div>
	          
	    </div >
		
</div>
</body>
</html>