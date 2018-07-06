<%@page import="team.singal.coffee.pojo.ClubCard"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/card.css"/>
		<title>Card</title>
	</head>
	<body>
		<div class="center">
		
		
		<% List<ClubCard> clubCards=(List<ClubCard>) request.getAttribute("clubCardds");
			if(clubCards!=null){
				for(ClubCard card:clubCards){
					
			
			%>
		
		
			<div class="card-body">
			<div class="card-body-title">
				<div class="">
					<h3>V</h3>
				</div>
				<div class="card-body-title-li onep">
					<span>  <%=card.getcType() %></span>
				</div>
				<div class="card-body-title-li twop">
					<span> <%=card.getcBalance() %></span>
				</div>
				
			</div>
			
			<div class="card-body-cardNum">
				<span><%=card.getcId() %></span>
			</div>
			
			<div class="card-body-cardName">
				<span><%=card.getUser().getUserName() %></span>
			</div>
			
			
			<div class="card-body-cardStore">
				<span>THE COFFEE BEAN & TEA LEAF</span>
			</div>
		</div>
		
		<%}}%>
		</div>
		
		
		
		
	</body>
</html>