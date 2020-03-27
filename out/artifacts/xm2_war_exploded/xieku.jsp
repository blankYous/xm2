<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zxx">

<head>
	<title>Shop</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Owl-carousel-CSS -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="http://fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
	<style>
		body{
			position: relative
		}
		#login{
			border: red 1px solid;
			display: none;
			background:#FFFFFF;
			opacity: 0.8;
			width: 100%;
			height: 100%;
			z-index: 998;
			position:absolute
		}
		#login2{
			display:none;
			z-index: 999;
			height:400px;
			width: 500px;
			margin-left: 700px;
			margin-top: 250px;
			background: linear-gradient(45deg, #FFFFFF, #f2dede);
			position: fixed;
		}
		#login2 form{
			line-height: 3em;
			padding-top: 15px;
			text-align: center;
			font-size: 20px;

		}
		#login2 form input::placeholder {
			color: rgba(255, 255, 255, 0.8);
			font-size: 18px;
			font-family: "neo";
		}
		input:focus{
			outline: none;
		}
		.close{

			position:relative;

			width:0.3em;

			height:1.5em;

			background: #333;

			-webkit-transform: rotate(45deg);

			-moz-transform: rotate(45deg);

			-o-transform: rotate(45deg);

			-ms-transform: rotate(45deg);

			transform: rotate(45deg);

			display: inline-block;

		}
		/*取消按钮*/
		.close:after{

			content: "";

			position: absolute;

			top: 0;

			left: 0;

			width:0.3em;

			height:1.5em;

			background: #333;

			-webkit-transform: rotate(270deg);

			-moz-transform: rotate(270deg);

			-o-transform: rotate(270deg);

			-ms-transform: rotate(270deg);

			transform: rotate(270deg);

		}
		#cancel{
			width: 35px;
			height: 35px;
			background:#f2dede;
			text-align: center;
			padding-right: 15px;
			margin-left: 465px;
		}
		#yuan{
			padding: 0px 5px;
			border-radius:50%;
			background-color:#FFFFFF;
			color:forestgreen;position:absolute;top: -13px;left: -6px
		}
	</style>
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
<%--登入框--%>
<div id="login" style=" "></div>
<div id="login2"style="">
	<div id="cancel"><span class="close"></span></div>
	<form action="post" >
		<h2 style="margin-bottom:40px">登入BlankYours账号</h2>
		<p class="form">账号：<input type="text" id="user" placeholder="账号" style="width: 250px;height: 35px" ></p>
		<p class="form">密码：<input type="password" id="passwd" placeholder="密码" style="width: 250px;height: 35px"></p>
		<div style="margin-bottom: -30px;margin-top: -20px"><p style="display: none" id="p"><img src="images/a17.png"><span id="span"></span></p></div>
		<input type="button" value="登录" class="btn" id="log"  style="margin-left: 25px;margin-top:40px;width: 400px;height: 30px;">
		<br>
		<a href="#"  style="font-size: 14px">忘记密码?</a><a href="logins.jsp"  style="font-size: 14px">立即注册</a>
	</form>
</div>
	<!-- banner -->
