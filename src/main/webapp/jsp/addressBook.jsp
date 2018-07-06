<%@page import="team.singal.coffee.pojo.ReceiveInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title>Address Book</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/account-information.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/addressBook.css" />
		<!--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>-->

	</head>

	<body>
		<div class="center col-md-6">
			<div class="title">
				<span class="spans"> ADD New Address</span>
			</div>
			<form id="form">
			
				<div class="choose-place">
					<fieldset class="place-filed">
						<!--省份选择-->
						<select id="prov" onchange="showCity(this)" class="custom-select col-md-3">
							<option>province</option>

						</select>

						<!--城市选择-->
						<select id="city" onchange="showCountry(this)" class="custom-select col-md-3">
							<option>city</option>
						</select>

						<!--县区选择-->
						<select id="country" onchange="selecCountry(this)" class="custom-select col-md-3">
							<option>town</option>
						</select>
					</fieldset>
					<div class="form-group col-md-6 button-sure">
						<button type="button" class="btn met5 button-sure-btn " onClick="showAddr()">Sure</button>
						<label for="addr-show">
						    <input type="text" value="" id="addr-show" class="col-md-4 form-control" name="address1">
						</label>
					</div>
				</div>
				
				<div class="form-row">
					<div class="form-group col-md-6">
						<label >Detailed Address</label>
						<textarea type="text" class="form-control" name="address2" id="inputEmail4" placeholder="It is recommended that you fill in the shipping address accurately."></textarea>
					</div>
					<div class="form-group col-md-6">
						<label >Name of Consignee</label>
						<input type="text" class="form-control" name="rName" id="inputPassword4" placeholder="The length should not exceed 25 characters">
					</div>
				</div>
				<div class="form-group">
					<label >Phone</label>
					<input type="text" class="form-control" id="inputAddress" name="rPhone" placeholder="Please enter valiad phone number">
				</div>
				<div class="form-group">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck">
						<label class="form-check-label" for="gridCheck">
					       Set As the Default Shipping Address
					     </label>
					</div>
				</div>
				<div class="review-add-sort">
					<button type="button" class="btn "  id="addReInfo"> 
			<span style="color: white;">
				SAVE
			</span>
			</button>
				</div>
			</form>
			<!--已经保存的地址-->
			
			
			
			
			
			<div class="save-address">
				<div class="title">
					<span class="spans"> SAVED ADDRESS</span>
				</div>

				<table class="table table-hover">
					<thead>
						<tr>
							
							<th scope="col">Number</th>
							<th scope="col">Consignee</th>
							<th scope="col">Area</th>
							<th scope="col">Phone</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					
					<% 
		List<ReceiveInfo> receiveInfos=(List<ReceiveInfo>)request.getAttribute("receiveInfos");
					int i=0;
					
					if(receiveInfos!=null){
						
					for(ReceiveInfo receiveInfo:receiveInfos){
												
					
				%>
						<tr>
							<th scope="row"><%=i+1 %></th>
							
							<td><%=receiveInfo.getId()%></td>
							<td><%=receiveInfo.getrName() %></td>
							<td><%=receiveInfo.getrAddress() %></td>
							<td><%=receiveInfo.getrPhone() %></td>
							<td style="text-align: center;">
								<div class="action-button">
									<div class="review-add-sort1">
										<button type="button" class=" update" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap" > 
										<span style="color: white;">
											EDIT
										</span>
									</button>
									</div>
									<div class="review-add-sort2">
										<button type="button" class="deletebtn"> 
										<span style="color: white;">
											DELETE
										</span>
									</button>
									</div>
								</div>
							</td>
						</tr>
						<%
						i++;} }%>

					</tbody>
				</table>
			</div>

			<!--修改地址模态框-->
			 <div class="box">
				<div class="model-form">
				<form  id="editform">
					<button type="button" id="close" class="close">CLOSE</button>
					<input type="text" name="id" id="id" class="form-control"/>
					<div class="form-group">
						<label id="id-p">Consignee</label>
						<input type="text" name="rName" id="rName" class="form-control" />
					</div>
					<div class="form-group">
						<label id="id-p">Area</label>
						<input type="text" name="rAddress" id="rAddress" class="form-control" />
					</div>
					<div class="form-group">
						<label id="id-p">Phone</label>
						<input type="text" name="rPhone" id="rPhone" class="form-control" />
					</div>
					<div class="review-add-sort1">
						<button type="button" class="btn" id="editInfo"> 
							<span style="color: white;">
							SAVE
							</span>
						</button>
					</div>
				</form>
				
				</div>
			</div> 
			<div class="box-shadow"></div>

		</div>

		<script src="${pageContext.request.contextPath}/js/city.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/method01.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			/*关闭按钮*/
			$("#close").click(function() {
				$(".box").css({
					"display": "none"
				});

				$(".box-shadow").css({
					"display": "none"
				});
				/* 清空残留数据 */
				$("#rName").val("");
				$("#rAddress").val("");
				$("#rPhone").val("");
//				$(".submit").removeClass("add_submit").removeClass("update_submit");
			})
			$(".deletebtn").click(function(){
				var id = $(this).parents("tr").find("td").eq(0).html();
				 $.ajax({
						type:"post",
						url:"${pageContext.request.contextPath}/reInfos/deleteReceiveInfo?id="+id,
						/* data:$("#editform").serialize(), */
						async:false,
						success : function(data) {
							alert(data.msg);
							window.location.reload();
						}
					});
			})

			$(".update").click(function() {
						/*获取我们对应的 id  type  */
						var id = $(this).parents("tr").find("td").eq(0).html();
						var rName = $(this).parents("tr").find("td").eq(1).html();
						var rAddress = $(this).parents("tr").find("td").eq(2).html();
						var rPhone = $(this).parents("tr").find("td").eq(3).html();

						if($(".box").css("display") == 'none') {

							$(".box").css({
								"display": "block"
							});

							$(".submit").attr({
								"value": "修改"
							});

							$(".submit").addClass("update_submit");

							/* 阴影 */
							$(".box-shadow").css({
								"display": "block"
							});

							//先给前端修改页面显示：修改数据($().val())
							$("#id").val(id);
							$("#rName").val(rName);
							$("#rAddress").val(rAddress);
							$("#rPhone").val(rPhone);
							$("#editInfo").click(function(){
								 /* alert($("#id").innerHTML);  */
								 $.ajax({
										type:"post",
										url:"${pageContext.request.contextPath}/reInfos/updateReceiveInfo",
										data:$("#editform").serialize(),
										async:false,
										success : function(data) {
											alert(data.msg);
											window.location.reload();
										}
									});
							})
							
							

						}
						})
					$("#addReInfo").click(function() {	
						 $.ajax({
								type:"post",
								url:"${pageContext.request.contextPath}/reInfos/addReceiveInfo",
								data:$("#form").serialize(),
								async:false,
								success : function(data) {
									alert(data.msg);
									window.location.reload();
								}
							});
						
						
						
					})
					
					
					
						
						
		</script>
	</body>
</html>