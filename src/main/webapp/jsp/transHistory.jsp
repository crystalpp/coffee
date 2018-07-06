<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>Transaction History</title>
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/transHistory.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ProductReview.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/font_719350_aylk0xlgmzh/iconfont.css"/>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		
		<div class="center">
			<div class="accordion" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h5 class="mb-0">
		        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		         <div class="collapse-title">
		         	<div class="collapse-title-text">
		         		<span style="color: black;">Coffe Bean1</span>
		         	</div>
			        <div class="collapse-title-star">
				        <span>ORDER NUMBER:  &nbsp;23489056321</span>
				         
			        </div>
			        <div class="iconfont-de">
			        <i class="iconfont icon-delete"  ></i>
			        	
			        </div>

			      
		         </div>
		        
		        </button>
		      </h5>
					</div>

					<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">

							<div class="card-body-content col-md-2">
								<div class="card-body-content-img">
									<img src="${pageContext.request.contextPath}/img/coffee.jpg"/>
								</div>
								<div class="card-body-content-price">
									<span>$8.99</span>
								</div>
								<div class="card-body-content-price">
									<span>2</span>
								</div>
								<div class="card-body-content-price">
									<span>$17.19</span>
								</div>
								<div class="card-body-content-price">
									<div class="review-add-sort">
										<button type="button" class="btn " data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap"> 
										<span style="color: white;">
											ADD A REVIEW
										</span>
										</button>
									</div>
								</div>
							</div>

							

						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-header" id="headingTwo">
						<h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        <div class="collapse-title">
		         	<div class="collapse-title-text">
		         		<span style="color: black;">Coffe Bean2</span>
		         	</div>
			        <div class="collapse-title-star">
				        <span>ORDER NUMBER:  &nbsp;23489056321</span>
				         
			        </div>
			        <div class="iconfont-de">
			        <i class="iconfont icon-delete"  ></i>
			        	
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

				<div class="card">
					<div class="card-header" id="headingThree">
						<h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
         <div class="collapse-title">
		         	<div class="collapse-title-text">
		         		<span style="color: black;">Coffe Bean3</span>
		         	</div>
			        <div class="collapse-title-star">
				        <span>ORDER NUMBER:  &nbsp;23489056321</span>
				         
			        </div>
			        <div class="iconfont-de">
			        <i class="iconfont icon-delete"  ></i>
			        	
			        </div>
		         </div>
        </button>
      </h5>
					</div>
					<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">

							<div class="card-body-content">
								<div class="">
									<h3> Not Bad</h3><br />
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
			</div>
		</div>
	</body>
</html>