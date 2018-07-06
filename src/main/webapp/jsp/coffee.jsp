<%@page import="team.singal.coffee.pojo.Coffee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<Coffee> coffees = (List<Coffee>) request.getAttribute("coffees");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta charset="UTF-8">
<title>Coffee List</title>

<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/coffeeList.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/model.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/font_719350_a874xvbb9r7/iconfont.css" />
<script type="application/x-javascript">
	
	
	
	
	
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		




</script>
</head>

<body>
	<!--
        	作者：248524426@qq.com
        	时间：2018-06-26
        	描述：header
        -->
	<div class="header-top my-header" id="home" style="margin-top: -50px;">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><img
					src="${pageContext.request.contextPath}/img/logo1.png"
					class="myimg" /></a>
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
					<li><a class="login-a" data-toggle="modal"
						data-target="#myModal"><span class="twit"> </span></a></li>
					<li><a class="login-a" data-toggle="modal"
						href="javascript:void(0)" onclick="openLoginModal();"><span
							class="fb"> </span></a></li>
					<li><a class="login-a" data-toggle="modal"
						href="javascript:void(0)" onclick="openLoginModal();"><span
							class="g"> </span></a></li>

				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- <div class="search-box">
				<div id="sb-search" class="sb-search">
					<form id="form">
						<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" >
						<button class="sb-search-submit" type="button"  id="search"></button>
						<span class="sb-icon-search"> </span>
					</form>
				</div>
			</div> -->
		<div class="header-info-right">
			<div class="header cbp-spmenu-push">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
					id="cbp-spmenu-s1"> <a
					href="${pageContext.request.contextPath}/../index.jsp">HOME </a> <a
					href="${pageContext.request.contextPath}/jsp/coffee.jsp">COFFEE</a> <a
					href="${pageContext.request.contextPath}/jsp/ourStory.jsp">STORE</a> <a
					href="${pageContext.request.contextPath}/jsp/cart.jsp">CART</a> <a
					href="${pageContext.request.contextPath}/jsp/account.jsp">My Account</a> </nav>
					
				<!--script-nav -->
				<script>
					$("span.menu").click(function() {
						$("ul.navigatoin").slideToggle("300", function() {
						});
					});
				</script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event) {
							event.preventDefault();
							$('html,body').animate({
								scrollTop : $(this.hash).offset().top
							}, 1000);
						});
					});
				</script>
				<div class="clearfix"></div>
				<!-- /script-nav -->
				<div class="main">
					<section class="buttonset">
					<button id="showLeftPush">
						<img src="${pageContext.request.contextPath}/img/menu.png" /><span>Menu</span>
					</button>
					</section>
				</div>
				<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
				<script src="${pageContext.request.contextPath}/js/classie.js"></script>
				<script>
					var menuLeft = document.getElementById('cbp-spmenu-s1'), showLeftPush = document
							.getElementById('showLeftPush'), body = document.body;

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

	<!-- 按钮触发模态框 -->
	<!--<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">开始演示模态框</button>-->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">LOGIN</h4>
				</div>
				<div class="modal-body">

					<div class="container-fluid">
						<div class="row">

							<div class="col-md-4">
								<!--<img src="${pageContext.request.contextPath}/img/account-sidebar.jpg" class="img-responsive" alt="Cinque Terre" height="100%">-->
							</div>
							<div class="col-md-8">
								<div class="login-block center-block">

									<img
										src="${pageContext.request.contextPath}/img/cbtl-logo-account.png"
										class="img-responsive" alt="Cinque Terre">
									<form class="form-horizontal" role="form">
										<div class="form-group">
											<button type="button" class="btn mycolor1">
												LOGIN WITH FACEBOOK
												<!--<i class="iconfont left-block">&#xe612;<i>-->
											</button>

										</div>
										<div class="form-group">
											<p class="content-p">OR LOG IN WITH</p>
										</div>

										<div class="form-group">
											<input required="required" class="form-control1" /> <label
												class="form-label">Email </label>
										</div>
										<div class="form-group">
											<input type="password" required="required"
												class="form-control1" /> <label class="form-label">Password</label>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<div class="checkbox">
													<label> <input type="checkbox">Remember Me
														<a>What this?</a>
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

										<!-- <h4>Don’t have an account? <a href="creatAccount.html">Create Account </a></h4> -->
										<p class="text-center">By clicking continue with Facebook
											or Log In, you agree to our Terms of Use and acknowledge that
											you have read our Privacy Policy</p>

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
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>


	<div calss="categrory-view">
		<div id="icon-menu">
			<ul>
				<li><a id="cbtl-capsule" href=""><i
						class="iconfont icon-tea">&#xe60d;</i><br />Capsules</a></li>
				<li><a id="coffee" href=""><i class="iconfont">&#xe60d;</i><br />Coffee</a>
				</li>
				<li><a id="tea" href=""><i class="iconfont">&#xe614;</i><br />Tea</a>
				</li>
				<li><a id="powders" href=""><i class="iconfont">&#xe60d;</i><br />Powders</a>
				</li>
				<li><a id="equipment" href=""><i class="iconfont">&#xe60d;</i><br />Equipment</a>
				</li>
				<li><a id="drinkware" href=""><i class="iconfont">&#xe60d;</i><br />Drinkware</a>
				</li>
				<li><a id="gift-cards" href=""><i class="iconfont">&#xe60d;</i><br />Gift
						Cards</a></li>
			</ul>
		</div>

		<div class="categrory-header">
			<div class="category-image">
				<div class="page-main">
					<div class="page-title-wrapper">
						<h1 class="page-title" id="page-title-heading">COFFEE</h1>
					</div>
					<div class="category-despcription">
						<div id="wrapper">
							<section id="main">
							<div class="inner">
								<div class="content">
									<div class="grid-bottom">
										<p>
											<strong>We know where every bean comes from. </strong><i>The
												Coffee Bean &amp; Tea Leaf <sup>®</sup>
											</i> brand’s high standards make our coffee uniquely and
											uniformly delicious no matter which location you visit,
											anywhere in the world. Our Master Roaster has employed state
											of the art techniques and expert instincts to preserve the
											beloved ritual of coffee drinking.
										</p>
										<p>
											<br /> <br />
										</p>
										<p>
											<span style="color: #ffffff; font-size: large;"><strong>BULK
													DEAL: Purchase <span style="text-decoration: underline;"><em>ANY</em></span>
													<em>six</em>,<i> </i>1lb or 2lb bags and save 25% Use promo
													code: COFFEE6
											</strong> </span>
										</p>
									</div>
								</div>
							</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="padding-top: 50px;">

		<div class="row">
			<div class="col-md-3">
				<div class="block-title" data-count="0">
					<strong data-role="title">Refine</strong>
				</div>
				<div class="filter-content">
					<div data-role="collapsible" class="filter-options-item">
						<div data-role="title" class="filter-options-title">Stock</div>
						<div data-role="content" class="filter-options-content">
							<ol class="items am_shopby_filter_items_stock">
								<form data-amshopby-filter="stock"
									data-amshopby-filter-request-var="stock">
									<li class="item" data-label="In Stock"><a class="" href=""
										rel="nofollow"> <input name="s" value="1" type="radio"
											style="display: none;" /> <span class="label">In
												Stock</span> <span class="count">43 items<span
												class="filter-count-label"> </span></a></li>
									<li class="item" data-label="Out of Stock"><a
										class="am_shopby_filter_item_5b2f3bd3a502b" href=""
										rel="nofollow"> <input name="s" value="2" type="radio"
											style="display: none;" /> <span class="label">Out of
												Stock</span> <span class="count">1 item <span
												class="filter-count-label"> </span></a></li>
								</form>
							</ol>
						</div>
						<div data-role="title" class="filter-options-title">SUBSCRIPTION(SAVE%5)</div>
						<div data-role="content" class="filter-options-content">
							<ol class="items am_shopby_filter_items_stock">
								<form data-amshopby-filter="stock"
									data-amshopby-filter-request-var="stock">
									<li class="item" data-label="In Stock"><a
										class="am_shopby_filter_item_5b2f3bd3a4d1b" href=""
										rel="nofollow"> <input name="s" value="1" type="radio"
											style="display: none;" /> <span class="label">SUBSCRIPTION(SAVE%5)</span>
											<span class="count">12 items<span
												class="filter-count-label"> </span></a></li>
								</form>
							</ol>
						</div>
						<div data-role="title" class="filter-options-title">SERVING
							TYPE</div>
						<div data-role="content" class="filter-options-content">
							<ol class="items am_shopby_filter_items_stock">
								<form data-amshopby-filter="stock"
									data-amshopby-filter-request-var="stock">
									<li class="item" data-label="In Stock"><a
										class="am_shopby_filter_item_5b2f3bd3a4d1b" href=""
										rel="nofollow"> <input name="s" value="1" type="radio"
											style="display: none;" /> <span class="label">SERVING
												TYPE</span> <span class="count">12 items <span
												class="filter-count-label"> </span></a></li>
								</form>
							</ol>
						</div>
						<div data-role="title" class="filter-options-title">CAFFEINE</div>
						<div data-role="content" class="filter-options-content">
							<ol class="items am_shopby_filter_items_stock">
								<form data-amshopby-filter="stock"
									data-amshopby-filter-request-var="stock">
									<li class="item" data-label="In Stock"><a class="" href=""
										rel="nofollow"> <input name="s" value="1" type="radio"
											style="display: none;" /> <span class="label">CAFFEINE</span>
											<span class="count">12 items <span
												class="filter-count-label"> </span></a></li>
								</form>
							</ol>
						</div>
						<div data-role="title" class="filter-options-title">ROAST</div>
						<div data-role="content" class="filter-options-content">
							<ol class="items am_shopby_filter_items_stock">
								<form data-amshopby-filter="stock"
									data-amshopby-filter-request-var="stock">
									<li class="item" data-label="In Stock"><a class="" href=""
										rel="nofollow"> <input name="s" value="1" type="radio"
											style="display: none;" /> <span class="label">ROAST</span> <span
											class="count">12 items <span
												class="filter-count-label"> </span></a></li>
								</form>
							</ol>
						</div>

					</div>

				</div>


			</div>
			<div class="col-md-9">
				<div class="tolbar toolbar-product">
					<div class="pages">
						<!--<strong class="pages-label" id="paging-label">Page</strong>-->
						<ul>
							<li class="item current"><strong class="page"> <span
									class="label">You're currently reading page</span> <span>1</span>
							</strong></li>
							<li class="item"><a class="page" href=""> <span
									class="label">Page</span> <span>2</span>
							</a></li>
							<li class="pages-item-next"><a class="action-next" href="">
									<span class="label">Page</span> <span>Next</span>
							</a></li>
						</ul>
					</div>
					<form id="form">
						<div class="tolbar-sorter">
							<select id="sorter" data-role="sorter" class="sorter-options" name=" sortCoffee" >
								<option value="1">Price</option>
								<option value="2" selected="selected">Best
									Sellers</option>
							</select> 
							<a title="Set Ascending Direction" href="#"
								class="action sorter-action sort-desc"
								data-role="direction-switcher" data-value="asc"   id="sortCoffee"> <i
								class="iconfont">&#xe624;</i>
							</a>
						</div>
					</form>
				</div>

				<!--
                            	作者：248524426@qq.com
                            	时间：2018-06-26
                            	描述：商品列表
                            -->
				<div class="item-list" style="width: 100%;">
					<div class="row" id="idid">



						<%-- <div class="col-sm-4">
							<!-- normal -->
							<div class="ih-item square effect3 bottom_to_top"
								style="text-align: center; background-color: white;">
								<a href="#">
									<div class="img">
										<div class="product-like-img">
											<img src="${pageContext.request.contextPath}/img/001.jpg" />
											<div class="product-like-img-descirble"
												style="text-align: center; background-color: white;">
												<span style="text-align: center;"> French Deluxe </span> <br />
												<i class="iconfont icon-star">&#xe672;</i> <i
													class="iconfont icon-star">&#xe672;</i> <i
													class="iconfont icon-star">&#xe672;</i> <i
													class="iconfont icon-star">&#xe672;</i> <i
													class="iconfont icon-star">&#xe672;</i> <br /> <span>
													$12.99 </span>
											</div>
										</div>
									</div>
									<button class="info ">
										<span style="color: white;"> Add To Bag </span>
									</button>
								</a>
							</div>
						</div> --%>


					</div>
					<!--
    	作者：248524426@qq.com
    	时间：2018-06-26
    	描述：row end
    -->
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
					<img class="lazyload"
						src="${pageContext.request.contextPath}/img/cbtl_iphone_app_screen_rewards.png" />
				</div>

			</div>

			<div class="col-xs-12 col-sm-5 col-lg-5">
				<div class="flex-col-wrap">
					<img class="rewards-icon"
						src="${pageContext.request.contextPath}/img/coffeebean_rewards_medium_icon.png" />
					<div class="content-wrap">
						<p>
							<em>The Coffee Bean®</em>
						</p>

						<p>
							<em>Rewards</em>
						</p>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-4 col-lg-4">

				<p>
					<a class="rewards-link" href="" target="_blank">Go To Rewards
						Site <i class="iconfont">&#xe61b;</i>
					</a>
				</p>

			</div>
		</div>

	</div>
	<!--
        	作者：offline
        	时间：2018-06-25
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
							<li class="menu-item-title"><a
								href="https://www.coffeebean.com/our-story"> <span
									class="menu-border">Our Company</span>
							</a></li>
							<li class="careers menu-item"><a href=""> Careers </a></li>
							<li class="for-business-and-grocery menu-item"><a href="">
									For Business and Grocery </a></li>
							<li class="caring-cup menu-item"><a href=""> Caring Cup
							</a></li>
							<li class="franchising menu-item"><a href="">
									Franchising </a></li>
							<li class="store-locator menu-item"><a href=""> Store
									Locator </a></li>
						</ul>

					</div>
				</div>
			</li>
			<li class="col-md-3">

				<div class="container">
					<ul class="menu menu-level--1">
						<li class="menu-item-title"><a href=""> <span
								class="menu-border">Site Terms</span>
						</a></li>
						<li class="terms-of-use menu-item"><a href=""> Terms of
								Use </a></li>
						<li class="gift-card-terms menu-item"><a href=""> Gift
								Card Terms </a></li>
						<li class="privacy-policy menu-item"><a href=""> Privacy
								Policy </a></li>
						<li class="affiliates menu-item"><a href=""> Affiliates </a>

						</li>
						<li class="student-discount menu-item"><a href="">
								Student Discount </a></li>
						<li class="california-transparency-in-supply-chain menu-item">
							<a href=""> California Transparency in Supply Chain </a>

						</li>
					</ul>

				</div>

			</li>
			<li class="col-md-3">

				<div class="sub-menu-wrap sub-menu-wrap-level--0">
					<div class="container">
						<ul class="menu menu-level--1">
							<li class="menu-item-title"><a href=""> <span
									class="menu-border">Customer Care</span>
							</a></li>
							<li class="contact-us menu-item"><a href=""> Contact Us
							</a></li>
							<li class="returns menu-item"><a href=""> Returns </a></li>
							<li class="shipping menu-item"><a href=""> Shipping </a></li>
							<li class="faq&#039;s menu-item"><a href=""> FAQ&#039;s
							</a></li>
						</ul>

					</div>
				</div>
			</li>

			<li class="col-md-3">
				<div id="block-socialicons" class="block-block-content">

					<div class="clearfix field-name-field-block-content">
						<div class="listrak-wrapper">
							<form accept-charset="UTF-8" action="" method="post">
								<label for="email">Join our email list for 10% off your
									first order</label>
								<div class="flex-wrap">
									<div class="input-group input-group-lg">

										<input type="text" class="form-control"
											placeholder="Email Address"> <span
											class="input-group-addon"> <i class="iconfont">&#xe6f3;</i></span>
									</div>
								</div>
							</form>
						</div>
					</div>

					<div class="field-link-field-block-content">
						<div class="field__item">
							<div class="paragraph-view-mode-default">
								<a href="" target="_blank"> <i class="iconfont">&#xe6f3;</i>

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
								<a href="https://www.youtube.com/TheCoffeeBeanTeaLeaf"
									target="_blank"> <i class="iconfont">&#xe64b;</i>
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
					<p>© 2018 International Coffee &amp; Tea, LLC doing business as
						The Coffee Bean &amp; Tea Leaf®…</p>
				</div>
			</div>
			<div class="copyright-legal col-md-5">
				<p class="text-right">THE COFFEE BEAN &amp; TEA LEAF, THE COFFEE
					BEAN, CBTL, THE ORIGINAL ICE BLENDED, ICE BLENDED and THE PURPLE
					STRAW, and their logos and other marks are registered trademarks of
					International Coffee &amp; Tea, LLC in the United States and may be
					registered in other countries.</p>

			</div>
		</div>
	</div>

	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a> </footer>
