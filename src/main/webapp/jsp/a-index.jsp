<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" />
<title>TCBTL Background Management System</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/a-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/a-home.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-2.1.1.min.js"></script>
</head>

<body>
	<div class="book-left">
		<!--左边标题模块-->
		<div class="logoDiv">
			<img src="${pageContext.request.contextPath }/img/logo.png" class="logoImg" />
			<p class="logoTitle">TCBTL</p>
		</div>
		<!--用户模块-->
		<div class="user_name">
			<h4 class="userName">admin:${a.adminName} </h4>
			<a href="${pageContext.request.contextPath}/a-login.jsp" class="back_login">LOG OUT</a>
		</div>
		<!--菜单模块-->
		<div class="menu">
			<h4 class="coffee-title">COFFEE</h4>
			<div class="navi coffee">
				<button class="btn" id="coffeeKind">KIND</button>
			</div>
			<div class="navi coffee">
				<button class="btn" id="coffeeInfo">INFORMATION</button>
			</div>
			</div>
			<h4 class="indert-title">INDENT</h4>
			<div class="navi indert">
				<button class="btn" id="indertInfo">INFORMATION</button>
			</div>
			<h4 class="user-title">USER</h4>
			<div class="navi user">
				<button class="btn" id="userInfo">USERINFO</button>
			</div>
			<div class="navi user">
				<button class="btn" id="upadtePasw">PASSWORD</button>
			</div>
		</div>
	</div>
	<div class="book-right">
		<iframe class="iframes" id="iframes" src="${pageContext.request.contextPath }/jsp/a-home.jsp"></iframe>
	</div>

</body>
<script type="text/javascript">
	/*设置点击动画  slideToggle() 方法通过使用滑动效果（高度变化）来切换元素的可见状态*/
	$(".coffee-title").click(function() {
		$(".coffee").slideToggle(500);
	});
	$(".indert-title").click(function() {
		$(".indert").slideToggle(500);
	});
	$(".user-title").click(function() {
		$(".user").slideToggle(500);
	});
	/*--------------------------用户模块--------------------------------------------*/
	$("#userInfo").click(function() {
		var iframes = document.getElementById("iframes");
		/* 点击访问 获取用户接口 ，成功跳转 成功页面显示 */
		iframes.src = "${pageContext.request.contextPath}/admins/findAll";
	});

	$("#upadtePasw").click(function() {
		var iframes = document.getElementById("iframes");
		/* 点击访问 获取用户接口 ，成功跳转 成功页面显示 */
		iframes.src = "${pageContext.request.contextPath}/jsp/a-updatePasw.jsp";
	});
	/*--------------------------商品模块--------------------------------------------*/
	$("#coffeeInfo").click(function() {
		var iframes = document.getElementById("iframes");
		/* 点击访问 获取用户接口 ，成功跳转 成功页面显示 */
		iframes.src = "${pageContext.request.contextPath}/a-coffees/findAll";
	});

	$("#coffeeKind").click(function() {
		var iframes = document.getElementById("iframes");
		/* 点击访问 获取用户接口 ，成功跳转 成功页面显示 */
		iframes.src = "${pageContext.request.contextPath}/a-coffees/findKindAll";
	});
	/*--------------------------订单模块--------------------------------------------*/
	$("#indertInfo").click(function() {
		var iframes = document.getElementById("iframes");
		/* 点击访问 获取用户接口 ，成功跳转 成功页面显示 */
		iframes.src = "${pageContext.request.contextPath}/a-coffees/findRecordAll";
	});

	
</script>

</html>