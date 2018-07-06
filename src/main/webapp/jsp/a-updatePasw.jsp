<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>TCBTL Background Management System</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/a-updatePasw.css" />
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-2.1.1.min.js"></script>

</head>
<body>
	<div class="all">
		<div class="photo">
			<div class="my_pic">
				<img src="${pageContext.request.contextPath }/img/11.jpg" />
				<p>${u.userName}</p>
			</div>
		</div>
		<form class="update" action="#" id="form">
		<div class="form-group user">
				<label for="exampleInputPassword1">adminName</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					placeholder="Please enter the adminName" name="adminName" value="${a.adminName}">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">OldPassword</label> <input
					type="password" class="form-control" id="olPassword" value=""
					placeholder="Please enter the original password" name="oldPassword" required="required" 
					onkeydown="if(event.keyCode==13) checkOldPassword()">
					<font color="red" id="mess">${message}</font>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">NewPassword</label> <input
					type="password" class="form-control" id="newPassword" value=""
					placeholder="Please enter the new password" name="newPassword" required="required">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Confirm password</label> <input
					type="password" class="form-control" id="newPassword1"
					placeholder="Please Confirm password" name="newPassword1" required="required">
					<font color="red" id="mess1">${message}</font></br>
			</div>
			<button type="submit" class="btn btn-primary mybtn" id="submit">UPDARE</button>
		</form>
	</div>
</body>

<script type="text/javascript">
var flag;
var flag1;
 $("#olPassword").bind('input porpertychange',function(){ 
	/* var old=${u.userPassword};
	var oldPassword = $("input[id='olPassword']").val();
	if(old!=oldPassword){
		document.getElementById("mess").innerHTML="原密码错误 ";
		flag=false;
	}
	else if(old==oldPassword){
		document.getElementById("mess").innerHTML=" ";
		flag=true;
	} */
	var oldPassword = $("input[id='olPassword']").val();
	 $.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/admins/checkOld?oldPsw="+oldPassword,
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
		document.getElementById("mess1").innerHTML="The password entered twice is incorrect  ";
		flag1=false;
	}
	else if(newPassword==newPassword1){
		document.getElementById("mess1").innerHTML=" ";
		flag1=true;
	}
	
}) 


$("#olPassword").bind('input porpertychange',function(){ 
 $("#submit").click(function(){ 
	 if(!flag1){
		alert("please into true context ");
	}
	else{ 
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/admins/updatePsw",
			data:$("#form").serialize(),
			async:false,
			success : function(data) {
				 alert(data.msg); 
				 if(data.msg=="SUCCESS"){
				    top.location = "../a-login.jsp"  
				}
				
			}
		});
	 } 
 }); 
})
</script>
</html>