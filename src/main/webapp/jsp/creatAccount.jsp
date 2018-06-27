<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>CreatAccount</title>
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
			<div class="container" style="margin: 0; padding: 0;">
				<div class="row">

					<div class="col-md-4">
						<img src="../img/account-sidebar.jpg" class="img-responsive" alt="Cinque Terre">
					</div>
					<div class="col-md-8">
						<div class="login-block center-block">

							<img src="../img/cbtl-logo-account.png" class="img-responsive" alt="Cinque Terre">
							<form class="form-horizontal" role="form" id="form">
								<div class="form-group">
									<button type="button" class="btn btn-default btn-face mycolor1">LOGIN WITH FACEBOOK<!--<i class="iconfont left-block">&#xe612;<i>-->
										</button>

								</div>
								<div class="form-group">
									<p class="content-p">
										OR LOG IN WITH
									</p>
								</div>
								<div class="form-group">
									<input required="required" class="form-control1" name="userName"/>
									<label class="form-label">Name</label>
								</div>
								<div class="form-group">
									<input required="required" class="form-control1" name="userPhone" id="userPhone" />
									<label class="form-label">Phone   </label>
									<font color="red" id="mess1"></font></br>
								</div>
								<div class="form-group">
									<input required="required" class="form-control1" name="email" type="email" />
									<label class="form-label">Email</label>
								</div>
								<div class="form-group">
									<input required="required" class="form-control1" name="birthday" />
									<label class="form-label">Birthday(YYYY/MM/DD)   </label>
								</div>
								<div class="form-group">
									<input type="password" required="required" class="form-control1" name="userPassword1" id="userPassword1"/>
									<label class="form-label">Password</label>
								</div>
								<div class="form-group">
									<input type="password" required="required" class="form-control1" name="userPassword" id="userPassword"/>
									<label class="form-label">Confirm Password</label>
									<font color="red" id="mess"></font></br>
								</div>
								<div class="form-group" style="margin-top: 0; padding: 0;">

									<div class="checkbox">

										<label>
								          <input type="checkbox">Remember Me <a>What this?</a>
								        </label>
									</div>

								</div>
								<div class="form-group">

									<button type="button" class="btn btn-default mycolor" id="submit">GREATE ACCOUNT</button>

								</div>
								<div class="form-group" style="margin-top: 0; padding: 0;">
									<div class="col-sm-offset-2 col-sm-10 forget_password_link">
										<a class="text-center">Forget Your Password?</a>
									</div>
								</div>

							</form>
							<div class="form-group-content">

								<h4>Already have a Coffee Bean Rewards account?<a href="login.html">Login </a></h4>
								<p class="text-center">By clicking continue with Facebook or Log In, you agree to our Terms of Use and acknowledge that you have read our Privacy Policy</p>

							</div>
						</div>

					</div>
				</div>
			</div>


			<script type="text/javascript">
				var flagPhone;
				var flagPassword;
				$("#userPhone").bind('input porpertychange',function(){ 
				var userPhone = $("input[id='userPhone']").val();
				if(userPhone.length<11){
					document.getElementById("mess1").innerHTML="The phone number is less than 11";
					flagPhone=false;
				}
				else if(userPhone.length>11){
					document.getElementById("mess1").innerHTML="The phone number is more than 11";
					flagPhone=false;
				}
				else {
					document.getElementById("mess1").innerHTML="";
					flagPhone=true;
				}
	
			}) 
			
			$("#userPassword").bind('input porpertychange',function(){ 
				var userPassword = $("input[id='userPassword']").val();
				var userPassword1 = $("input[id='userPassword1']").val();
				if(userPassword!=userPassword1){
					document.getElementById("mess").innerHTML="password and confirmed new password do not match";
					flagPassword=false;
				}
				else{
					document.getElementById("mess").innerHTML="";
					flagPassword=true;
				}
	
			})
			
			$("#submit").click(function(){ 
				 if(!flagPhone||!flagPassword){
					alert("Please enter valid information ");
				}
				else{ 
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
				 } 
 			});
			</script>
		</body>
</html>