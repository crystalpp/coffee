<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css" />
			  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css"/>
			  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/coffeeList.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
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
					<a href="index.html"><img src="${pageContext.request.contextPath}/img/logo1.png"  class="myimg"/></a>
				</div>
				<div class="top-nav">
					<span class="menu"><img src="${pageContext.request.contextPath}/img/menu-icon.png" alt=""/></span>
					<ul class="nav1">
						<li>
							<a href="${pageContext.request.contextPath}/index.html">HOME </a>
						</li>
						<li>
							<a href="coffee.html">COFFEE</a>
						</li>
						<li>
							<a href="ourStory.html">STORE</a>
						</li>
						<li>
							<a href="Cart.html">CART</a>
						</li>
					
							<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								My Account<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">My Account</a>
								</li>
								<li>
									<a href="creatAccount.html">Create Account</a>
								</li>
								<li>
									<a href="login.html">Sign In</a>
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
							<a class="login-a" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();"><span class="twit"> </span></a>
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
						<input class="sb-search-input" placeholder="Enter your search term${pageContext.request.contextPath}." type="search" name="search" id="search">
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
							<button id="showLeftPush"><img src="${pageContext.request.contextPath}/img/menu.png" /><span>Menu</span></button>
						</section>
					</div>
					<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
					<script src="${pageContext.request.contextPath}/js/classie.js"></script>
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
			<div calss="categrory-view">
				<div id="icon-menu">
					<ul>
						<li>

							<a id="cbtl-capsule" href=""><i class="iconfont icon-tea">&#xe60d;</i><br />Capsules</a>
						</li>
						<li>
							<a id="coffee" href=""><i class="iconfont">&#xe60d;</i><br />Coffee</a>
						</li>
						<li>
							<a id="tea" href=""><i class="iconfont">&#xe614;</i><br />Tea</a>
						</li>
						<li>
							<a id="powders" href=""><i class="iconfont">&#xe60d;</i><br />Powders</a>
						</li>
						<li>
							<a id="equipment" href=""><i class="iconfont">&#xe60d;</i><br />Equipment</a>
						</li>
						<li>
							<a id="drinkware" href=""><i class="iconfont">&#xe60d;</i><br />Drinkware</a>
						</li>
						<li>
							<a id="gift-cards" href=""><i class="iconfont">&#xe60d;</i><br />Gift Cards</a>
						</li>
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
													<p><strong>We know where every bean comes from. </strong><i>The Coffee Bean &amp; Tea Leaf <sup>®</sup></i> brand’s high standards make our coffee uniquely and uniformly delicious no matter which location you visit, anywhere in the world. Our Master Roaster has employed state of the art techniques and expert instincts to preserve the beloved ritual of coffee drinking.</p>
													<p><br /><br /></p>
													<p><span style="color: #ffffff; font-size: large;"><strong>BULK DEAL:  Purchase <span style="text-decoration: underline;"><em>ANY</em></span> <em>six</em>,<i> </i>1lb or 2lb bags and save 25% Use promo code: COFFEE6</strong>
														</span>
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
				<div class="container" style="padding-top:50px;">
				
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
											<form data-amshopby-filter="stock" data-amshopby-filter-request-var="stock">
												<li class="item" data-label="In Stock">
													<a class="" href="" rel="nofollow">
														<input name="s" value="1" type="radio" style="display: none;" />
														<span class="label">In Stock</span>
														<span class="count">43 items<span class="filter-count-label">
														</span>
													</a>
												</li>
												<li class="item" data-label="Out of Stock">
													<a class="am_shopby_filter_item_5b2f3bd3a502b" href="" rel="nofollow">
														<input name="s" value="2" type="radio" style="display: none;"/>
														<span class="label">Out of Stock</span>
														<span class="count">1  item                            <span class="filter-count-label">
														</span>
													</a>

												</li>
											</form>
										</ol>
											</div>
											<div data-role="title" class="filter-options-title">SUBSCRIPTION(SAVE%5)</div>
									<div data-role="content" class="filter-options-content">
										<ol class="items am_shopby_filter_items_stock">
											<form data-amshopby-filter="stock" data-amshopby-filter-request-var="stock">
												<li class="item" data-label="In Stock">
													<a class="am_shopby_filter_item_5b2f3bd3a4d1b" href="" rel="nofollow">
														<input name="s" value="1" type="radio" style="display: none;" />
														<span class="label">SUBSCRIPTION(SAVE%5)</span>
														<span class="count">12 items<span class="filter-count-label">
														</span>
													</a>
												</li>
											</form>
										</ol>
									</div>
									<div data-role="title" class="filter-options-title">SERVING TYPE</div>
									<div data-role="content" class="filter-options-content">
										<ol class="items am_shopby_filter_items_stock">
											<form data-amshopby-filter="stock" data-amshopby-filter-request-var="stock">
												<li class="item" data-label="In Stock">
													<a class="am_shopby_filter_item_5b2f3bd3a4d1b" href="" rel="nofollow">
														<input name="s" value="1" type="radio" style="display: none;" />
														<span class="label">SERVING TYPE</span>
														<span class="count">12 items  <span class="filter-count-label">
														</span>
													</a>
												</li>
											</form>
										</ol>
										</div>
										<div data-role="title" class="filter-options-title">CAFFEINE</div>
									<div data-role="content" class="filter-options-content">
										<ol class="items am_shopby_filter_items_stock">
											<form data-amshopby-filter="stock" data-amshopby-filter-request-var="stock">
												<li class="item" data-label="In Stock">
													<a class="" href="" rel="nofollow">
														<input name="s" value="1" type="radio" style="display: none;" />
														<span class="label">CAFFEINE</span>
														<span class="count">12 items   <span class="filter-count-label">
														</span>
													</a>
												</li>
											</form>
										</ol>
										</div>
										<div data-role="title" class="filter-options-title">ROAST</div>
									<div data-role="content" class="filter-options-content">
										<ol class="items am_shopby_filter_items_stock">
											<form data-amshopby-filter="stock" data-amshopby-filter-request-var="stock">
												<li class="item" data-label="In Stock">
													<a class="" href="" rel="nofollow">
														<input name="s" value="1" type="radio" style="display: none;"/>
														<span class="label">ROAST</span>
														<span class="count">12 items  <span class="filter-count-label">
														</span>
													</a>
												</li>
											</form>
										</ol>
									</div>
								
								</div>
							
							</div>
							
									
						</div>
						<div class="col-md-9" >
							<div class="tolbar toolbar-product">
								<div class="pages">
									<!--<strong class="pages-label" id="paging-label">Page</strong>-->
									<ul>
										<li class="item current">
											<strong class="page">
										<span class="label">You're currently reading page</span>
									<span>1</span>
										</strong>
										</li>
										<li class="item">
											<a class="page" href="">
												<span class="label">Page</span>
												<span>2</span>
											</a>

										</li>
										<li class="pages-item-next">
											<a class="action-next" href="">
												<span class="label">Page</span>
												<span>Next</span>
											</a>
										</li>
									</ul>
								</div>
								<div class="tolbar-sorter">
									<select id="sorter" data-role="sorter" class="sorter-options">
										<option value="position">
											Position </option>
										<option value="price">
											Price </option>
										<option value="bestsellers" selected="selected">
											Best Sellers </option>
									</select>
									<a title="Set Ascending Direction" href="#" class="action sorter-action sort-desc" data-role="direction-switcher" data-value="asc">
									<i class="iconfont">&#xe624;</i>
									</a>
								</div>
							</div>
							
							<!--
                            	作者：248524426@qq.com
                            	时间：2018-06-26
                            	描述：商品列表
                            -->
							<div class="item-list" style="width: 100%;">
								<div class="row">
        <div class="col-sm-4">
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
        <div class="col-sm-4">
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
        
         <div class="col-sm-4">
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
			<div id="" class="" >
				<div class="row" style="padding-left: 0; padding-right:0;margin-left: 0; margin-right: 0;">
					<div class="col-md-3" style="height: 100%;">

						<img class="lazyload" src="${pageContext.request.contextPath}/img/cbtl_iphone_app_screen_rewards.png" />
					</div>

					<div class="col-md-5">
						<div class="flex-col-wrap"><img class="rewards-icon" src="${pageContext.request.contextPath}/img/coffeebean_rewards_medium_icon.png" />
							<div class="content-wrap">
								<p><em>The Coffee Bean®</em></p>

								<p><em>Rewards</em></p>
							</div>
						</div>
					</div>

					<div class="col-md-4">

						<p>
							<a class="rewards-link" href="" target="_blank">Go To Rewards Site
								<i class="iconfont">&#xe61b;</i></a>
						</p>

					</div>
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
										<span class="input-group-addon">
											<i class="iconfont">&#xe6f3;</i></span>
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
				<div id="block-copyrightblock" class="">

					<div class="copyright row">
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

			</div>
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		</footer>
	</body>
</html>