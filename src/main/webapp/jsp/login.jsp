<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet"href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
	<div class="container" style="margin: 0; padding: 0;">
		<div class="row">

			<div class="col-md-4">
				<img src="../img/account-sidebar.jpg" class="img-responsive"
					alt="Cinque Terre">
			</div>
			<div class="col-md-8">
				<div class="login-block center-block">

					<img src="../img/cbtl-logo-account.png" class="img-responsive"
						alt="Cinque Terre">
					<form class="form-horizontal" role="form" id="form" action="${pageContext.request.contextPath}/users/login">
						<div class="form-group">
							<button type="button" class="btn btn-default mycolor1">
								LOGIN WITH FACEBOOK
								<!--<i class="iconfont left-block">&#xe612;<i>-->
							</button>

						</div>
						<div class="form-group">
							<p class="content-p">OR LOG IN WITH</p>
						</div>

						<div class="form-group">
							<input required="required" class="form-control1" name="userInfo" />
							<label class="form-label">UserName</label>
						</div>
						<div class="form-group">
							<input type="password" required="required" class="form-control1"
								name="userPassword" /> <label class="form-label">Password</label>
								<font color="red">${msg}</font></br>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox">Remember Me <a>What
											this?</a>
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-default mycolor" id="submit">LOGIN</button>
						</div>
						<div class="form-group" style="margin-top: 0; padding: 0;">
							<div class="col-sm-offset-2 col-sm-10 forget_password_link">
								<a class="text-center">Forget Your Password?</a>
							</div>
						</div>

					</form>
					<div class="form-group-content">

						<h4>
							Don’t have an account? <a href="creatAccount.jsp">Create
								Account </a>
						</h4>
						<p class="text-center">By clicking continue with Facebook or
							Log In, you agree to our Terms of Use and acknowledge that you
							have read our Privacy Policy</p>

					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
	/* $("#submit").click(function(){ 
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/users/creatAccount",
				data:$("#form").serialize(),
				async:false,
				success : function(data) {
					 alert(data.msg); 
					 if(data.msg=="Registration Successful"){
					    window.location.href="login.jsp"
					}
					
				}
			});
		}); */
	</script>
</body>
</html>