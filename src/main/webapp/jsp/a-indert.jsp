<%@page import="team.singal.coffee.pojo.Record"%>
<%@page import="team.singal.coffee.pojo.Coffee"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	List<Record> records = (List<Record>) request.getAttribute("records");
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
	<h1 class="title">Indert</h1>
	<table class="list">
		<th colspan="9">
			<form action="${pageContext.request.contextPath}/a-coffees/findByLikeIndert"
				method="post">
				<input type="text" placeholder="The order number" name="userName"
					id="search-input" class="search-input" /> <input type="submit"
					id="search-button" value="Search"></input>
			</form>
		</th>
		<tr class="title-tr">
			<td>Id</td>
			<td>UserName</td>
			<td>Coffee</td>
			<td>Number</td>
			<td>Consignee</td>
			<td>Consignee's telephone</td>
			<td>Address</td>
			<td>Receiving time</td>
		</tr>

		<%
		if(records!=null){
			for (Record r : records) {
		%>
		<tr class="value-tr">
			<td class="value-td"><%=r.getId()%></td>
			<td class="value-td"><%=r.getUser().getUserName()%></td>
			<td class="value-td"><%=r.getReNumber()%></td>
			<td class="value-td"><%=r.getCoffee().getCoName()%></td>
			<td class="value-td"><%=r.getReceiveInfo().getrName()%></td>
			<td class="value-td"><%=r.getReceiveInfo().getrAddress()%></td>
			<td class="value-td"><%=r.getReceiveInfo().getrPhone()%></td>
			<td class="value-td"><%=r.getReceiveDate()%></td>
			
		<tr>
			<%
				}}
			%>
		
	</table>
	

	<div class="box-shadow"></div>
</body>
<script type="text/javascript">
	//添加后的消息提示框
	if("${msg.msg}"!=""&&"${msg.msg}"!=null){
		alert("${msg.msg}");
	}
</script>
</html>