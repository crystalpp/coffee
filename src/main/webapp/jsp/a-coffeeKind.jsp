<%@page import="team.singal.coffee.pojo.Kind"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<% List<Kind> kinds = (List<Kind>)request.getAttribute("kinds"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>TCBTL Background Management System</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/a-userlist.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-2.1.1.min.js"></script>
</head>

<body>
	<h1 class="title">CoffeeKind</h1>
	<table class="list">
		<tr class="title-tr">
			<td>Id</td>
			<td>Style</td>
			<td>Update</td>
		</tr>
		<%if(kinds!=null){
			 for (Kind k : kinds) { 
		%>
		<tr class="value-tr">
			<td class="value-td"><%=k.getId()%></td>
			<td class="value-td"><%=k.getType()%></td>
			<td class="value-botton">
				<button type="button" class="update">UPDATE</button>
				<button type="button" class="delete">DELETE</button>
			</td>
		<tr>
			<%
			 }
				}
			%> 
		
	</table>
	<button type="button" class="add" id="add">ADD</button>
	<div class="box">
		<form action="" id="form" method="post">
			<button type="button" id="close" class="close">COLSE</button>
			<div>
				<p id="id-p">ID</p>
				<input type="text" name="id" id="id" />
			</div>
			<div class="box-th">
				<p>Type</p>
				<input type="text" name="type" id="type" />
			</div>
			<input type="submit" class="submit" value="SUBMIT" />
		</form>
	</div>
	<div class="box-shadow"></div>
</body>
<script type="text/javascript">
	/*关闭按钮*/
	$("#close").click(function() {
		$(".box").css({
			"display" : "none"
		});

		$(".box-shadow").css({
			"display" : "none"
		});
		/* 清空残留数据 */
		$("#id").val("");
		$("#type").val("");
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

			$(".submit").addClass("add_submit");//.attr("class")

			$(".box-shadow").css({
				"display" : "block"
			});
			
			//提交事件
			$(".submit").click(function(){
				$.ajax({
					type:"post",
					url:"${pageContext.request.contextPath}/a-coffees/addKind",
					data:$('#form').serialize(),
					dataType:'json',
					async:false,
					success:function(data){
						alert(data.msg)
					}
				});			
			})
		}
	});

	/*更新按钮*/
	$(".update").click(function() {
		/*获取我们对应的 id  type  */
		var id=$(this).parents("tr").find("td").eq(0).html();
	var type=$(this).parents("tr").find("td").eq(1).html();
		
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

			//先给前端修改页面显示：修改数据($().val())
			$("#id").val(id);
			$("#type").val(type);
			
			
		}
		//修改按钮
		$(".submit").click(function(){
				$.ajax({
					type:"post",
					url:"${pageContext.request.contextPath}/a-coffees/updateKind",
					data:$("#form").serialize(),
					async:false,
					success:function(data){
						alert(data.msg);
						
					}
				});
			})
		
	});
	/*删除按钮*/
	$(".delete").click(function(){
		var kId= $(this).parents("tr").find("td").eq(0).html();
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/a-coffees/deleteKind?kId="+kId,
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