<div class="banner_top innerpage" id="home" >
		<div class="wrapper_top_w3layouts">
			<div class="header_agileits">
				<div class="logo inner_page_log">
					<h1><a class="navbar-brand" href="index.jsp"><span>BlankYours</span> <i>潮流鞋库</i></a></h1>
				</div>
				<div class="overlay overlay-contentpush">
					<button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

					<nav>
						<ul>
							<li><a href="index.jsp">BlankYours潮流鞋库</a></li>
							<li><a href="logins.jsp">登入/注册</a></li>
							<li><a href="guanyuwomen.jsp?user="${user}>关于我们</a></li>
							<li><a href="404.jsp">服务</a></li>
							<li><a href="404.jsp">规则</a></li>
							<li><a href="lianxiwomen.jsp?user="${user}">联系我们</a></li>
						</ul>
					</nav>
				</div>
				<div class="mobile-nav-button" style="margin-right: -30px">
					<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true" style="margin-top:7px"></i></button>
				</div>
				<!-- cart details -->
				<div class="top_nav_right">
					<div class="shoecart shoecart2 cart cart box_1">
						<form action="checkout" method="post" class="last">
							<span id="yuan">0</span>
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="display" value="1">
							<button class="top_shoe_cart" type="submit" name="submit" value="">
								<%--<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>--%>
									<i class=" fa  fa-cart-arrow-down"></i>
							</button>
						</form>
						<div style="margin-top: -50px;margin-left: 45px">
							<button class="top_shoe_cart  top_shoe_personal"  >
								<i class="fa " id="personage" aria-hidden="true"><img src="images/personage.png"></i>
							</button>
							<p style="display: none" id="userName">${user}</p>
						</div>
					</div>
				</div>
				<script src="js/jquery-1.12.4.js"></script>
				<script>
					$(function () {
						var count="";
						$.ajax({
							url:"gwccount",
							type:"POST",
							async:false,
							data:"user="+user,
							success:function (date) {
								count = date;
							}
						})
						if (count.trim()!="0"){
							$("#yuan").html(count);
						}else{
							$("#yuan").html(0);
						}
						$("#personage").click(function () {
							var userName=$("#userName").text();
							<%--		var userName="<%request.getParameter("user");%>";--%>
							if (userName==""){
								$("#login").show();
								$("#login2").show();
							} else {
								location.href="web";
							}
						})
						$("#cancel").click(function () {
							$("#login").hide();
							$("#login2").hide();
						})
						$("#log").click(function () {
							var user=$("#user").val();
							var passwd=$("#passwd").val();
							var tj;
							if (user==""||passwd==""){
								$("#span").html("账号密码不能为空");
								$("#p").show();
							}else {
								$.ajax({
									url:"login",
									type:"POST",
									data:"user="+user+"&passwd="+passwd,
									async: false,
									success: function (date) {
										tj=date
									}
								})

								if (tj.trim()==user){
									$("#login").hide();
									$("#login2").hide();
									$("#userName").html(user);
									var count="";
									$.ajax({
										url:"gwccount",
										type:"POST",
										async:false,
										data:"user="+user,
										success:function (date) {
											count = date;
										}
									})
									if (count.trim()!="0"){
										$("#yuan").html(count);
									}else{
										$("#yuan").html(0);
									}
								}else if (tj.trim()=="dj"){
									$("#span").html("账号已被冻结");
									$("#p").show();
								} else{
									$("#span").html("账号或密码有误");
									$("#p").show();
								}
							}
						})
					})
				</script>
		</div>
		</div>
		<!-- //cart details -->
		<!-- search -->
	<div class="search_w3ls_agileinfo" >
		<div class="cd-main-header">
			<ul class="cd-header-buttons">
				<li style="position: absolute"><a class="cd-search-trigger" href="#cd-search"></a></li>
			</ul>
		</div>
		<div id="cd-search" class="cd-search"  style="position:absolute;margin-top: -280px">
			<div id="Search" >
				<input name="Search" type="search" placeholder="搜索">
			</div>
		</div>
	</div>
	<script src="js/jquery-1.12.4.js?rd=<%=Math.random()%>"></script>
	<script type="text/javascript">
		$(function () {

			$("#Search").keydown(function (e) {

				if(13 === e.keyCode) {
					var name = $("input[name=Search]").val();

					if (name!=""){
						location.href="seek?name="+name;
						/*window.location.href="seek?name="+name;*/
					}

				}
			})

		})
	</script>
		<!-- //search -->
		<div class="clearfix"></div>
		<!-- /banner_inner -->
		<div class="services-breadcrumb_w3ls_agileinfo">
			<div class="inner_breadcrumb_agileits_w3">

				<ul class="short">
					<li><a href="index.jsp">首页</a><i>|</i></li>
					<li>查看</li>
				</ul>
			</div>
		</div>
		<!-- //banner_inner -->
	</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<!-- tittle heading -->

			<!-- //tittle heading -->
			<!-- product left -->
			<div class="side-bar col-md-3">
				<div class="search-hotel">
					<h3 class="agileits-sear-head">搜索</h3>
					<form action="seek" method="post" id="form">
						<input type="search" placeholder="搜索" name="name" required="">
						<input type="submit" value=" ">
					</form>
				</div>
				<script src="js/jquery-1.12.4.js?rd=<%=Math.random()%>"></script>
				<script type="text/javascript">
					$(function () {
						$("#form").submit(function () {
							var name=$("input[name=search]").val();
							if (name==""||name==null) {
                                black;
							}
						})
					})
				</script>
				<!-- price range -->
				<%--<div class="range">
					<h3 class="agileits-sear-head">价格范围</h3>
					<div id="div">
					<ul class="dropdown-menu6" >
						<li>
							<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;margin-top: -10px" readonly/>

							<div id="slider-range" style="margin-top: 60px"></div>

						</li>
					</ul>
					</div>
				</div>
