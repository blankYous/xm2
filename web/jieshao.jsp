<%@ page import="java.util.List" %>
<%@ page import="entity.Blank" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zxx">

<head>
	<title>Single</title>
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
	<style>
		#cg{
			display: none;
			background-color:#000000 ;
			height:120px;
			width: 300px;
			border: 1px solid #000000;
			position: fixed;
			/*opacity: 0.9;*/
			left:50%;
			top:50%;
			margin-left: -200px;
			margin-top: -60px;
			z-index: 999;
		}
	</style>
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
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
<%--提示--%>
<div id="cg" >
	<h1 align="center" style="margin-top:40px;color: #FFFFFF"><span id="ts">添加成功</span></h1>
</div>
	<!-- banner -->
<div class="banner_top innerpage" id="home">
	<div class="wrapper_top_w3layouts">
		<div class="header_agileits">
			<div class="logo inner_page_log">
				<h1><a class="navbar-brand" href="index.jsp"><span>BlankYours</span> <i>潮流鞋库</i></a></h1>
			</div>
			<div class="overlay overlay-contentpush">
				<button type="button" class="overlay-close"><%--<i class="fa fa-times" aria-hidden="true"></i>--%><i class=" fa  fa-cart-arrow-down"></i></button>

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
							<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
						</button>
					</form>
					<div style="margin-top: -50px;margin-left: 45px">
						<button class="top_shoe_cart  top_shoe_personal"  id="pers">
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
		</div>
	</div>
	<!-- //cart details -->
	<!-- search -->
	<div class="search_w3ls_agileinfo">
		<div class="cd-main-header">
			<ul class="cd-header-buttons">
				<li style="position: absolute"><a class="cd-search-trigger" href="#cd-search"></a></li>
			</ul>
		</div>
		<div id="cd-search" class="cd-search" style="position:absolute;margin-top: -280px">
			<div id="Search">
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

	<div class="ads-grid_shop" >
		<div class="shop_inner_inf">

			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="${list.get(0).getImgName()}" id="src">
								<div class="thumb-image"><img  src="${list.get(0).getImgName()}"  data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${list.get(1).getImgName()}">
								<div class="thumb-image"> <img src="${list.get(1).getImgName()}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${list.get(2).getImgName()}">
								<div class="thumb-image"> <img src="${list.get(2).getImgName()}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
						</ul>


						<div class="clearfix"></div>
					</div>
				</div>
			</div>

			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3 id="title">${ listAll.get(0).getTitle()}</h3>
				<p>￥<span class="item_price" id="jg">${listAll.get(0).getPrice()}</span>
					<del>￥<span id="yj">${ listAll.get(0).getOriginalPrice()}</span></del>
				</p>
				<div class="rating1">
					<ul class="stars">
						<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
					</ul>
				</div>
			<!--	<div class="description">
					<h5>检查送货，付款方式,费用和您的位置</h5>
					<form action="#" method="post">
						<input type="text" value="Enter pincode" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter pincode';}"
						    required="">
						<input type="submit" value="Check">
					</form>
				</div>-->
				<script src="js/jquery-2.1.4.min.js"></script>
				<script type="text/javascript">
					$(function () {
						$("#jian").click(function () {
							var count=$("#count").val();
							count--;
							if (count<=0){
								count=1;
							}
							$("#count").val(count);
						})
						$("#jia").click(function () {
							var count=$("#count").val();
							count++;
							var kucun=$("#kucun").html();
							if(count>parseInt(kucun)){
								$("#jia").css("disable","disable");
							}else{
								$("#count").val(count);
							}

						})
					})

				</script>

				<div class="occasional">
					<h5>码数 :</h5>
					<c:forEach  items="${listSize}" var="listSize">
						<%--<div class="colr ert" style="size: 10px">
							<label class="radio" style="padding-left: 10px"><input type="radio" name="radio" checked="">${listSize.size}</label>
						</div>--%>
					<label style="margin:20px" class="la"><input type="radio" name="radio" id="o"  style="margin:0px " value="${listSize.size}">${listSize.size}</label>
					</c:forEach>
					<script src="js/jquery-2.1.4.min.js"></script>
					<script type="text/javascript">
						$(function () {
							$(".la").eq(0).children("input").attr("checked","checked")
						})
					</script>

					<%--<div class="colr ert">
						<label class="radio"><input type="radio" name="radio" checked=""><i></i>39</label>
					</div>
					<div class="colr">
						<label class="radio"><input type="radio" name="radio"><i></i>40</label>
					</div>
					<div class="colr">
						<label class="radio"><input type="radio" name="radio"><i></i>41</label>
					</div>
					<div class="clearfix"> </div>--%>
				</div>


                <div class="color">
                    <h4>颜色 :</h4>
                     <c:forEach  items="${listColor}" var="listColor">
                        <label style="margin:20px" class="co"><input type="radio" name="radioColor" value="${listColor.color}" style="margin:0px ">${listColor.color}</label>
                    </c:forEach>
                </div>
                <script src="js/jquery-2.1.4.min.js"></script>
                <script type="text/javascript">
                    $(function () {
                        $(".co").eq(0).children("input").attr("checked","checked");
                    })
                </script>
              <script src="js/jquery-2.1.4.min.js"></script>
				<br/>
				<div>
					<h4>库存: <span id="kucun"><%=request.getServletContext().getAttribute("kucun")%></span></h4>
				</div>
				<script>
					$(function () {
						var gg="";
                    var color=$(".co input:checked").val()
					var shoe=$(".la input:checked").val()
				    var spmc=$("#spmc").html();
                    var xb=$("#xb").html();
                    var spjg=$("#spjg").html();
                      $.ajax({
						  url:"kucun",
						  type:"POST",
						  async:false,
						  data:"color="+color+"&shoe="+shoe+"&spmc="+spmc+"&xb="+xb+"&spjg="+spjg,
						  success:function (date) {
							  gg=date;
						  }
					  });
						if (gg!="0"){
							$("#kucun").html(gg)
						}else{
							$("#kucun").html(0)
						}

						//点击更换库存
						$(".la input").click(function () {
							var deb="";
							var shoe=$(".la input:checked").val()
							var color=$(".co input:checked").val()
							var spmc=$("#spmc").html();
							var xb=$("#xb").html();
							var spjg=$("#spjg").html();
							$.ajax({
								url:"kucun",
								type:"POST",
								async:false,
								data:"color="+color+"&shoe="+shoe+"&spmc="+spmc+"&xb="+xb+"&spjg="+spjg,
								success:function (date) {
									deb=date;
								}
							});
							if (deb.trim()!="0"){
								$("#kucun").html(deb)
							}else{
								$("#kucun").html(0)
							}
						})
						$("#co input").click(function () {
							var deb="";
							var shoe=$(".la input:checked").val()
							var color=$(".co input:checked").val()
							var spmc=$("#spmc").html();
							var xb=$("#xb").html();
							var spjg=$("#spjg").html();
							$.ajax({
								url:"kucun",
								type:"POST",
								async:false,
								data:"color="+color+"&shoe="+shoe+"&spmc="+spmc+"&xb="+xb+"&spjg="+spjg,
								success:function (date) {
									deb=date;
								}
							});
							if (deb!="0"){
								$("#kucun").html(deb)
							}else{
								$("#kucun").html(0)
							}
						})

					})
				</script>
				<br/>
                <div class="color-quality">
                    <div class="color-quality-right">
                        <h5>数量 :</h5><input type="button" value="-" id="jian"><input type="text" value="1" style="width: 40px;text-align: center;" id="count" ><input type="button" value="+"id="jia">
                    </div>
                </div>



                <br>


				<div class="occasion-cart">
					<div class="shoe single-item single_page_b">
						<form action="#" method="post">
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="add" value="1">
							<input type="hidden" name="shoe_item" value="Chikku Loafers">
							<input type="hidden" name="amount" value="650.00">
							<input type="button" name="gwc" value="添加到购物车" class="button add" id="tj"><span id="aa" style="display: none">${user}</span>
							<button id="sc" type="button" style=" display: inline-block;background-color: #0a0a0a;color: #f0f1f5;height:36px;width :110px; font-size:8px;text-align: center;border: 0px;">
								<i class="fa fa-gratipay fa-2x"><span>添加收藏</span></i>
							</button>
							<a href="#" data-toggle="modal" data-target="#myModal1"></a>
						</form>

					</div>

				</div>

				<script type="text/javascript">
					<%--				单击提交到购物车--%>
					$(function () {
							var ma = ""
							$("#tj").click(function () {
								var aa=$("#aa").html();
								alert(aa)
								if (aa==""){
									$("#login").show();
									$("#login2").show();
									$("#cancel").click(function () {
										$("#login").hide();
										$("#login2").hide();
									});
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
											});
											if (tj.trim()==user){
												$("#login").hide();
												$("#login2").hide();
												$("#aa").html(user);
												var counts="";
													$.ajax({
														url: "gwccount",
														type: "POST",
														data: "user=" + user,
														async:false,
														success: function (date) {
															counts=date;
														}
													});
													if (counts.trim()!="0") {
														$("#yuan").html(counts);
													} else {
														$("#yuan").html(0)
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
								}else {
									var title = $("#title").text();  //名称
									var jg = $("#jg").text();  //价格
									var count = $("#count").val();  //数量
									var shoe = $("input[name=radio]:checked").val();  //鞋码
									var color = $("input[name=radioColor]:checked").val();
									var img = $("#src").attr("data-thumb");  //图片路劲
									$.ajax({
										url: "gwc",
										data: "name=" + title + "&price=" + jg + "&count=" + count + "&img=" + img + "&shoe=" + shoe + "&color=" + color,
										dataType: "text",
										type: "POST",
										async: false,
										success: function (data) {
											ma = data;
										}
									});
									var counte="";
									$.ajax({
										url: "gwccount",
										type: "POST",
										data: "user=" + aa,
										async:false,
										success: function (date) {
											counte=date;
										}
									});
									if (counte.trim()!="0") {
										$("#yuan").html(counte);
									} else {
										$("#yuan").html(0)
									}
									if (ma.trim() == "true") {
										$("#ts").html("添加成功")
										$("#cg").fadeIn(600);
										$("#cg").fadeOut("slow");
									}
								}
							})
						$("#sc").click(function () {  //收藏
							var aa=$("#aa").text();
							if (aa==""){
								$("#login").show();
								$("#login2").show();
							} else {
								var title = $("#title").text();  //名称
								var yj= $("#yj").text();//原价
								var jg = $("#jg").text();  //价格
								var img = $("#src").attr("data-thumb");  //图片路劲
								$.ajax({
									url: "addCollect",
									data: "name=" + title + "&price=" + jg + "&originalPrice=" + yj + "&img=" + img ,
									dataType: "text",
									type: "POST",
									async: false,
									success: function (data) {
										ma = data;
									}
								});
								if (ma.trim() == "true") {
									$("#ts").html("收藏成功")
									$("#cg").fadeIn(600);
									$("#cg").fadeOut("slow");
								}else if (ma.trim()=="ysc"){
									$("#ts").html("已收藏")
									$("#cg").fadeIn(600);
									$("#cg").fadeOut("slow");
								}
							}
						})
					})
				</script>


				<ul class="social-nav model-3d-0 footer-social social single_page">
					<li class="share">分享: </li>
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
			<div class="clearfix"> </div>
			<!--/tabs-->
			<div class="responsive_tabs">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>商品信息</li>
						<li>评论</li>
					<%--	<li>描述</li>--%>
					</ul>
					<div class="resp-tabs-container">
						<!--/tab_one-->
						<div class="tab1">

							<div class="single_page">
								<table>
									<tr>
										<td>商品名称：</td>
										<td id="spmc">${listAll.get(0).getTitle()}</td>
									</tr>
									<tr>
										<td>鞋码：</td>
										<td>
										<c:forEach items="${listSize}" var="listSize">
											${listSize.size}&nbsp;
										</c:forEach>
										</td>
									</tr>
									<tr>
										<td>性别：</td>
										<td id="xb">${ listAll.get(0).getSex()}</td>
									</tr>
									<tr>
										<td>商品价格：</td>
										<td id="spjg">${listAll.get(0).getPrice()}</td>
									</tr>
								</table>
							</div>
						</div>
						<!--//tab_one-->
						<div class="tab2">

							<div class="single_page">
								<div class="bootstrap-tab-text-grids">
									<div class="bootstrap-tab-text-grid">
										<div class="bootstrap-tab-text-grid-left">
											<img src="images/t1.jpg" alt=" " class="img-responsive">
										</div>
										<div class="bootstrap-tab-text-grid-right">
											<ul>
												<li><a href="#">彭狗勇</a></li>
												<li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i> 回复</a></li>
											</ul>
											<p>穿起来很舒适，很舒服</p>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="add-review">
										<h4>添加一条评论</h4>
										<form action="#" method="post">
											<input type="text" name="Name" required="Name">
											<input type="email" name="Email" required="Email">
											<textarea name="Message" required=""></textarea>
											<input type="submit" value="发送">
										</form>
									</div>
								</div>

							</div>
						</div>
						<%--<div class="tab3">

							<div class="single_page">
								<h6>云龙(SRV)运动鞋(蓝色)</h6>
								<p></p>
								<p class="para"></p>
							</div>
						</div>--%>
					</div>
				</div>
			</div>
			<!--//tabs-->
			<!-- /new_arrivals -->


	<!--单击快速查看进入商品展示页面-->
			<script src="js/jquery-2.1.4.min.js"></script>
			<script type="text/javascript">
					$(function () {
						$(".new_arrivals .col-md-3 .men-thumb-item  .link-product-add-cart").click(function () {
							var src=$(this).parent().parent().prev().attr("src");
							location.href="img?src="+src;
						})
					})
			</script>



			<div class="new_arrivals">
				<h3>主打产品</h3>
				<!-- /womens -->
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="images/彪马小白鞋1.jpg" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="javascript:void(0)" class="link-product-add-cart">快速查看</a>
									</div>
								</div>
								<span class="product-new-top">新的</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="javascript:void(0)">彪马小白鞋 </a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">￥199.00</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Shuberry Heels">
											<input type="hidden" name="amount" value="575.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="images/耐克条纹运动鞋1.jpg" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="javascript:void(0)" class="link-product-add-cart">快速查看</a>
									</div>
								</div>
								<span class="product-new-top">新的</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="javascript:void(0)">耐克条纹运动鞋</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">￥499.00</span>
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
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Red Bellies">
											<input type="hidden" name="amount" value="325.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="images/耐克增高运动鞋1.jpg" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="javascript:void(0)" class="link-product-add-cart">快速查看</a>
									</div>
								</div>
								<span class="product-new-top">新的</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="javascript:void(0)">耐克增高运动鞋</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">￥899.00</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Running Shoes">
											<input type="hidden" name="amount" value="875.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="images/耐克透气休闲鞋1.jpg" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="javascript:void(0)" class="link-product-add-cart">快速查看</a>
									</div>
								</div>
								<span class="product-new-top">新的</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="javascript:void(0)">耐克透气休闲鞋</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">￥399.00</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Sukun Casuals">
											<input type="hidden" name="amount" value="505.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>

				<!-- //womens -->
				<div class="clearfix"></div>
			</div>
			<!--//new_arrivals-->


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
							<li><a href="lianxiwomen.jsp">联系我们</a></li>
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
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		/*shoe.render();*/

		/*shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});*/
	</script>
	<!-- //cart-js -->
	<!-- /nav -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/demo1.js"></script>
	<!-- //nav -->
	<!-- single -->
	<script src="js/imagezoom.js"></script>
	<!-- single -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!-- FlexSlider -->
	<script src="js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->

	<!--search-bar-->
	<script src="js/search.js"></script>
	<!--//search-bar-->
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