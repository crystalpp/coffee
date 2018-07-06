<%@page import="team.singal.coffee.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/account-information.css" />
<title>AccountInformation</title>
</head>

<body>
	<div class="center">
		<div class="title">
			<span class="spans"> ACCOUNT INFORMATION</span>
		</div>

		<div class="form-center">
			<form class="form" id="form">
				<div class="form-group">
					<label>Email address</label> <input
						type="email" name="email" class="form-control"
						id="email" placeholder="Enter email" value="${u.email}"> 
				</div>
				
			
				<div class="form-group">
				
					<label >Phone</label> <input type="text"
						name="userPhone" class="form-control" id="userPhone" value="${u.userPhone}" placeholder="Phone">
				</div>

				 <div class="form-group">
					<label>Birthday</label> <input type="text" value="${u.birthday}"
						name="birthday" class="form-control" id="birthday" placeholder="Enter birthday">
				</div> 
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Change
						password</label>
				</div>

				<div class="changePassword">
					<div class="form-group">
						<label for="exampleInputEmail1">Current Password</label> <input
							type="password" name="olPassword" class="form-control"
							id="olPassword" placeholder="Enter Current Password">
							<font color="red" id="mess">${message}</font> 
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">New Password</label> <input
							type="password" name="newPassword" class="form-control" id="newPassword" 
							placeholder="Enter New Password"> 
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Confirm New Password</label> <input
							type="password" name="newPassword1" class="form-control"
							id="newPassword1" 
							placeholder="Confirm New Password">
							<font color="red" id="mess1">${message}</font>
							
					</div>
				</div>
				<div class="review-add-sort">
					<button type="button" id="save" class="btn ">
						<span style="color: white;"> SAVE </span>
					</button>
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript">
	var flag;
	var flag1;
	var flagCheck=2;
	
			$(".form-check-input").click(function() {
				var $Check1 = $("#exampleCheck1");
				if($Check1.is(":checked")) {
					$(".changePassword").css("display", "block");
					flagCheck=1;
				} else {
					$(".changePassword").css("display", "none");
					flagCheck=2;
				}
				if(flagCheck==1){
					 $("#olPassword").bind('input porpertychange',function(){ 
							var oldPassword = $("input[id='olPassword']").val();
							 $.ajax({
									type:"post",
									url:"${pageContext.request.contextPath}/users/checkOld?oldPsw="+oldPassword,
									async:false,
									success : function(data) {
											document.getElementById("mess").innerHTML=data.msg;
									}
								});
						})
						$("#newPassword1").bind('input porpertychange',function(){ 
							var newPassword = $("input[id='newPassword']").val();
							var newPassword1 = $("input[id='newPassword1']").val();
							if(newPassword!=newPassword1){
								document.getElementById("mess1").innerHTML="The password entered twice does not match  ";
								flag1=false;
							}
							else if(newPassword==newPassword1){
								document.getElementById("mess1").innerHTML=" ";
								flag1=true;
							}
						})
						 $("#save").click(function(){	
						 if(!flag1){
							alert("please enter valid content ");
						}
						else{ 
							$.ajax({
								type:"post",
								url:"${pageContext.request.contextPath}/users/updatePsw",
								data:$("#form").serialize(),
								async:false,
								success : function(data) {
									 alert(data.msg); 
									 if(data.msg=="success"){
									    top.location = "${pageContext.request.contextPath}/jsp/login.jsp"  
									}
									
								}
							});
						 } 
					 })
					
				}
				else {
					 $("#save").click(function(){	
						 alert("111");
							 var email = $("#email").val();
								var userPhone = $("#userPhone").val();
								var birthday=$("#birthday").val(); 
									 $.ajax({
											type:"post",
											url:"${pageContext.request.contextPath}/users/updateUserInfo?email="+email+"&&userPhone="+userPhone+"&&birthday="+birthday,
											async:false,
											success : function(data) {
												alert(data.msg);
												window.location.reload();
									 }
								});
						})
					
				}
				
			});
			
			
			
		</script>
</body>
</html>