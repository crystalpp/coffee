<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--
	作者：胡春
	时间：2018-06-25
	描述：咖啡系统首界面，主要运用bootstrap框架实现，登录注册以弹框形式展现。整个界面运用响应式布局
-->
	<head>
		<title>Home</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Architect Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<link href="${pageContext.request.contextPath}/css/index.css" rel='stylesheet' type='text/css' />
		<link href="${pageContext.request.contextPath}/css/model.css" rel='stylesheet' type='text/css' />
		<%-- <link href="${pageContext.request.contextPath}/css/login-register.css" rel="stylesheet" /> --%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/login-register.js" type="text/javascript"></script>

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
		<!--start-smoth-scrolling-->
	</head>

	<body>
		<!--header-->
		<div class="header-top" id="home">
			<div class="container">
				<div class="header-logo">
					<a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/img/logo1.png"  class="myimg"/></a>
				</div>
				<div class="top-nav">
					<span class="menu"><img src="${pageContext.request.contextPath}/img/menu-icon.png" alt=""/></span>
					<ul class="nav1">
						<li>
							<a href="#">HOME </a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/jsp/coffee.jsp">COFFEE</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/jsp/ourStory.jsp">STORE</a>
						</li>
						<li><a id="cartTitle">CART</a>
					</li>
					<li class="dropdown"><a id="myAccountTitle" class="dropdown-toggle"
						data-toggle="dropdown"> My Account<b class="caret"></b>
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
							<a href="${pageContext.request.contextPath}/a-login.jsp" ><span class="fb"> </span></a>
						</li>
						<li>
							<a class="login-a" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();"><span class="g"> </span></a>
						</li>

					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form id="form">
						<input class="sb-search-input" placeholder="Enter your search term..." id="searchInput"type="search" name="search" >
						<button class="sb-search-submit" type="button"  id="search"></button>
						<span class="sb-icon-search"> </span>
					</form>
				</div>
			</div>
			<div class="header-info-right">
				<div class="header cbp-spmenu-push">
					<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
						<a href="#">HOME </a>
						<a href="${pageContext.request.contextPath}/jsp/coffee.jsp">COFFEE</a>
						<a href="${pageContext.request.contextPath}/jsp/ourStory.jsp">STORE</a>
						<a href="${pageContext.request.contextPath}/jsp/cart.jsp">CART</a>
						<a href="${pageContext.request.contextPath}/jsp/account.jsp">My Account</a>
					</nav>
					<!--script-nav -->
					<script type="text/javascript">
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
		

		<!--login-->

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
					<!--<img ="../img/account-sidebar.jpg" class="img-responsive" alt="Cinque Terre" height="100%">-->
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
								
									<!-- <h4>Don’t have an account? <a href="creatAccount.html">Create Account </a></h4> -->
									<br/>
									<p class="text-center" style="font-size: 12px;">By clicking continue with Facebook or Log In, you agree to our Terms of Use and acknowledge that you have read our Privacy Policy</p>
								
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
<!--//header-->
		<!--search-scripts-->
		<%-- <script src="${pageContext.request.contextPath}/js/classie.js"></script> --%>
		<script src="${pageContext.request.contextPath}/js/uisearch.js"></script>
		<script>
			new UISearch(document.getElementById('sb-search'));
		</script>
		<!--//search-scripts-->

		<!--banner-->

		<div class="banner">
			<div class="container">
				<div class="banner-top">
					<h1>Make your own afternoon</h1>
					<ul>
						<li>
							<a class="sub" href="#">JION NOW</a>
						</li>
						<li>
							<a class="art" href="#">SING IN</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--banner-->
		<!--slide-->
		<div class="gallery-cursual">
			<!-- requried-jsfiles-for owl -->
			<link href="css/owl.carousel.css" rel="stylesheet">
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items: 5,
						lazyLoad: true,
						autoPlay: true,
						pagination: false,
					});
				});
			</script>
			<!-- //requried-jsfiles-for owl -->
			<!-- start content_slider -->
			<div id="owl-demo" class="owl-carousel text-center">
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-1.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog1">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-2.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog2">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-3.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog3">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-4.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog4">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-5.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog5">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-6.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog6">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-7.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-8.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
				<div class="item g1 popup-with-zoom-anim" href="#small-dialog">
					<img class="lazyOwl" data-src="${pageContext.request.contextPath}/img/slide-9.jpg" alt="name">
					<div class="caption">
						<h3>Vanglo House by LWPAC in canada</h3>
						<div class="s-btn">
							<a href="#">READ MORE</a>
						</div>
					</div>
				</div>
			</div>
			<!--//sreen-gallery-cursual---->
			<!-- caption-popup -->
			<div class="caption-popup">
				<div id="small-dialog" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="${pageContext.request.contextPath}/img/slide-1.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>
			</div>
			<div class="caption-popup">
				<div id="small-dialog1" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="${pageContext.request.contextPath}/img/slide-2.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>
			</div>
			<div class="caption-popup">
				<div id="small-dialog2" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="${pageContext.request.contextPath}/img/slide-3.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>
			</div>
			<div class="caption-popup">
				<div id="small-dialog3" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="${pageContext.request.contextPath}/img/slide-4.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>
			</div>
			<div class="caption-popup">
				<div id="small-dialog4" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="img/slide-5.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>
			</div>
			<div class="caption-popup">
				<div id="small-dialog5" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="img/slide-6.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>
			</div>
			<div class="caption-popup">
				<div id="small-dialog6" class="mfp-hide innercontent">
					<h4>Vanglo House by LWPAC in canada</h4>
					<img class="img-responsive cap" src="${pageContext.request.contextPath}/img/slide-7.jpg" title="postname" />
					<p>elit. Etiam sit amet nunc nec magna accumsan ultricies eget a leo. Praesent nec libero aliquet, malesuada nibh et, tincidunt arcu. Aenean porta faucibus nisl. Fusce ultrices nec purus eget consequat. Phasellus pharetra dignissim lacus id rhoncus. In malesuada et mi non mollis. </p>
					<a class="morebtn" href="#">ReadMore</a>
				</div>
			</div>
			<!----//fea-video---->
			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type: 'inline',
						fixedContentPos: false,
						fixedBgPos: true,
						overflowY: 'auto',
						closeBtnInside: true,
						preloader: false,
						midClick: true,
						removalDelay: 300,
						mainClass: 'my-mfp-zoom-in'
					});

				});
			</script>
		</div>
		<!-- /caption-popup -->
		<!---pop-up-box---->
		<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
		<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>
		<!---//pop-up-box---->
		<!--slide-->

		<!--mid-->
		<div calss="mid">
			<div class="mid-picture mid-picture1">
				<div class="container mid-p mid-p1">
					<h1>THE BEST COFFEE. STARBUCKS</h1>
					<h1>COFFEE FINDER.</h1>
					<p>Our coffee masters have distilled their years of tasting knowledge down to three simple questions to help you find a Starbucks coffee you’re sure to love.</p>
				</div>

			</div>

			<div class="mid-picture mid-picture2">
				<div class="container mid-p mid-p2">
					<h1>OUR RAREST COFFEES,SMALL-BATCH</h1>
					<h1>ROASTED IN DEATTLE</h1>
					<p>We travel the world in search of great coffee. In the process, we discover beans so special and rare that we can’t wait to bring them home and share. Each of these small-lot coffees has its own story to tell, and we meticulously develop a signature roast for every one of them.</p>
				</div>
			</div>
			<div class="mid-picture mid-picture3">
				<div class="container mid-p mid-p3">
					<h1>HOW TO BREW</h1>
					<p>It’s surprising how different brewing methods can enhance particular characteristics in your coffee. Let us help you unlock the full potential of your coffee—for the perfect cup every time.</p>
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
		<!--footer-->
	</body>
	<script type="text/javascript">
	
	$('#search').click(function(e){
		var serar=$("#searchInput").val();
		//alert(serar);
	        //模拟点击登陆按钮，触发上面的 Click 事件 
	      	window.location.href="${pageContext.request.contextPath}/jsp/coffee.jsp?coName="+serar;
	        $.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}s/findByName",
				data:$("#form").serialize(),
				async:true,
				success : function(data) {
				
				}
			});
	    
	});

		
		 $("#myAccountTitle").click(function(){
			 var u="${u.userName}"
				 /* alert(u); */
				if(u==""){
					alert("Please login");
					<% session.setAttribute("backUrl", "http://localhost:8080/coffee/index.jsp");
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
					<% session.setAttribute("backUrl", "http://localhost:8080/coffee/index.jsp");
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