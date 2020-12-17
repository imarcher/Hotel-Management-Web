<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
	<title>圣马家勾大酒店_酒店客房入住系统</title>
		<link rel="stylesheet" type="text/css" href="/ssmdemo/css/bootstrap.min.css"/>
		<script src="/ssmdemo/js/jquery-3.5.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/ssmdemo/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/ssmdemo/css/font-awesome.min.css"/>
		<style type="text/css">
			.container-fluid{
			    padding: 0px;
			    height: 100%;
			    display: flex;
			}
			html{
			    height: 100%;
			    overflow: hidden;
			}
			body{
			    height: 100%;
			}
		
			#left{
				width: 20%;
				height: 100%;
				padding: 0px;
				align-items: flex-start;
				justify-content: center;
				background-color:#e3f2fd;
				
				background-image: url(/ssmdemo/img/beijing_bandaojiudian-006.jpg);
				background-repeat: no-repeat;
				background-attachment: fixed;
				
				background-size:30% 100%;
			
			}
			#l1{
				height: 30%;
				width: 100%;
				
			}
			#l11,#l15{
				height: 20%;
				width: 100%;
				color: blue;
				display: flex;
				align-items:center;
				justify-content: center;
			}
			#l12,#l14{
				height: 60%;
				width: 25%;
				
			}
			#l13{
				height: 60%;
				width: 50%;
				background-color: blue;
				border: 1px solid black;
				border-radius:50%;
				background-image: url(/ssmdemo/img/u=1666806547,2363294129&fm=26&gp=0.jpg);
				background-repeat: no-repeat;
				background-attachment: fixed;
				background-size:20% 30%;
				background-position: 0px 20px;
			}
			
			#l2,#l3,#l4{
				height: 20%;
				width: 100%;
				border: 1px solid whitesmoke;
				background-color: rgba(255, 255, 255, 0.7);
				display: flex;
				align-items:center;
				justify-content: center;
				
			}
			#l5{
				height: 10%;
				width: 100%;
				border: 1px solid whitesmoke;
				background-color: rgba(255, 255, 255, 0.7);
				display: flex;
				align-items:center;
				justify-content: center;
			}
			
			#right{
				width: 80%;
				height: 100%;
				padding: 0px;
				align-items: flex-start;
				justify-content: center;
			}
			#right1{
				display: flex;
				flex-direction: column;
				justify-content: center;
				height: 15%;
				background-color: rgb(243, 243, 244);
				background-image: url(/ssmdemo/img/datang_zhuangxiu.jpg);
				background-repeat: no-repeat;
				background-attachment: fixed;
				background-size:100% 100%;
			}
			#right11{
				color: white;
				display: flex;
				flex-direction: column;
				justify-content: center;
			}
			#right12{
				
				color: white;
				display: flex;
				
				align-items: flex-end;
				justify-content: flex-end;
			}
			#right2{
				height: 8%;
				color: #6c757d;
				display: flex;
				
				align-items: center;
				justify-content: center;
			}
			#right3{
				width: 100%;
				height: 77%;
				padding-top: 50px;
				
				 
				 background-image: url(/ssmdemo/img/beijing_bandaojiudian-014.jpg);
				 background-repeat: no-repeat;
				 background-size:100% 100%; 
				 background-attachment: fixed;
			}
			#right33{
				background-color: rgba(255, 255, 255, 0.7);
				border: 1px solid whitesmoke;
				border-radius:30%;
				}
			
			
			
		</style>
		<script type="text/javascript">
			$(function(){
				function getTime() {
				    var date=new Date();
				    var word="";
				    var hour=date.getHours();
				    if(hour>4&&hour<11)
				        word="早上好,";
				    else if(hour<14)
				        word="中午好,";
				    else if(hour<18)
				        word="下午好,";
				    else
				        word="晚上好,";
				    $("#right111").text(date.toLocaleString());
				    $("#right112").text(word);
				}
				setInterval(getTime,1000);
			})
		</script>
		
</head>
<body>
	<div class="container-fluid">
			<div class="col-xs-2" id="left">
				<div class="col-xs-12" id="l1">
					<div class="col-xs-12" id="l11"></div>
					<div class="col-xs-4"  id="l12"></div>
					<div class="col-xs-4"  id="l13"></div>
					<div class="col-xs-4"  id="l14"></div>
					<div class="col-xs-12" id="l15"> <center><span class="name",id="name"><c:out value="${model.username}"/></span></center></div>
					
				</div>
				<div class="col-xs-12" id="l2">
					<a class="nav-link" href="http://localhost:8080/ssmdemo/user/bookuser/${model.id}" target="_blank" ><span>房间预定</span></a>
				</div>
				<div class="col-xs-12" id="l3">
					<a class="nav-link" href="http://localhost:8080/ssmdemo/user/myorder/${model.id}" target="_blank"><span>我的订单</span></a>
				</div>
				<div class="col-xs-12" id="l4">
					<a class="nav-link" href="http://localhost:8080/ssmdemo/user/changeuser/${model.id}" target="_blank"><span>修改密码</span></a>
					
				</div>
				<div class="col-xs-12" id="l5">
					<a href="http://localhost:8080/ssmdemo/hotel/log"><i class="fa fa-sign-out"></i>退出</a>
				</div>
			</div>
			
			
			<div class="col-xs-10" id="right">
			
				<div class="col-xs-12" id="right1">
					<div class="row">
					<div class="col-xs-4" id="right11">
						<h5 id="right111"></h5>
						<h5 ><span id="right112"></span><span><c:out value="${model.username}"/></span></h5>
					</div>
					<div class="col-xs-8" id="right12">
						<h1><b><i>圣&nbsp &nbsp马&nbsp &nbsp家&nbsp &nbsp沟&nbsp &nbsp大&nbsp &nbsp酒&nbsp &nbsp店</i></b></h1>
					</div>
					</div>
				</div>
				<div class="col-xs-12" id="right2">
					<h3><b>简介</b></h3>
				</div>
				<div class="col-xs-12" id="right3">
					<center id= "right33">
					<p>暖气、贵宾室、会议设施、洗衣间、残疾人设施、无烟客房、携带宠物、酒吧、语言、<br>旅游咨询、复印传真、票务、唤醒、快速入住、退房、外币兑换、自行车、按摩、餐厅、单点餐厅</p>
					<p>酒店客房，配有享有风景, 电话, 收音机, DVD播放机, 有线频道, 平面电视, iPod音乐基座, 空调,<br> 熨斗, 书桌, 熨衣设备, 客厅角, 暖气, 铺设了地毯的地板, 沙发, 吹风机, 浴袍, 免费洗浴用品, 卫生间, <br>浴室, 浴缸或淋浴, 沏茶/咖啡设备, 小厨房, 冰箱, 微波炉, 厨房, 用餐区, 唤醒服务, 闹钟等设施。</p>
					<p>酒店提供免费wifi。</p>
					<p>酒店配有游泳池，您可以尽情享受水之乐趣。</p>
					<p>酒店提供儿童设施，残疾人服务等。</p>
					<p>在圣马家沟大酒店，您可在餐厅享用到传统的哈尔滨美食。</p>
					</center>

				</div>
		
			</div>
		</div>
		
		
</body>
</html>