<%@page import="team.singal.coffee.pojo.Coffee"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	List<Coffee> coffees = (List<Coffee>) request.getAttribute("coffees");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>TCBTL Background Management System</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/a-userlist.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
</head>

<body>
	<h1 class="title">CoffeeInfo</h1>
	<table class="list">
		<th colspan="9">
			<form action="${pageContext.request.contextPath}/a-coffees/findByLike"
				method="post">
				<input type="text" placeholder="Cofee Name" name="coName"
					id="search-input" class="search-input" /> <input type="submit"
					id="search-button" value="Search"></input>
			</form>
		</th>
		<tr class="title-tr">
			<td>Id</td>
			<td>HTP</td>
			<td>Name</td>
			<td>Number</td>
			<td>Picture</td>
			<td>Price</td>
			<td>Kind</td>
		</tr>

		<%
		if(coffees!=null){
			for (Coffee c : coffees) {
		%>
		<tr class="value-tr">
			<td class="value-td"><%=c.getId()%></td>
			<td class="value-td"><%=c.getCoHTP()%></td>
			<td class="value-td"><%=c.getCoName()%></td>
			
			<td class="value-td"><%=c.getCoNumber()%></td>
			 <td class="value-td"><img class="yu"
				src="${pageContext.request.contextPath}/img/<%=c.getCoPictrue()%>" /></td> 
				<td class="value-td"><%=c.getCoPrice()%></td>
			<td class="value-td"><%=c.getKind().getType()%></td>
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
		<form action="" id="form" method="post" enctype="multipart/form-data">
			<button type="button" class="close" id="close">CLOSE</button>
			<div>
				<p id="id-p">ID</p>
				<input type="text" name="id" id="id" class="id" />
			</div>
			
			<div class="box-th">
				<p>HTP</p>
				<input type="text" name="coHTP" id="coHTP" class="coHTP" />
			</div>
			<div class="box-th">
				<p>Name</p>
				<input type="text" name="coName" id="coName" class="coName" />
			</div>
			
			<div class="box-th">
				<p>Number</p>
				<input type="text" name="coNumber" id="coNumber"
					class="coNumber" />
			</div>
			<div class="box-th">
				<p>Picture</p>
				<input type="file" name="filedata" id="filedata"
					class="filedata" />
			</div>
			<div class="box-th">
				<p>Price</p>
				<input type="text" name="coPrice" id="coPrice"
					class="coPrice" />
			</div>
			<div class="box-th">
				<p>Kind</p>
				<input type="text" name="type" id="type" class="type" />
			</div>
			<input type="button" class="submit" value="SUBMIT" />
		</form>
	</div>
	<div class="box-shadow"></div>
</body>
<script type="text/javascript">
	//添加后的消息提示框
	if("${msg.msg}"!=""&&"${msg.msg}"!=null){
		alert("${msg.msg}");
	}
	//关闭窗口
	$("#close").click(function() {
		$(".box").css({
			"display" : "none"
		});

		$(".box-shadow").css({
			"display" : "none"
		});

		/* 清空残留数据 */
		
		$("#bookFilePath").remove();
		$("#bookPhotoPath").remove();
		$("#id").val("");
		$("#coName").val("");
		$("#HTP").val("");
		$("#bookSynopsis").val("");
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
			/* $("#form").attr({
				"action":"${pageContext.request.contextPath}/books/addBook",
			}) */
			 //添加事件
			$(".submit").click(function(){
				var formData = new FormData(document.getElementById("form"));
				$.ajax({
					type:"post",
					url:"${pageContext.request.contextPath}/a-coffees/addCoffee",
					data:formData,
					//将ajax里自动设置头给关闭
					contentType:false,
					//将ajax里面处理数据的请求关闭
					processData:false,
					encType:"multipart/form-data",
					async:false,
					success:function(data){
						alert(data.msg);
						window.location.reload();
					}
				});
			}) 
		}
	})

	/*更新按钮*/
	$(".update").click(function() {
		
		//获取对应的值 填入 表格中
		var id = $(this).parents("tr").find("td").eq(0).html();
		var HTP = $(this).parents("tr").find("td").eq(1).html();
		var Name = $(this).parents("tr").find("td").eq(2).html();
		var Number = $(this).parents("tr").find("td").eq(3).html();
		var Price = $(this).parents("tr").find("td").eq(5).html();
		var type = $(this).parents("tr").find("td").eq(6).html();
		/* var address = $(this).parents("tr").find("td").eq(5).html(); */
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
			$("#coHTP").val(HTP);
			$("#coName").val(Name);
			$("#coNumber").val(Number);
			$("#coPrice").val(Price);
			$("#type").val(type);
			/* $("#address").val(address); */
			/* $("#form").attr({
				"action":"${pageContext.request.contextPath}/books/updateBook",
			}) */
		}
		//更新
		/* $(".submit").click(function(){
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/books/updateBook",
				data:$("#form").serialize(),
				async:false,
				success:function(data){
					alert(data.msg);
					
				}
			});
		}) */
		$(".submit").click(function(){
			var formData = new FormData(document.getElementById("form"));//document.getElementById("form")//$("#form")
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/a-coffees/updateCoffee",
				data:formData,
				//将ajax里自动设置头给关闭
				contentType:false,
				//将ajax里面处理数据的请求关闭
				processData:false,
				encType:"multipart/form-data",
				async:false,
				success:function(data){
					alert(data.msg);
					window.location.reload();
				}
			})
		})
	})
	/*删除按钮*/
	$(".delete").click(function(){
			var id = $(this).parents("tr").find("td").eq(0).html();	
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/a-coffees/deleteCoffee?id="+id,
				async:false,
				success:function(data){
					alert(data.msg);
					window.location.reload();
				}
			});
		})
	
</script>
</html>