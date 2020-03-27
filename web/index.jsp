<%@ page import="entity.Blank" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zxx">

<head>
	<title>BlankYours潮流鞋库</title>
	<!-- custom-theme -->
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
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="http://fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <script src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".lj").click(function () {
                var index=$(".lj").index(this)
                var title=$(".lj:eq("+index+")").parent().prev().prev().text();
                location.href="seek?name="+title;
            })
        })
    </script>
	<style>
		 body{
             position: relative
		}
		#login{
			border: red 1px solid;
			display: none;
			background:#000000;
			opacity: 0.5;
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
			margin-top: 300px;
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
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"><%--图标--%>
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
	<div class="banner_top" id="home" >

		<div class="wrapper_top_w3layouts">
			<div class="header_agileits">
				<div class="logo">
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
				<div class="mobile-nav-button" style="margin-right: -40px ">
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
                        <button class="top_shoe_cart  top_shoe_personal"  style="margin-top: -50px;margin-left: 40px">
                            <i class="fa " id="personage" aria-hidden="true"><img src="images/personage.png"></i>
                        </button>
						<p style="display: none" id="userName">${user}</p>
					</div>
				</div>
				<script>
					$(function () {
						var count="";
						$.ajax({
							url:"gwccount",
							type:"POST",
							async:false,
							/*data:"user="+user,*/
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
				<!-- //cart details -->
				<!-- search -->

				<div class="search_w3ls_agileinfo">
					<div class="cd-main-header" style="padding-right: 10px">
						<ul class="cd-header-buttons">
							<li style="position: absolute;"><a class="cd-search-trigger" href="#cd-search" ></a></li>
						</ul>
					</div>
					<div id="cd-search" class="cd-search"  style="position:absolute;margin-top: 30px">
						<div id="Search">
							<input name="Search" type="search" placeholder="搜索">
					</div>
					</div>
				</div>
				<script src="js/jquery-1.12.4.js"></script>
				<script type="text/javascript">
					$(function () {
						$("#Search").keydown(function (e) {
							if(13 === e.keyCode) {
								var name = $("input[name=Search]").val();
							/*	alert(name)*/
								if (name!=""){
									window.open("seek?name="+name)
									/*window.location.href="seek?name="+name;*/
								}

							}
						})

					})
				</script>
				<!-- //search -->

				<div class="clearfix"></div>
			</div>
			<!-- /slider -->
			<div class="slider" style="margin-top: -80px">
				<div class="callbacks_container">
					<ul class="rslides callbacks callbacks1" id="slider4">

						<li>
							<div class="banner-top2">
								<div class="banner-info-wthree">
									<h3>Nike</h3>
									<p>看看他们感觉有多好。</p>

								</div>

							</div>
						</li>
						<li>
							<div class="banner-top3">
								<div class="banner-info-wthree">
									<h3>卡米</h3>
									<p>适合各行各业。</p>

								</div>

							</div>
						</li>
						<li>
							<div class="banner-top">
								<div class="banner-info-wthree">
									<h3>彪马</h3>
									<p>看看他们感觉有多好。</p>

								</div>

							</div>
						</li>
						<li>
							<div class="banner-top1">
								<div class="banner-info-wthree">
									<h3>Adidas</h3>
									<p>适合各行各业。</p>

								</div>

							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- //slider -->
			<ul class="top_icons">
				<li><a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a></li>
				<li><a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a></li>
				<li><a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a></li>
				<li><a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a></li>

			</ul>
		</div>
	</div>
	<!-- //banner -->
	<!-- /girds_bottom-->
	<div class="grids_bottom">
		<div class="style-grids">
			<div class="col-md-6 style-grid style-grid-1">
				<img src="images/Adidas白色板鞋5.jpg" alt="shoe">
			</div>
		</div>
		<div class="col-md-6 style-grid style-grid-2">
			<div class="style-image-1_info">
				<div class="style-grid-2-text_info">
					<h3 class="name">Adidas</h3>
					<p>这款Deerupt运动鞋，采用亮丽网布设计。含弹性网材面料，为足部带来包覆感。网布包裹鞋面和中足，力求打造压缩效果，舒适贴合。反光细节，鞋跟缀反光3D图案，脚感舒适。舒适OrthoLite®鞋垫。</p>
					<div class="shop-button">
						<a href="javaScript:void(0)"  class="lj">立即前往</a>
					</div>
				</div>
			</div>
			<div class="style-image-2">
				<img src="images/Adidas经典鞋4.jpg" alt="shoe">
				<div class="style-grid-2-text">
					<h3>DEERUPT RUNNER</h3>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	</div>
	<!-- //grids_bottom-->
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >自助建站</a></div>
	<!-- /girds_bottom2-->
	<div class="grids_sec_2">
		<div class="style-grids_main">
			<div class="col-md-6 grids_sec_2_left">
				<div class="grid_sec_info">
					<div class="style-grid-2-text_info">
						<h3 class="name">彪马</h3>
						<p>将鞋带变成蝴蝶结装饰，创意满满，醒目吸睛，展现你的俏皮少女心。</p>
						<div class="shop-button">
							<a href="javaScript:void(0)"  class="lj">立即前往</a>
						</div>
					</div>
				</div>
				<div class="style-image-2">
					<img src="images/彪马板鞋女鞋休闲鞋小花朵刺绣蝴蝶结松糕鞋运动鞋4.jpg" alt="shoe">
					<div class="style-grid-2-text">
						<h3>PUMA</h3>
					</div>
				</div>
			</div>
			<div class="col-md-6 grids_sec_2_left">

				<div class="style-image-2">
					<img src="images/卡米2020年新款牛皮尖头中空细跟高跟鞋女鞋单鞋4.jpg" alt="shoe">
					<div class="style-grid-2-text">
						<h3>KumiKiwa</h3>
					</div>
				</div>
				<div class="grid_sec_info last">
					<div class="style-grid-2-text_info">
						<h3 class="name">卡米</h3>
						<p>人体工程学设计跟部，贴心的高度，稳固而不累脚，延伸美姿态，展现女人的风情，提升气质，展现你优雅时尚的风姿。</p>
						<div class="shop-button two">
							<a href="javaScript:void(0)"  class="lj">立即前往</a>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //grids_bottom2-->
	<!-- /Properties -->
	<div class="mid_slider_w3lsagile">
		<div class="col-md-3 mid_slider_text">
			<h5>更多的鞋子</h5>
		</div>
		<div class="col-md-9 mid_slider_info">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1" class=""></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
					<li data-target="#myCarousel" data-slide-to="3" class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
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
	<!--//banner -->

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
							<div class="back" ><i class="fa fa-facebook" aria-hidden="true" style="padding-top: 50px"></i></div>
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
                            <li><a href="guanyuwomen.jsp?user="${user}>关于我们</a></li>
                            <li><a href="404.jsp">服务</a></li>
                            <li><a href="404.jsp">规则</a></li>
                            <li><a href="lianxiwomen.jsp?user="${user}">联系我们</a></li>
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
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- /nav -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/demo1.js"></script>
	<!-- //nav -->
	<!-- cart-js -->
	<%--原版迷你购物车--%>
	<%--<script src="js/minicart.js"></script>--%>
	<script>
		/*shoe.render();

		shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});*/
	</script>
	<!-- //cart-js -->
	<!--search-bar-->
	<script src="js/search.js"></script>
	<!--//search-bar-->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!-- js for portfolio lightbox -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
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