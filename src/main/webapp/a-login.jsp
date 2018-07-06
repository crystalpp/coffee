<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>TCBTL Background management system</title>
<link href="${pageContext.request.contextPath }/css/a-login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/a-jQuery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/a-fun.base.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/a-script.js"></script>
</head>

<body>
	<div class="login">
		<div class="login-box">
			<div class="logo png"><h2>THE COFFEE BEAN&TEA LEAF</h2></div>
			<div class="login-form">
				<form action="${pageContext.request.contextPath}/admins/login"
					method="post" class="form">
					<div class="name">
						<label>Name</label><input type="text" class="text"
							placeholder="adminName" name="adminName" tabindex="1"
							required="required"></br>
					</div>

					<div class="pwd">
						<label>Password</label><input type="password" class="text"
							placeholder="adminPassword" name="adminPassword" tabindex="2" required="required"></br>
						<input class="submit" type="submit" value="LOGIN IN" /> <input
							class="reset" type="reset" value="RESET" /> </br>
							<font color="red">${msg}</font></br>
					</div>
				</form>
			</div>
		</div>
		<div class="air-balloon ab-1 png"></div>
		<div class="air-balloon ab-2 png"></div>
		
	</div>
</body>
</html>