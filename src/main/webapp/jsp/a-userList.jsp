<%@page import="team.singal.coffee.pojo.User"%>
<%@page import="team.singal.coffee.pojo.Admin"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%
	List<User> users = (List<User>) request.getAttribute("users");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>TCBTL Background Management System</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/a-userlist.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
</head>

<body>
	<h1 class="title">USERINFO</h1>
	<table class="list">
		<th colspan="6">
			<form action="${pageContext.request.contextPath}/admins/findByLike"
				method="post">
				<input type="text" placeholder="nameSearch" name="userName"
					id="search-input" class="search-input" /> <input type="submit"
					id="search-button" value="Search"></input>
			</form>
		</th>
		<tr class="title-tr">
			<td>Id</td>
			<td>userName</td>
			<td class="pswd">passWord</td>
			<td>Phone</td>
			<td>Email</td>
			<td>Brithday</td>
			<td>UPDATE</td>
		</tr>
		<%
		if(users!=null){
			for (User u : users) {
		%>
		<tr class="value-tr">
			<td class="value-td"><%=u.getId()%></td>
			<td class="value-td"><%=u.getUserName()%></td>
			<td class="value-td pswd"><%=u.getUserPassword()%></td>
			<td class="value-td"><%=u.getUserPhone()%></td>
			<td class="value-td"><%=u.getEmail()%></td>
			<td class="value-td"><%=u.getBirthday()%></td>
			<td class="value-botton">
				<button type="button" class="update">UPDATE</button>
				<button type="button" class="delete">DELETE</button>
			</td>
		<tr>
			<%
				}}
			%>
	</table>
	<button type="button" class="add" id="add">ADD</button>
	<div class="box">
		<form action="" id="form" method="post">
			<button type="button" class="close" id="close">CLOSE</button>
			<div>
				<p id="id-p">ID</p>
				<input type="text" name="id" id="id" class="id" />
			</div>
			<div class="box-th">
				<p>UserName</p>
				<input tye="text" name="userName" id="userName" class="userName" />
			</div>
			<div class="box-th pswd">
				<p>UserPassword</p>
				<input type="password" name="userPassword" id="userPassword" class="userPassword" />
			</div>
			<div class="box-th">
				<p>Phone</p>
				<input type="text" name="userPhone" id="phone" class="phone" />
			</div>
			<div class="box-th">
				<p>Email</p>
				<input type="text" name="email" id="email" class="email" />
			</div>
			<div class="box-th">
				<p>Birthday</p>
				<input type="text" name="birthday" id="birthday" class="birthday" />
			</div>
			<input type="submit" class="submit" value="SUBMIT" />
		</form>
	</div>
	<div class="box-shadow"></div>
</body>
<script type="text/javascript">
	$("#close").click(function() {
		$(".box").css({
			"display" : "none"
		});

		$(".box-shadow").css({
			"display" : "none"
		});

		/* 清空残留数据 */
		$("#id").val("");
		$("#userName").val("");
		$("#passWord").val("");
		$("#phone").val("");
		$("#email").val("");
		$("#birthday").val("");

		$(".submit").removeClass("add_submit").removeClass("update_submit");
	});

	/*添加按钮*/
	$("#add").click(function() {
		if ($(".box").css("display") == "none") {
			/*先让添加框显示*/
			$(".box").css({
				"display" : "block"
			});

			$(".submit").attr({
				"value" : "ADD"
			});

			$(".submit").addClass("add_submit");

			$(".box-shadow").css({
				"display" : "block"
			});
			
			//添加
			$(".submit").click(function(){
				$.ajax({
					type:"post",
					url:"${pageContext.request.contextPath}/admins/addUser",
					data:$("#form").serialize(),
					async:false,
					success:function(data){
						alert(data.msg);
						window.location.reload();
					}
				});
			})
			
		}

	})

	//点击修改按钮
	$(".update").click(function() {
		var id = $(this).parents("tr").find("td").eq(0).html();
		var userName = $(this).parents("tr").find("td").eq(1).html();
		var psw = $(this).parents("tr").find("td").eq(2).html();
		var phone = $(this).parents("tr").find("td").eq(3).html();
		var email = $(this).parents("tr").find("td").eq(4).html();
		var birthday = $(this).parents("tr").find("td").eq(5).html();
		if ($(".box").css("display") == 'none') {

			$(".box").css({
				"display" : "block"
			});

			$(".submit").attr({
				"value" : "UPDATE"
			});

			$(".submit").addClass("update_submit");

			/* 阴影 */
			$(".box-shadow").css({
				"display" : "block"
			});

			//先给前端修改页面显示：修改数据
			$("#id").val(id);
			$("#userName").val(userName);
			$("#passWord").val(psw);
			$("#phone").val(phone);
			$("#email").val(email);
			$("#birthday").val(birthday);
			//修改
			$(".submit").click(function(){
				$.ajax({
					type:"post",
					url:"${pageContext.request.contextPath}/admins/updateUser",
					data:$("#form").serialize(),
					async:false,
					success:function(data){
						alert(data.msg);
						
					}
				});
			})
		}
	})

	//删除
	$(".delete").click(function(){
		var uId= $(this).parents("tr").find("td").eq(0).html();
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/admins/deleteUser?uId="+uId,
			data:$("#form").serialize(),
			async:false,
			success:function(data){
				alert(data.msg);
				window.location.reload();
			}
		});
	})
	
</script>
</html>