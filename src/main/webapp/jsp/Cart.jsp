<%@page import="team.singal.coffee.pojo.Coffee"%>
<%@page import="java.util.List"%>
<%@page import="team.singal.coffee.pojo.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	List<Cart> carts=(List<Cart>) request.getAttribute("carts");
	
%>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Cart</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
			<script src="${pageContext.request.contextPath}/js/testCart.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/model.css" />

	</head>

	<body>

	
				<div class="header-top my-header" id="home" style="margin-top: -30px;">
			<div class="container">
				<div class="header-logo">
					<a href="index.html"><img src="${pageContext.request.contextPath}/img/logo1.png"  class="myimg"/></a>
				</div>
				<div class="top-nav">
					<span class="menu"><img src="${pageContext.request.contextPath}/img/menu-icon.png" alt=""/></span>
					<ul class="nav1">
						<li>
							<a href="${pageContext.request.contextPath}/index.jsp">HOME </a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/jsp/coffee.jsp">COFFEE</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/jsp/ourStory.jsp">STORE</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/jsp/Cart.jsp">CART</a>
						</li>
					
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								My Account<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="${pageContext.request.contextPath}/jsp/account.jsp">My Account</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/jsp/creatAccount.jsp">Create Account</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/jsp/login.jsp">Sign In</a>
								</li>
							</ul>
						</li>

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
						<a href="${pageContext.request.contextPath}/index.jsp">HOME </a>
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
							<button id="showLeftPush"><img src="${pageContext.request.contextPath}/img/menu.png" /><span>Menu</span></button>
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
		
		<div class="container" style="margin-top: 50px;">

			<p style="padding-top: 100px; font-size: 28px;">MAY BAG</p>
			<div class="row">

				<div class="col-md-8 item-cart-list">

					<div class="table-responsive item-cart-list-table">
					 <form action="" method="post" name="myform">
					 <table class="table" id="shopping">
					 
            	<!-- 	<tr>
               
                	<td class="title_1"><input id="allCheckBox" type="checkbox" value="" onclick="selectAll()" /></td>
              <td class="title_2" style="display:none;">id<td>
                <td class="title_3" colspan="2">ITEM</td>
                 <td class="title_4">ITEM</td>
                <td class="title_4">UnitPrice</td>
                <td class="title_5">QTY</td>
                <td class="title_6">SUBTOTAL</td>
                <td class="title_7">ACtION</td>
            </tr> -->
            
		<tr>
		<th class="title_11">
		<input id="allCheckBox" type="checkbox" value="" onclick="selectAll()" />
		</th>
              <th class="title_21" style="display:none">id</th>
                <th class="title_31">ITEM</th>
                 <th class="title_41">Name</th>
                <th class="title_51">UnitPrice</th>
                <th class="title_61">QTY</th>
                <th class="title_71">SUBTOTAL</th>
                <th class="title_81">ACTION</th>
		</tr>
		
            <%
			if(carts!=null){
				int i=1;
				for (Cart cart : carts) {
		%> 
             <tr id="product<%=i%>">
                <td class="cart_td_1">
                <input name="cartCheckBox" type="checkbox" value="product1" onclick="selectSingle()" />
                </td>
                <td class="cart_td_2" style="display:none">
                <%=cart.getId()%>
                </td>
                <td class="cart_td_3">
                <img src="${pageContext.request.contextPath}/img/<%=cart.getCoffee().getCoPictrue() %>" class="img-responsive" alt="shopping" width="136" height="136"/>
                </td>
                <td class="cart_td_4">
                	<a href="#">
                	<%=cart.getCoffee().getCoName() %></a>
                </td>
                <td class="cart_td_5">
                	<%=cart.getCoffee().getCoPrice() %>
                </td>
                <td class="cart_td_6">
                	<i class="iconfont hand" onclick="changeNum('num_<%=i%>','minus')">&#xe6ba;</i>
                	<input id="num_<%=i%>" type="text"  value=<%=cart.getCartNumber() %> class="num_input" readonly="readonly" style="width:30px"/> 
                	<i class="iconfont hand" onclick="changeNum('num_<%=i%>','add')">&#xe6b9;</i>
                </td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product<%=i%>');">删除</a></td>
            </tr>
          
            <%
            i++;
            }}%>	
						</table>
						  </form>
					</div>

				</div>
				<div class="col-md-4 order-sumary">

					<div class="panel panel-default order-sumary-table">
						<div class="panel-heading" style="background-color: white; border: none;">ORDER SUMMARY</div>
						<!-- <div class="total-p center-block">
							<p>$31.05 away from FREE SHIPPING</p>
						</div> -->

						<table class="table">
							<tr>
								<td>Subtotal</td>
								<td>$<label id="totalCart" class="yellow"></label></td>
								
							</tr>
							<tr>
								<td>Order Total</td>
								
								<td class="shopend">$<label id="total" class="yellow"></label><br /></td>
							</tr>

						</table>
						<div class="check-botton">
							<button type="button" class="btn bg-size mycolor center-block"  id="checkbtn" onclick="checkCart()">CHECK OUT</button>
						</div>
						<div class="pay-img">
							<img src="../img/pay-with-paypal.png" class="img-responsive center-block" width="100" height="136" />
						</div>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-md-8 apply-code">

					<div class="panel-group" id="accordion" style="width: 50%;">
						<div class="panel panel-default">
							<div class="panel-heading" style="background-color: white;">
								<h4 class="panel-title">
									Apply Promo Code
									<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseOne" class="right-block" style="float: right; text-decoration: none;">
					<i class="iconfont">&#xe60d;</i>
				</a>
				
			</h4>
			
							</div>
							
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									Enter Promo Code
									<input type="text" class="form-control" placeholder="Enter Promo Code">
									<button type="button" class="btn mycolor">APPLY CODE</button>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="col-md-4">

					<div class="panel panel-default">
						<div class="panel-body">
							<h5>NEED HELP?</h5>
							<p>877.653.1963<br /> info@coffeebean.com
							</p>
						</div>
					</div>

				</div>
			</div>

		</div>
		
		<!--
        	作者：248524426@qq.com
        	时间：2018-06-26
        	描述：推荐
        -->
        <div class="container" style="width: 60%;">
        	
        
		<div class="row">
        <div class="col-md-4">
            <!-- normal -->
            <div class="ih-item square effect3 bottom_to_top" style="text-align: center; background-color: white;">
            	<a href="#">
	                <div class="img">
	              <div class="product-like-img">
				<img src="${pageContext.request.contextPath}/img/18cor_standardcoffeebag_bag-front__0014_espresso_1.jpg"/>
				<div class="product-like-img-descirble" style="text-align: center; background-color: white;">
					<span style="text-align: center;">
						French Deluxe
					</span>
					<br />
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<br />
					<span >
						$12.99
					</span>
				</div>
			</div>
	                </div>
	                <button class="info "> 
	                	<span style="color: white;">
	                		Add To Bag
	                	</span>
	                </button>
            	</a>
            </div>
        </div>
      <div class="col-md-4">
            <!-- normal -->
            <div class="ih-item square effect3 bottom_to_top" style="text-align: center; background-color: white;">
            	<a href="#">
	                <div class="img">
	              <div class="product-like-img">
				<img src="${pageContext.request.contextPath}/img/18cor_standardcoffeebag_bag-front__0014_espresso_1.jpg"/>
				<div class="product-like-img-descirble" style="text-align: center; background-color: white;">
					<span style="text-align: center;">
						French Deluxe
					</span>
					<br />
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<br />
					<span >
						$12.99
					</span>
				</div>
			</div>
	                </div>
	                <button class="info "> 
	                	<span style="color: white;">
	                		Add To Bag
	                	</span>
	                </button>
            	</a>
            </div>
        </div>
      <div class="col-md-4">
            <!-- normal -->
            <div class="ih-item square effect3 bottom_to_top" style="text-align: center; background-color: white;">
            	<a href="#">
	                <div class="img">
	              <div class="product-like-img">
				<img src="${pageContext.request.contextPath}/img/18cor_standardcoffeebag_bag-front__0014_espresso_1.jpg"/>
				<div class="product-like-img-descirble" style="text-align: center; background-color: white;">
					<span style="text-align: center;">
						French Deluxe
					</span>
					<br />
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<i class="iconfont icon-star">&#xe672;</i>
					<br />
					<span >
						$12.99
					</span>
				</div>
			</div>
	                </div>
	                <button class="info "> 
	                	<span style="color: white;">
	                		Add To Bag
	                	</span>
	                </button>
            	</a>
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
										<a href="${pageContext.request.contextPath}/our-story.jsp">
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
<!--
        	作者：248524426@qq.com
        	时间：2018-06-27
        	描述：模态框
        -->
		
<!-- 按钮触发模态框 -->
<!--<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">开始演示模态框</button>-->
<!-- 模态框（Modal） -->
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