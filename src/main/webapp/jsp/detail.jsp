<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/font_719350_a874xvbb9r7/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/detail.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/index.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/footer.css" />
<link href="${pageContext.request.contextPath}/css/style.css"
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css" />
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>coffee detail</title>
<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
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
</head>
<body>
	<div class="header-top my-header" id="home">
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
					<li><a href="${pageContext.request.contextPath}/index.html">HOME
					</a></li>
					<li><a href="coffee.html">COFFEE</a></li>
					<li><a href="">STORE</a></li>
					<li><a href="Cart.html">CART</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> My Account<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">My Account</a></li>
							<li><a href="creatAccount.html">Create Account</a></li>
							<li><a href="login.html">Sign In</a></li>
						</ul></li>
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
						href="javascript:void(0)" onclick="openLoginModal();"><span
							class="twit"> </span></a></li>
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
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
					id="cbp-spmenu-s1"> <a href="">HOME </a> <a href="">COFFEE</a>
				<a href="">STORE</a> <a href="">CART</a> <a href="">My Account</a> </nav>
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
	<div class="middle">
		<div class="container">
			<div class="columns ">
				<form action="">
					<div class="product media">
						<img src="${pageContext.request.contextPath}/img/coffee.jpg" />
					</div>
			</div>
			<div class="product-info-main">
				<div class="product-title-wrapper product">
					<h1 class="page-title">
						<span class="base" data-ui-id="page-title-wrapper" itemprop="name">House
							Blend Coffee</span>
					</h1>
				</div>

				<div class="product-info-price">
					<div class="rating-summary">
						<span class="label"> </span>
						<div class="rating-result">
							<i class="iconfont icon-star"></i> <i class="iconfont icon-star"></i>
							<i class="iconfont icon-star"></i> <i class="iconfont icon-star"></i>
							<i class="iconfont icon-star  special"></i>
						</div>
					</div>
				</div>

				<div class="product attribute overview">
					<p>To create our House Blend we combine natural and washed
						Central and South American coffees. We choose our blends for
						brightness, flavor, and aromas that make for a smooth, satisfying
						cup of coffee that can be enjoyed all day long.</p>
				</div>

				<div class="additional-attributes-wrapper table-wrapper">
					<table class=" table additional-attributes"
						id="product-attribute-specs-table">

						<tbody>
							<tr>
								<th class="myth" scope="row">Roast</th>
								<td class="mytd" data-th="Roast">Light & Subtle</td>
							</tr>
							<tr>
								<th class="myth" scope="row">Region</th>
								<td class="mytd" data-th="Region">North America</td>
							</tr>
							<tr>
								<th class="myth" scope="row">Caffeine</th>
								<td class="mytd" data-th="Caffeine">Regular</td>
							</tr>

							<tr>
								<th class="myth th_special" scope="row">$8.99</th>
								<td class="mytd td_special" data-th="Caffeine"></td>
							</tr>
					</table>
				</div>

				<div class="box-tocart">

					<div class="quantity-wapper pull-left">
						<input type="number" name="" id="" value="" />
					</div>
					<div class="add-bag">
						<button class="add-bag-button" id="addToBag">
							<span style="color: white;"> ADD TO BAG </span>
						</button>
					</div>

				</div>
				</form>
			</div>

		</div>

		<div class="product-info-detail">
			<div class="detail-title">
				<div class="product-feature-tile PF" id="PF" onclick="btn(0)">
					<span> Product Features </span>
				</div>

				<div class="product-feature-tile" id="HTP" onclick="btn(1)">
					<span> How to prepare </span>
				</div>

				<div class="product-feature-tile" id="Sc" onclick="btn(2)">
					<span> Source </span>
				</div>
			</div>

			<div class="line"></div>
			<div class="detail-msg">
				<img src="${pageContext.request.contextPath}/img/1_1.png"
					class="img show" /> <img
					src="${pageContext.request.contextPath}/img/1_2.png"
					class="img hide" /> <img
					src="${pageContext.request.contextPath}/img/1_3.png"
					class="img hide" />
			</div>
		</div>

		<div class="product-like">
			<div class="product-like-title">
				<span class="product-like-text"> OTHER PRODUCTS YOU MIGHT
					LIKE! </span>
			</div>
			<div class="row">
				<div class="col-sm-3">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top"
						style="color: white;">
						<a href="#">
							<div class="img">
								<div class="product-like-img">
									<img src="${pageContext.request.contextPath}/img/like.jpg" />
									<div class="product-like-img-descirble">
										<span> French Deluxe </span> <br /> <i
											class="iconfont icon-star"></i> <i class="iconfont icon-star"></i>
										<i class="iconfont icon-star"></i> <i
											class="iconfont icon-star"></i> <i class="iconfont icon-star"></i>
										<br /> <span> $12.99 </span>
									</div>
								</div>
							</div>
							<button class="info ">
								<span style="color: white;"> Add To Bag </span>
							</button>
						</a>
					</div>
				</div>
			</div>

		</div>
		<div class="user-review">
			<div class="review-add-sort">
				<button type="button" class="btn " data-toggle="modal"
					data-target="#exampleModal" data-whatever="@getbootstrap">
					<span style="color: white;"> ADD A REVIEW </span>
				</button>
			</div>

			<!--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Open modal for @getbootstrap</button>-->

			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h3 class="modal-title" id="exampleModalLabel">ADD A REVIEW</h3>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label for="recipient-name" class="col-form-label">Title:</label>
									<input type="text" class="form-control" id="recipient-name">
								</div>
								<div class="form-group">
									<label for="message-text" class="col-form-label">Message:</label>
									<textarea class="form-control" id="message-text"
										placeholder="Less than 50 words"></textarea>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<!--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>-->
							<!--<button type="button" class="btn btn-primary">Send message</button>-->
							<div class="review-add-sort1">
								<button type="button" class="btn">
									<span style="color: white;"> SEND A MESSAGE </span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="line1"></div>

			<div class="review-list-sum">
				<span>the sum of the review about 26 total</span>
			</div>
			<div class="review-list-detail">
				<div class="review-list-li">
					<div class="review-date-hot">

						<div class="review-hot">
							<i class="iconfont icon-star"></i> <i class="iconfont icon-star"></i>
							<i class="iconfont icon-star"></i> <i class="iconfont icon-star"></i>
							<i class="iconfont icon-star"></i>
						</div>

						<div class="review-date">4/24/18</div>
					</div>

					<div class="review-li-title">
						<span>Love the coffee</span>
					</div>
					<div class="review-li-content">
						<span>I love this coffee and have been ordering for a year
							now and never disappointed. </span>
					</div>
					<div class="review-li-author">
						<span>By Shelly Rae </span>
					</div>
				</div>

				<div class="review-list-li">
					<div class="review-date-hot">

						<div class="review-hot">
							<i class="iconfont icon-star"></i> <i class="iconfont icon-star"></i>
							<i class="iconfont icon-star"></i> <i class="iconfont icon-star"></i>
							<i class="iconfont icon-star"></i>
						</div>

						<div class="review-date">4/24/18</div>
					</div>

					<div class="review-li-title">
						<span>Love the coffee</span>
					</div>
					<div class="review-li-content">
						<span>I love this coffee and have been ordering for a year
							now and never disappointed. </span>
					</div>
					<div class="review-li-author">
						<span>By Shelly Rae </span>
					</div>
				</div>

			</div>
			<div class="line1"></div>
			<div class="review-list-sum">
				<span>the sum of the review about 26 total</span>
			</div>
		</div>
	</div>



	<div class="region-rewards">
		<div id="" class="">
			<div class="row"
				style="padding-left: 0; padding-right: 0; margin-left: 0; margin-right: 0;">
				<div class="col-md-3" style="height: 100%;">

					<img class="lazyload"
						src="${pageContext.request.contextPath}/img/cbtl_iphone_app_screen_rewards.png" />
				</div>

				<div class="col-md-5">
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

				<div class="col-md-4">

					<p>
						<a class="rewards-link" href="" target="_blank">Go To Rewards
							Site <i class="iconfont">&#xe61b;</i>
						</a>
					</p>

				</div>
			</div>
		</div>
	</div>
	<!--
	作者：248524426@qq.com
	时间：2018-06-26
	描述：页脚