--%>
				<!-- //price range -->
				<!--preference -->
				<div class="left-side">
					<h3 class="agileits-sear-head">喜欢品牌</h3>
					<ul>
						<li style="padding-top:5px;padding-left: 20px">
							<a href="javaScript:void(0)" class="brand">Adidas</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="brand">耐克</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="brand">彪马</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="brand">匡威</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="brand">卡米</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="brand">李宁</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="brand">新百伦</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="brand">亚瑟士</a>
						</li>
						<li style="padding-left: 20px" >
						<a href="javaScript:void(0)" class="brand">斯凯奇</a>
						</li>
					</ul>
				</div>

				<script>
					$(function () {
						$(".brand").click(function () {
							var index=$(".brand").index(this);
							var name=$(".brand:eq("+index+")").text();
							location.href="seek?name="+name;


						})
					})
				</script>
				<div class="left-side">
					<h3 class="agileits-sear-head">喜欢类型</h3>
					<ul>
						<li style="padding-top:5px;padding-left: 20px">
							<a href="javaScript:void(0)" class="type">休闲鞋</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="type">板鞋</a>
						</li>
						<li style="padding-left: 20px">
							<a href="javaScript:void(0)" class="type">运动鞋</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="type">跑步鞋</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="type">帆布鞋</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="type">拖鞋</a>

						</li>
					</ul>
				</div>
				<script>
					$(function () {
						$(".type").click(function () {
							var index=$(".type").index(this);
							var name=$(".type:eq("+index+")").text();
							location.href="seek?name="+name
						})
					})
				</script>
				<div class="left-side">
					<h3 class="agileits-sear-head">性别</h3>
					<ul>

						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="sex">男</a>
						</li>
						<li style="padding-left: 20px" >
							<a href="javaScript:void(0)" class="sex">女</a>
						</li>
					</ul>
				</div>

				<script>
					$(function () {
						$(".sex").click(function () {
							var index=$(".sex").index(this);
							var name=$(".sex:eq("+index+")").text();
							location.href="seek?name="+name
						})
					})
				</script>


				<div class="deal-leftmk left-side">
					<h3 class="agileits-sear-head">特价</h3>
					<div class="special-sec1">
						<div class="col-xs-4 img-deals">
							<img src="images/卡米2020年新款牛皮尖头中空细跟高跟鞋女鞋单鞋1.jpg" alt="">
						</div>
						<div class="col-xs-8 img-deal1">
							<h3>卡米高跟鞋</h3>
							<a href="javaScript:void(0)" class="tj">￥568.00</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="special-sec1">
						<div class="col-xs-4 img-deals">
							<img src="images/李宁高邦运动鞋1.jpg" alt="">
						</div>
						<div class="col-xs-8 img-deal1">
							<h3>李宁高邦运动鞋</h3>
							<a href="javaScript:void(0)"class="tj">￥569.00</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="special-sec1">
						<div class="col-xs-4 img-deals">
							<img src="images/耐克男子运动鞋CN84901.jpg" alt="">
						</div>
						<div class="col-xs-8 img-deal1">
							<h3>耐克男子运动鞋</h3>
							<a href="javaScript:void(0)"class="tj">￥849.00</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="special-sec1">
						<div class="col-xs-4 img-deals">
							<img src="images/彪马运动鞋男鞋女鞋休闲鞋小白鞋板鞋1.jpg" alt="">
						</div>
						<div class="col-xs-8 img-deal1">
							<h3>彪马小白鞋</h3>
							<a href="javaScript:void(0)"class="tj">$225.00</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="special-sec1">
						<div class="col-xs-4 img-deals">
							<img src="images/Adidas白色板鞋1.jpg" alt="">
						</div>
						<div class="col-xs-8 img-deal1">
							<h3>Adidas白色板鞋</h3>
							<a href="javaScript:void(0)"class="tj">￥820.00</a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<script>
					$(function () {
						$(".tj").click(function () {
							var  index=$(".tj").index(this);
							var src=$(".tj:eq("+index+")").parent().prev().children("img").attr("src");
							window.open("img?src="+src)
						})
					})
				</script>
				<!-- //deals -->

			</div>
			<!-- //product left -->
			<!-- product right -->
			<div class="left-ads-display col-md-9">
				<div class="wrapper_top_shop">
					<div class="col-md-6 shop_left">
						<img src="images/banner3.jpg" alt="">
						<h6>40% off</h6>
					</div>
					<div class="col-md-6 shop_right">
						<img src="images/banner2.jpg" alt="">
						<h6>50% off</h6>
					</div>
					<div class="clearfix"></div>
					<!-- product-sec1 -->
					<div class="product-sec1" style="position: relative;top: -30px">
						<!--/mens遍历-->
                        <c:forEach items="${list}" var="list" begin="0" end="4" varStatus="status">
						<div class="col-md-4 product-men" style="width:300px;height: 400px;margin-top: 50px">
							<div class="product-shoe-info shoe">
								<div class="men-pro-item">
									<div class="men-thumb-item">
										<img src="${listName.get(status.index)[0]}" alt="">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="javaScript:void(0)" class="link-product-add-cart">快速查看</a>
											</div>
										</div>
										<%--<span class="product-new-top">New</span>--%>
									</div>
									<div class="item-info-product">
										<%--<h4>
											<a href="single.html">Bella Toes </a>
										</h4>--%>
										<div class="info-product-price">
											<div class="grid_meta">
												<div class="product_price">
													<div class="grid-price " style="height: 80px">
														<span>${list.title}</span>
														<br>
														<span class="money "><i>￥</i>${list.price}</span>
													</div>
												</div>
												<ul class="stars">
													<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
												</ul>
											</div>

											<div class="shoe single-item hvr-outline-out" style="margin-top: 10px">
												<div  method="post">
													<input type="hidden" name="cmd" value="_cart">
													<input type="hidden" name="add" value="1">
													<input type="hidden" name="shoe_item" value="Bella Toes">
													<input type="hidden" name="amount" value="675.00">
													<%--<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>
													<a href="javaScript:void(0)" data-toggle="modal" data-target="#myModal1"></a>
												</div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
                            <%--</c:if>--%>
                        </c:forEach>
						<script src="js/jquery-2.1.4.min.js?rd=<%=Math.random()%>"></script>
						<script type="text/javascript">
							$(function () {
								$(".link-product-add-cart").click(function () {
									var src=$(this).parent().parent().prev().attr("src");
								/*	alert(src)*/
									location.href="img?src="+src;
								})
							})
						</script>
						<!-- //mens -->
						<div class="clearfix" ></div>
					</div>
					<div style="height: 20px"></div>
					<!-- //product-sec1 -->
					<div class="col-md-6 shop_left shp">
						<img src="images/banner4.jpg" alt="">
						<h6>21% off</h6>
					</div>
					<div class="col-md-6 shop_right shp">
						<img src="images/banner1.jpg" alt="">
						<h6>31% off</h6>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>












	<!-- //top products -->
	<div class="mid_slider_w3lsagile">
		<div class="col-md-3 mid_slider_text">
			<h5>更多鞋子</h5>
		</div>
		<div class="col-md-9 mid_slider_info">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class=""></li>
					<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
					<li data-target="#myCarousel" data-slide-to="3" class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
						</div>
					</div>
					<div class="item active">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
							</div>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
				<!-- The Modal -->

			</div>
		</div>

		<div class="clearfix"> </div>
	</div>
	<!-- /newsletter-->
	<div class="newsletter_w3layouts_agile">
		<div class="col-sm-6 newsleft">
			<h3>订阅鞋库公众号 !</h3>
		</div>
		<div class="col-sm-6 newsright">
			<form action="#" method="post">
				<input type="email" placeholder="请输入您的邮箱..." name="email" required="">
				<input type="submit" value="提交">
			</form>
		</div>

		<div class="clearfix"></div>
	</div>
	<!-- //newsletter-->
	<!-- footer -->
	<div class="footer_agileinfo_w3">
		<div class="footer_inner_info_w3ls_agileits">
			<div class="col-md-3 footer-left">
				<h2><a href="index.jsp"><span>BlankYours</span>潮流鞋库</a></h2>
				<p>心与脚同步，伴你乐行仕。舒心生活，源于品质。</p>
				<ul class="social-nav model-3d-0 footer-social social two">
					<li>
						<a href="#" class="facebook">
							<div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="twitter">
							<div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="instagram">
							<div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="pinterest">
							<div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
						</a>
					</li>
				</ul>
			</div>
			<div class="col-md-9 footer-right">
				<div class="sign-grds">
					<div class="col-md-4 sign-gd">
						<h4>我们的<span>信息</span> </h4>
						<ul>
							<li><a href="index.jsp">BlankYours潮流鞋库</a></li>
							<li><a href="about.html">关于我们</a></li>
							<li><a href="404.jsp">服务</a></li>
							<li><a href="404.jsp">规则</a></li>
							<li><a href="contact.html">联系我们</a></li>
						</ul>
					</div>

					<div class="col-md-5 sign-gd-two">
						<h4>商店 <span>信息</span></h4>
						<div class="address">
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-phone" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>电话号码</h6>
									<p>+1 234 567 8901</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-envelope" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>邮箱地址</h6>
									<p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-map-marker" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>位置</h6>
									<p>Broome St, NY 10002,California, USA.

									</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="col-md-3 sign-gd flickr-post">
						<h4>BlankYours潮流鞋库<span>的贴吧</span></h4>
						<ul>
							<li><a href="single.html"><img src="images/t1.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="images/t3.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="images/t4.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="images/t1.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="images/t3.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="images/t4.jpg" alt=" " class="img-responsive" /></a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	</div>
	<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js?rd=<%=Math.random()%>"></script>
	<!-- //js -->
	<!-- cart-js -->
	<%--<script src="js/minicart.js"></script>--%>
	<<%--script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>--%>
	<!-- //cart-js -->
	<!-- /nav -->
	<script src="js/modernizr-2.6.2.min.js?rd=<%=Math.random()%>"></script>
	<script src="js/classie.js?rd=<%=Math.random()%>"></script>
	<script src="js/demo1.js?rd=<%=Math.random()%>"></script>
	<!-- //nav -->
	<!--search-bar-->
	<script src="js/search.js?rd=<%=Math.random()%>"></script>
	<!--//search-bar-->
	<!-- price range (top products) -->
	<script src="js/jquery-ui.js?rd=<%=Math.random()%>"></script>
	<script>
		//<![CDATA[
		var price="";
		var price2="";
		if (price==""&& price2==""){
			price=50*1;
			price2=6000*1;
		}
		$(window).load(function () {
			$("#slider-range").slider({
				range: true,
				min: 0,
				max: 9000,
				values: [price, price2],
				slide: function (event, ui) {
					$("#amount").val("￥" + ui.values[0] + " - " + ui.values[1]);
				}
			});
			$("#amount").val("￥" + $("#slider-range").slider("values", 0) + " - " + $("#slider-range").slider("values", 1));

			$("#div").mouseout(function () {
				var a=$("#amount").val();
				var b=a.substring(1,a.length);
				var c=new Array();
				c=b.split("-");
				 price=c[0].replace(/\s*/g,"");
				 price2=c[1].replace(/\s*/g,"");
				$.ajax({
					url:"seek2",
					type:"post",
					data:"price="+price+"&price2="+price2,
					async:"false",
					success:function (data) {
						if (data=="true"){
							/*alert("成功")*/
						}
					}
				})
			})
		}); //]]>

	</script>

	<!-- //price range (top products) -->

	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js?rd=<%=Math.random()%>"></script>
	<script type="text/javascript" src="js/easing.js?rd=<%=Math.random()%>"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


</body>

</html>