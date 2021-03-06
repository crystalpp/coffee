<%@page import="team.singal.coffee.pojo.payShow"%>
<%@page import="team.singal.coffee.pojo.ClubCard"%>
<%@page import="team.singal.coffee.pojo.ReceiveInfo"%>
<%@page import="team.singal.coffee.pojo.RecordCart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Pay For Coffee</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/payForCoffee.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/PayForCoffee.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/model.css" />
	</head>
	
	<!--
    	作者：248524426@qq.com
    	时间：2018-06-27
    	描述：支付界面
    -->

	<body>
		<div class="header-top my-header" id="home" style="margin-top: -30px;">
			<div class="container">
				<div class="header-logo">
					<a href="index.html"><img src="../img/logo1.png" class="myimg" /></a>
				</div>
					<div class="top-nav">
				<span class="menu"><img
					src="${pageContext.request.contextPath}/img/menu-icon.png" alt="" /></span>
				<ul class="nav1">
					<li><a href="${pageContext.request.contextPath}/index.jsp">HOME
					</a></li>
					<li><a href="${pageContext.request.contextPath}/jsp/coffee.jsp">COFFEE</a>
					</li>
					<li><a href="${pageContext.request.contextPath}/jsp/ourStory.jsp">STORE</a>
					</li>
					<li><a id="cartTitle">CART</a>
					</li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> My Account<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
						<%-- href="${pageContext.request.contextPath}/jsp/account.jsp" --%>
							<li><a id="myAccountTitle">My Account</a></li>
							<li><a
								href="${pageContext.request.contextPath}/jsp/creatAccount.jsp">Create
									Account</a></li>
							<li><a href="${pageContext.request.contextPath}/jsp/login.jsp">Sign
									In</a></li>
						</ul></li>

					<li>Welcome ${u.userName }</li>

				</ul>
				<!-- script-for-menu -->
				<script>
						$("span.menu").click(function() {
							$("ul.nav1").slideToggle(300, function() {
								// Animation complete.
							});
						});
					</script>
				<!-- /script-for-menu -->
			</div>
				<div class="social-icons">
					<ul>
						<li>
							<a class="login-a" data-toggle="modal" data-target="#myModal"><span class="twit"> </span></a>
						</li>
						<li>
							<a class="login-a" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();"><span class="fb"> </span></a>
						</li>
						<li>
							<a class="login-a" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();"><span class="g"> </span></a>
						</li>

					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!--<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form>
						<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
						<input class="sb-search-submit" type="submit" value="">
						<span class="sb-icon-search"> </span>
					</form>
				</div>
			</div>-->
			<div class="header-info-right">
				<div class="header cbp-spmenu-push">
					<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
						<a href="">HOME </a>
						<a href="">COFFEE</a>
						<a href="">STORE</a>
						<a href="">CART</a>
						<a href="">My Account</a>
					</nav>
					<!--script-nav -->
					<script>
						$("span.menu").click(function() {
							$("ul.navigatoin").slideToggle("300", function() {});
						});
					</script>
					<script type="text/javascript">
						jQuery(document).ready(function($) {
							$(".scroll").click(function(event) {
								event.preventDefault();
								$('html,body').animate({
									scrollTop: $(this.hash).offset().top
								}, 1000);
							});
						});
					</script>
					<div class="clearfix"> </div>
					<!-- /script-nav -->
					<div class="main">
						<section class="buttonset">
							<button id="showLeftPush"><img src="../img/menu.png" /><span>Menu</span></button>
						</section>
					</div>
					<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
					<script src="../js/classie.js"></script>
					<script>
						var menuLeft = document.getElementById('cbp-spmenu-s1'),
							showLeftPush = document.getElementById('showLeftPush'),
							body = document.body;

						showLeftPush.onclick = function() {
							classie.toggle(this, 'active');
							classie.toggle(body, 'cbp-spmenu-push-toright');
							classie.toggle(menuLeft, 'cbp-spmenu-open');
							disableOther('showLeftPush');
						};
					</script>
				</div>
			</div>
		</div>
		<!--
        	作者：248524426@qq.com
        	时间：2018-06-27
        	描述：模态框
        -->
		
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">LOGIN</h4>
            </div>
            <div class="modal-body">
            	
            	<div class="container-fluid">
			<div class="row">

				<div class="col-md-4">
					<!--<img src="../img/account-sidebar.jpg" class="img-responsive" alt="Cinque Terre" height="100%">-->
				</div>
				<div class="col-md-8">
					<div class="login-block center-block">
							
						<img src="${pageContext.request.contextPath}/img/cbtl-logo-account.png" class="img-responsive" alt="Cinque Terre">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<button type="button" class="btn mycolor1">LOGIN WITH FACEBOOK<!--<i class="iconfont left-block">&#xe612;<i>--></button>
						
							</div>
							<div class="form-group">
								<p class="content-p">
							OR LOG IN WITH
							</p>
							</div>
						
							<div class="form-group">
								<input required="required" class="form-control1" />
								<label class="form-label">Email   </label>
							</div>
							<div class="form-group">
								<input type="password" required="required" class="form-control1" />
								<label class="form-label">Password</label>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label>
          <input type="checkbox">Remember Me <a>What this?</a>
        </label>
									</div>
								</div>
							</div>
							<div class="form-group">
							
									<button type="submit" class="btn mycolor">LOGIN</button>
								
							</div>
							<div class="form-group" style="margin-top: 0; padding: 0;">
								<div class="col-sm-offset-2 col-sm-10 forget_password_link">
									<a class="text-center">Forget Your Password?</a>
								</div>
							</div>
						
						</form>
							<div class="form-group-content">
								
									<h4>Don’t have an account? <a href="creatAccount.html">Create Account </a></h4>
									<p class="text-center">By clicking continue with Facebook or Log In, you agree to our Terms of Use and acknowledge that you have read our Privacy Policy</p>
								
							</div>
					</div>

				</div>
			</div>
		</div>
            </div>
            <!--<div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>-->
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

		
		<!--
        	作者：248524426@qq.com
        	时间：2018-06-27
        	描述：支付信息
        -->
		<div class="container" style="padding-top: 50px; margin-top: 50px;">
			<div class="row">
			<div class="col-xs-12 col-md-9">
					<div class="progress">
						<div class="progress-bar" id="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
							<!--<span class="sr-only">40% 完成</span>-->
						</div>
					</div>
					<div class="address-table" id="table-address">
						
					
					<div class="address-list-ul">
						<div class="table-address" >
							<table class="table table-striped">
								<thead>
									<tr>
										<th>select</th>
										<th style="display: none;">id</th>
										<th>Name</th>
										<th>Address</th>
										<th>PhoneNumber</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								<%
								payShow payShow=(payShow)request.getAttribute("RecordCarts");
								double totalPrice=0;
							
										
								for(int i=0;i<payShow.getReceiveInfoAddress().size();i++){
										
									
								%>
									<tr>
										<td><input type="checkbox" name="cartCheckBox" id="" value="" onclick="choose(this)" /></td>
										<td style="display: none;"><%= payShow.getReceiveInfoId().get(i)  %></td>
										<td><%=payShow.getReceiveInfoName().get(i) %> </td>
										<td><%=payShow.getReceiveInfoAddress().get(i)%></td>
										<td><%=payShow.getReceiveInfoPhoneNumber().get(i) %></td>
										<td><a><i class="iconfont">&#xe69e;</i></a></td>
									</tr>
									<%
									}
								
									%>
									<!-- <tr>
										<td><input type="checkbox" name="cartCheckBox" id="" value="" onclick="choose(this)"/></td>
										<td style="display: none;">0001</td>
										<td>YanPing Pi</td>
										<td>ChongQing China</td>
										<td>18223752574</td>
										<td><a><i class="iconfont">&#xe69e;</i></a></td>
									</tr>
									<tr>
										<td><input type="checkbox" name="cartCheckBox" id="" value="" onclick="choose(this)"/></td>
										<td style="display: none;">0001</td>
										<td>Chun Hu</td>
										<td>ChongQing China</td>
										<td>18223752574</td>
										<td><a><i class="iconfont">&#xe69e;</i></a></td>
									</tr> -->
								</tbody>
							</table>
						</div>

					</div>
					<div class="address-action">
						<div class="address-action-btn">
							<button class="btn mycolor" type="button" onclick="submitAddrss()">Submit</button>
						</div>

						<div class="address-action-link">
							Edit address
						</div>

					</div>
					</div>
					<div class="card-table" id="card-table" style="display: none;">
						<div class="address-list-ul">
						<div class="table-address">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>select</th>
										<th style="display:none">id</th>
										<th>CardNumber</th>
										<th>type</th>
										<th>Balance</th>
									
										<th></th>
									</tr>
								</thead>
								<tbody>
								<%
								for(int i=0;i<payShow.getClubCardId().size();i++){
	 totalPrice+=Double.parseDouble(payShow.getCoffesPrice().get(i))*payShow.getCoffesNum().get(i); 
			
									
								%>
									<tr>
										<td><input type="checkbox" name="checkboxCard" id="checkboxCard" value=""  onclick="chooseCard(this)" /></td>
										<td style="display:none"><%=payShow.getClubCardId().get(i) %></td>
										<td><%=payShow.getClubCardNumber().get(i) %></td>
										<td><%=payShow.getClubCardType().get(i)%></td>
										<td><%=payShow.getClubCardBalance().get(i) %></td>
										
										<td><a><i class="iconfont">&#xe685;</i></a></td>
									</tr>
									<%
									}
									%>
								</tbody>
							</table>
						</div>

					</div>
						<div class="address-action">
						<div class="address-action-btn">
							<button class="btn mycolor" onclick="submitCard(<%=totalPrice%>)">Submit</button>
						</div>

						<div class="address-action-link">
							Recharge
						</div>
					</div>

				</div>
				</div>

				<div class="col-xs-12 col-md-3">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">

								<h4 class="text-center">
					ORDER SUMMARY
				</h4>
				
								<div class="panel-title">
									<span><%=payShow.getCoffesNum().size()%> ITEM IN CART</span>
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
										<i class="iconfont">&#xe60d;</i>
									</a>
								</div>

							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
								<table class="table">
								<thead>
								<tr>
								<th>ITEM<th>
								<th><th>
								<th>Qty<th>
								<th></th>
								</tr>
								</thead>
								
								<tbody>
								<% 
								for(int i=0;i<payShow.getCoffesPrice().size();i++){
									
								%>
								<tr>
								<td>
								<div class="coffee-item-img">
								<img src="${pageContext.request.contextPath}/img/<%=payShow.getCoffesPic().get(i) %>" class="img-responsive" width="56" height="46" />
										</div>
								</td>
								<td>
								<h5><%=payShow.getCoffesname().get(i) %></h5>
								</td>
								<td><span id="">
						<%=payShow.getCoffesNum().get(i) %>
					</span></td>
								<td><%=payShow.getCoffesPrice().get(i) %></td>
								</tr>
								
								<%	
								} %>
								</tbody>
								</table>
								
								
								
									<!-- <div class="col-md-3">
										<div class="coffee-item-img">
											<img src="${pageContext.request.contextPath}/img/1068_1lb_whole_bean_l.jpg" />
										</div>

									</div>
									<div class="col-md-6">
										<h5>Colombia Nariño Dark Coffee</h5>
										<span id="">
						Qty:
					</span>
										<input type="number" name="Qty" class="Qty" placeholder="1" />
									</div>
									<div class="col-md-3">
										<input type="text" name="QtyPirce" class="QtyPirce" placeholder="$14" />
									</div>
								</div> -->
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
		</div>

		<!--
	作者：248524426@qq.com
	时间：2018-06-26
	描述：region-rewards
