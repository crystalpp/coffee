<%@page import="team.singal.coffee.pojo.Assess"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title>Product Review</title>
		<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/font_719350_a874xvbb9r7/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ProductReview.css" />
	</head>

	<body>

		<div class="center">
			<div class="accordion" id="accordionExample">
				<%-- <div class="card">
					<div class="card-header" id="headingOne">
						<h5 class="mb-0">
		        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		         <div class="collapse-title">
		         	<div class="collapse-title-text">
		         		<span style="color: black;">Coffe Bean1</span>
		         	</div>
			        <div class="collapse-title-star">
				        <i class="iconfont icon-star"></i>
				      	<i class="iconfont icon-star"></i>
				      	<i class="iconfont icon-star"></i>
				      	<i class="iconfont icon-star"></i>
			        </div>
		         </div>
		        
		        </button>
		      </h5>
					</div>

					<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">

							<div class="card-body-content">
								<div class="">
									<h3> Very Good</h3><br />
								</div>
								<div class="card-body-content-date">
									<span>2018/6/24</span>
								</div>
							</div>
							<span> Hotel we stayed in had this brand in their rooms for us to consume during our stay${pageContext.request.contextPath}BEST hotel coffee I have ever had.. </span>

							<div class="card-body-content-action">
								<span>DELETE</span>
							</div>

						</div>
					</div>
				</div> --%>

				<!-- <div class="card">
					<div class="card-header" id="headingTwo">
						<h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        <div class="collapse-title">
		         	<div class="collapse-title-text">
		         		<span style="color: black;">Coffe Bean2</span>
		         	</div>
			        <div class="collapse-title-star">
				        <i class="iconfont icon-star"></i>
				      	<i class="iconfont icon-star"></i>
				      	<i class="iconfont icon-star"></i>
				      	<i class="iconfont icon-star"></i>
			        </div>
		         </div>
        </button>
      </h5>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						<div class="card-body">

							<div class="card-body-content">
								<div class="">
									<h3> Very Bad</h3><br />
								</div>
								<div class="card-body-content-date">
									<span>2018/6/14</span>
								</div>
							</div>
							<span> Hotel we stayed in had this brand in their rooms for us to consume during our stay .. BEST hotel coffee I have ever had.. </span>

							<div class="card-body-content-action">
								<span>DELETE</span>
							</div>

						</div>
					</div>
				</div>
 -->
					 <%
						 List<Assess> assesss=(List<Assess>)request.getAttribute("Assesss");
									int i=0;
									if(assesss!=null){
										for(Assess assess:assesss){
											i++;
											
									
						 %>
				<div class="card">
					<div class="card-header" id="headingThree">
						<h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse<%=i%>" aria-expanded="false" aria-controls="collapseThree">
         <div class="collapse-title">
         			
		         	<div class="collapse-title-text">
		         		<span style="color: black;"><%=assess.getCoffee().getCoName() %></span>
		         	</div>
			        <div class="collapse-title-star">
			        <% 
			          for(int j=0;j<assess.getReviewHot();j++){
			        	%>
				        <i class="iconfont icon-star"></i>
				    <!--  	<i class="iconfont icon-star"></i>
				      	<i class="iconfont icon-star"></i>
				      	<i class="iconfont icon-star"></i>   -->
				      	<%} %> 
			        </div>
		         </div>
        </button>
      </h5>
					</div>
					<div id="collapse<%=i%>" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">

							<div class="card-body-content">
								<div class="">
									<h3> <%=assess.getReviewTitle() %></h3><br />
								</div>
								<div class="card-body-content-date">
									<span><%=assess.getReviewDate() %></span>
								</div>
							</div>
							<span> <%=assess.getContext() %></span>

							<div class="card-body-content-action">
							<span class="Aid"><%=assess.getId()%></span>
								<span class="deleteAssess">DELETE</span>
							</div>

						</div>
					</div>
				</div>
				<%	}
					} %>
			</div>
		</div>

	</body>
	<script type="text/javascript">
	 $(".deleteAssess").click(function(){
		 var id = $(this).parents("div").find("span").eq(3).html();
		 alert(id);
		/* var id =document.getElementById(idi) */ 
		 $.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/reInfos/deleteReceiveInfo?id="+id,
			
				async:false,
				success : function(data) {
					alert(data.msg);
					window.location.reload();
				}
			});
	}) 
	/* function deleteAssess(idi){
		
		var id=document.getElementById(idi).innerHTML;
		alert(id);
		 $.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/assesses/deleteAssess?id="+id,
				async:false,
				success : function(data) {
					alert(data.msg);
					window.location.reload();
				}
			});
		
		
	} */
	</script>
</html>