</body>
<script>


var url = window.document.location.href.toString();
if(url.endsWith(".jsp")){
	//alert("00");
	$.ajax({
		url:"${pageContext.request.contextPath}/coffees/findAll",
		type:"post",
		async:true,
		success:function(data){
			for(var i = 0; i < data.length; i++){
			/* 	alert(data[i].coPicture); */
				var div=new create(data[i].coName,data[i].coHot,data[i].coPrice,data[i].coPicture,data[i].coffeeId,data[i].coffeeKind);
				document.getElementById("idid").appendChild(div);
				
			}			
		}
	});
}
else{
	//alert("11");
	var text=url.substring(url.indexOf('=')+1);
	//alert(text);
	$.ajax({
		url:"${pageContext.request.contextPath}/coffees/findByName?search="+text,
		type:"post",
		async:true,
		success:function(data){
			//alert(data[0].coName);
			for(var i = 0; i < data.length; i++){
			/* 	alert(data[i].coPicture); */
				var div=new create(data[i].coName,data[i].coHot,data[i].coPrice,data[i].coPicture,data[i].coffeeId,data[i].coffeeKind);
				document.getElementById("idid").appendChild(div);
				
			}			
		}
	});
}

	


	function create(coName,coHot,coPrice,coPicture,coffeeId,coffeeKind){
		
		var div1 = document.createElement("div");
		div1.setAttribute("class", "col-sm-4");
		div1.setAttribute("style", "margin-top:50px");
		var input = document.createElement("input");
		input.setAttribute("type", "text");
		input.setAttribute("value", coffeeId);
		input.setAttribute("style", "display:none");
		div1.appendChild(input);
		var div2 = document.createElement("div");
		div2.setAttribute("class", "ih-item square effect3 bottom_to_top");
	/* 	div2.setAttribute("id", "ss"); */
		div2.setAttribute("style", "text-align: center;background-color: white;");
		var a = document.createElement("a");
		/* +"&&coffeeKind="+coffeeKind */
		 a.setAttribute("href","${pageContext.request.contextPath}/coffees/showCoffeeDetail?coffeeId="+coffeeId+"&&coffeeKind="+coffeeKind);
		a.setAttribute("id", "showDetail");
		var div3 = document.createElement("div");
		div3.setAttribute("class", "img");
		var div4 = document.createElement("div");
		div4.setAttribute("class", "product-like-img");
		
		var img = document.createElement("img");
		img.setAttribute("src", "${pageContext.request.contextPath}/img/"+coPicture)
		var div5  = document.createElement("div");
		div5.setAttribute("class", "product-like-img-descirble");
		div5.setAttribute("style", "text-align: center; background-color: white;");
		var span=document.createElement("span");
		span.setAttribute("style","text-align: center;")
		div4.appendChild(img);
		div4.appendChild(div5);
		div4.appendChild(span);
		for(var j=0; j< coHot; j++){
			var myi=document.createElement("class","i");
			myi.setAttribute("class","iconfont icon-star");
			div4.appendChild(myi);
		}
		var span1=document.createElement("class","span");
		span1.innerHTML=coPrice;
		div4.appendChild(span1);
		div3.appendChild(div4);
		var btn = document.createElement("button");
		
		btn.setAttribute("class", "info");
		btn.innerHTML = "ADD TO BAG";
		a.appendChild(div3);
		a.appendChild(btn);
		div2.appendChild(a);
		div1.appendChild(div2);
		return div1;
	}
	
	
	 $("#sortCoffee").click(function(){
		 alert("000");
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/coffees/findAllByPrice",
			async:true,
			success : function(data) {
				alert(data);
			}
		});
	}) 
	
	
	 $("#myAccountTitle").click(function(){
			 var u="${u.userName}"
				 /* alert(u); */
				if(u==""){
					alert("Please login");
					<% session.setAttribute("backUrl", "http://localhost:8080/coffee/jsp/coffee.jsp?"+request.getQueryString());
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
					<% session.setAttribute("backUrl", "http://localhost:8080/coffee/jsp/coffee.jsp");
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
	

</script>
</html>