-->

		<div class="region-rewards">

			<div class="row">
				<div class="col-xs-12 col-sm-3 col-lg-3">
					<div class="region-img right-block">
						<img class="lazyload" src="${pageContext.request.contextPath}/img/cbtl_iphone_app_screen_rewards.png" />
					</div>

				</div>

				<div class="col-xs-12 col-sm-5 col-lg-5">
					<div class="flex-col-wrap"><img class="rewards-icon" src="${pageContext.request.contextPath}/img/coffeebean_rewards_medium_icon.png" />
						<div class="content-wrap">
							<p><em>The Coffee Bean®</em></p>

							<p><em>Rewards</em></p>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-lg-4">

					<p>
						<a class="rewards-link" href="" target="_blank">Go To Rewards Site
							<i class="iconfont">&#xe61b;</i></a>
					</p>

				</div>
			</div>

		</div>
		<!--
	作者：248524426@qq.com
	时间：2018-06-26
	描述：页脚
-->
		<footer role="contentinfo">
			<div class="container" style="margin: 0; padding: 0;">

				<!-- <h2 class="visually-hidden" id="block-cbtl-blend-footer-menu">Footer menu</h2>-->
				<ul class="row" style="margin: 0; padding: 0;">
					<li class="col-md-3 ">
						<div class="sub-menu-wrap sub-menu-wrap-level--0">
							<div class="container">
								<ul class="menu menu-level--1">
									<li class="menu-item-title">
										<a href="https://www.coffeebean.com/our-story">
											<span class="menu-border">Our Company</span>
										</a>
									</li>
									<li class="careers menu-item">
										<a href="">
											Careers
										</a>

									</li>
									<li class="for-business-and-grocery menu-item">
										<a href="">
											For Business and Grocery
										</a>

									</li>
									<li class="caring-cup menu-item">
										<a href="">
											Caring Cup
										</a>

									</li>
									<li class="franchising menu-item">
										<a href="">
											Franchising
										</a>

									</li>
									<li class="store-locator menu-item">
										<a href="">
											Store Locator
										</a>

									</li>
								</ul>

							</div>
						</div>
					</li>
					<li class="col-md-3">

						<div class="container">
							<ul class="menu menu-level--1">
								<li class="menu-item-title">
									<a href="">
										<span class="menu-border">Site Terms</span>
									</a>
								</li>
								<li class="terms-of-use menu-item">
									<a href="">
										Terms of Use
									</a>

								</li>
								<li class="gift-card-terms menu-item">
									<a href="">
										Gift Card Terms
									</a>

								</li>
								<li class="privacy-policy menu-item">
									<a href="">
										Privacy Policy
									</a>

								</li>
								<li class="affiliates menu-item">
									<a href="">
										Affiliates
									</a>

								</li>
								<li class="student-discount menu-item">
									<a href="">
										Student Discount
									</a>

								</li>
								<li class="california-transparency-in-supply-chain menu-item">
									<a href="">
										California Transparency in Supply Chain
									</a>

								</li>
							</ul>

						</div>

					</li>
					<li class="col-md-3">

						<div class="sub-menu-wrap sub-menu-wrap-level--0">
							<div class="container">
								<ul class="menu menu-level--1">
									<li class="menu-item-title">
										<a href="">
											<span class="menu-border">Customer Care</span>
										</a>
									</li>
									<li class="contact-us menu-item">
										<a href="">
											Contact Us
										</a>

									</li>
									<li class="returns menu-item">
										<a href="">
											Returns
										</a>

									</li>
									<li class="shipping menu-item">
										<a href="">
											Shipping
										</a>

									</li>
									<li class="faq&#039;s menu-item">
										<a href="">
											FAQ&#039;s
										</a>

									</li>
								</ul>

							</div>
						</div>
					</li>

					<li class="col-md-3">
						<div id="block-socialicons" class="block-block-content">

							<div class="clearfix field-name-field-block-content">
								<div class="listrak-wrapper">
									<form accept-charset="UTF-8" action="" method="post"><label for="email">Join our email list for 10% off your first order</label>
										<div class="flex-wrap">
											<div class="input-group input-group-lg">

												<input type="text" class="form-control" placeholder="Email Address">
												<span class="input-group-addon"><i class="iconfont">&#xe61b;</i></span>
											</div>
										</div>
									</form>
								</div>
							</div>

							<div class="field-link-field-block-content">
								<div class="field__item">
									<div class="paragraph-view-mode-default">
										<a href="" target="_blank">
											<i class="iconfont">&#xe6f3;</i>

										</a>
									</div>
								</div>
								<div class="field__item">
									<div class="paragraph-view-mode-default">
										<a href="https://instagram.com/thecoffeebean" target="_blank">
											<i class="iconfont">&#xecb3;</i>
										</a>
									</div>
								</div>
								<div class="field__item">
									<div class="paragraph-view-mode-default">
										<a href="https://twitter.com/#!/TheCoffeeBean" target="_blank">
											<i class="iconfont">&#xe86e;</i>
										</a>
									</div>
								</div>
								<div class="field__item">
									<div class="paragraph-view-mode-default">
										<a href="https://pinterest.com/thecoffeebean/" target="_blank">

											<i class="iconfont">&#xe6bf;</i>

										</a>
									</div>
								</div>
								<div class="field__item">
									<div class="paragraph-view-mode-default">
										<a href="https://www.youtube.com/TheCoffeeBeanTeaLeaf" target="_blank">

											<i class="iconfont">&#xe64b;</i>
										</a>
									</div>
								</div>
							</div>

						</div>
					</li>
				</ul>

			</div>
			<div id="block-copyrightblock" class="row">

				<div class="copyright center-block" style="width: 95%;">
					<div class="copyright-wrapper col-md-7">
						<div class="company-logo">
							<!--<img class="lazyload" src="" alt="International Coffee &amp; Tea, LLC doing business as The Coffee Bean &amp; Tea Leaf®…">-->
							<h4>THE COFFEE BEAN & TEA LEAF</h4>
						</div>
						<div class="copyright-content">
							<p>© 2018 International Coffee &amp; Tea, LLC doing business as The Coffee Bean &amp; Tea Leaf®…</p>
						</div>
					</div>
					<div class="copyright-legal col-md-5">
						<p class="text-right">THE COFFEE BEAN &amp; TEA LEAF, THE COFFEE BEAN, CBTL, THE ORIGINAL ICE BLENDED, ICE BLENDED and THE PURPLE STRAW, and their logos and other marks are registered trademarks of International Coffee &amp; Tea, LLC in the United States and may be registered in other countries.</p>

					</div>
				</div>
			</div>
			<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		</footer>

	</body>