-->
	<footer role="contentinfo" style="width: 100%;">
	<div class="" style="margin: 0; padding: 0;">

		<!-- <h2 class="visually-hidden" id="block-cbtl-blend-footer-menu">Footer menu</h2>-->
		<ul class="row" style="margin: 0; padding: 0; width: 100%;">
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
											class="input-group-addon"><i class="iconfont">&#xe61b;</i></span>
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
		<div id="block-copyrightblock" class="container "
			style="width: 100%; display: block; clear: all;">

			<div class="copyright row">
				<div class="copyright-wrapper col-sm-7">
					<div class="company-logo">

						<h4>THE COFFEE BEAN & TEA LEAF</h4>
					</div>
					<div class="copyright-content">
						<p>© 2018 International Coffee &amp; Tea, LLC doing business
							as The Coffee Bean &amp; Tea Leaf®…</p>
					</div>
				</div>
				<div class="copyright-legal col-sm-5">
					<p class="text-right">THE COFFEE BEAN &amp; TEA LEAF, THE
						COFFEE BEAN, CBTL, THE ORIGINAL ICE BLENDED, ICE BLENDED and THE
						PURPLE STRAW, and their logos and other marks are registered
						trademarks of International Coffee &amp; Tea, LLC in the United
						States and may be registered in other countries.</p>

				</div>
			</div>
		</div>

	</div>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a> </footer>
	<!--<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>-->

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
		</script>
</html>