<script type="text/javascript">
			function btn(index){
				console.log(index);
				var arr = document.getElementsByClassName("product-feature-tile");
				var imgs = document.getElementsByClassName("img");
				for(var i = 0; i < arr.length; i++){
					arr[i].setAttribute("class", "product-feature-tile");
					var cla = imgs[i].getAttribute("class");
					cla = cla.replace("show", "hide");
					imgs[i].setAttribute("class", cla);
				}
				arr[index].setAttribute("class", "product-feature-tile " + "PF");

			    var pf = document.getElementById("PF");
			    var cl = pf.getAttribute("class");
			    
			    var cla = imgs[index].getAttribute("class");
				cla = cla.replace("hide", "show");
				imgs[index].setAttribute("class", cla);
			    
			}  
			
		 $("#addReview").click(function(){
			 var u="${u.userName}"
			 /* alert(u); */
			if(u==""){
				alert("Please login");
				var id= $(".MycoffeeId").val();
				var coffeeKind=$(".coffeeKind").val();
				
				/* request.getSession.setAttribute("coffeeId",id); */
				
				<% session.setAttribute("backUrl", "http://localhost:8080/coffee/coffees/showCoffeeDetail?"+request.getQueryString());
				  System.out.println("地址Url是："+request.getRequestURL());
			        System.out.println("地址Url后所带的参数是："+request.getQueryString());
				/* session.setAttribute("coffeeId", id); */  %>
				window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
			}
			/* $.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/coffee/showCoffeeDetail?coffeeId="+coffeeId,
				async:true,
				success : function(data) {
					alert(data);
				}
			}); */
		}) 
		
		var num = 0;
    function choseStar(starNode){
        //清除所有的红色样式
        $("#starDiv > span").removeClass("redStar");
        //给之前的star添加红色
        var preStarts = $(starNode).prevAll();
        $(preStarts).addClass("redStar");
        //当前的star添加红色
        $(starNode).addClass("redStar");
        //顺便记录选中星星的个数
        num = preStarts.length + 1;
      /*   alert("您选中了"+num+"颗星"); */
       var psel = document.getElementById("reviewHot");
      psel.value=num;
    }
		
		 $("#sendReview").click(function(){
			 $.ajax({
					type:"post",
					url:"${pageContext.request.contextPath}/assesses/addReview",
					data:$("#form").serialize(),
					async:false,
					success : function(data) {
						alert(data.msg);
						window.location.reload();
					}
				});
		 })
		
		 $("#myAccountTitle").click(function(){
			 var u="${u.userName}"
				 /* alert(u); */
				if(u==""){
					alert("Please login");
					<% session.setAttribute("backUrl", "http://localhost:8080/coffee/coffees/showCoffeeDetail?"+request.getQueryString());
					   %>
					window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
				}
				else{
					window.location.href="${pageContext.request.contextPath}/jsp/account.jsp";
				}
		 })
		 
		  $("#cartTitle").click(function(){
			 var u="${u.userName}"
				 /* alert(u); */
				if(u==""){
					alert("Please login");
					<% session.setAttribute("backUrl", "http://localhost:8080/coffee/coffees/showCoffeeDetail?"+request.getQueryString());
					   %>
					window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
				}
				else{
					/* window.location.href="${pageContext.request.contextPath}/carts/findAll"; */
					var iframes = document.getElementById("cartTitle");
					/* 点击访问 获取用户接口 ，成功跳转 成功页面显示 */
					iframes.href = "${pageContext.request.contextPath}/carts/findAll";
				}
		 })
		 
	 $("#addBag").click(function(){
		 
		 var u="${u.userName}"
			 /* alert(u); */
			if(u==""){
				alert("Please login");
				var id= $(".MycoffeeId").val();
				var coffeeKind=$(".coffeeKind").val();
				
				/* request.getSession.setAttribute("coffeeId",id); */
				
				<% session.setAttribute("backUrl", "http://localhost:8080/coffee/coffees/showCoffeeDetail?"+request.getQueryString());
				 /*  System.out.println("地址Url是："+request.getRequestURL());
			        System.out.println("地址Url后所带的参数是："+request.getQueryString()); */
				/* session.setAttribute("coffeeId", id); */  %>
				window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
			}
		 
			else{
				var cartNumber = $("#cartNumber").val();
				var coffeeCartId = $("#coffeeCartId").val();
					 $.ajax({
							type:"post",
							url:"${pageContext.request.contextPath}/carts/addCart?cartNumber="+cartNumber+"&&coffeeCartId="+coffeeCartId,
							async:false,
							success : function(data) {
								alert(data.msg);
								window.location.reload();
							}
						});
			}
		 })	
			
		</script>
</html>