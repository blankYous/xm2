<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zxx">

<head>
	<title>Paymennt</title>
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
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />

	<link rel="stylesheet" type="text/css" href="css/checkout.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="http://fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<script type="text/javascript" src="jps/jquery-latest.js"></script>
	<link type="text/css" href="jp/style.css" rel="stylesheet" />
	<script src="js/jquery-1.12.4.js"></script>
	<script src="js/jquery-1.8.3.min.js"></script>
	<link type="text/css" href="css/zfb.css" rel="stylesheet">
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
		.caretnew{
			display: inline-block;
			width: 0;
			height: 0;
			margin-left:20px;
			/*vertical-align: middle;*/
			border-top: 7px dashed;
			border-top: 7px solid\9;
			border-right: 7px solid transparent;
			border-left: 7px solid transparent;
		}
		.caretnew1{
			display: inline-block;
			width: 0;
			height: 0;
			margin-left:20px;
			/*vertical-align: middle;*/
			border-bottom: 7px dashed;
			border-bottom: 7px solid\9;
			border-right: 7px solid transparent;
			border-left: 7px solid transparent;
		}
		#fomss{
			border-bottom:1px solid #000000;
			border-left: none;
			border-right: none;
			border-top: none;;
			outline:none;
			background-color:#FFFFFF;
			height: 40px;
			width:80%;
			margin-left: 70px;
			margin-top: 20px
		}
		a {
			color: #006600;
			text-decoration: none;
		}

		a:hover {
			color: #990000;
		}
		.info select {
			height: 30px;
			width: 300px;
			border: 1px #c1c1c1 solid;
			background: #FFFFFF;
		}

		.info {
			margin: 5px;
		}
		.info #show {
			color: #3399FF;
		}
		.bottom {
			text-align: right;
			font-size: 12px;
			color: #CCCCCC;
			width: 1000px;
		}
		#gys{
			display:none;color:#FFFFFF;
			margin-right: -180px;
			margin-top: -70px;background-color:#FFFFFF;
			border: 1px solid #000000;
			height: 150px;width: 400px;position: fixed;right:50%;top:50%
		;z-index:1000;
		}
		#zss{
			display:block;color:#000000;
			margin-right: -50px;
			margin-top: -70px;position: fixed;right:50%;top:50%
		;z-index:1001;
		}
	</style>
	<style>
		.tab{
			padding: 0px;
			border: 1px solid #cecece;
			width: 95%;
			height: 200px;
			margin-top: 30px;
		}
		.tab td{
			text-align: center;
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
<body style="position: relative">
<div id="cgs" style="position:absolute;background-color: #000000;opacity: 0.5;z-index:998;height: 100%;width: 100%;display: none">
</div>
<div id="zss">
</div>
<div id="gys">
	<h3 style="z-index: 1001;margin-left: 180px;margin-top:40px;color: #000000 " class="fa-li fa fa-check-square fa-4x"></h3>
    <h3 style="z-index: 1001;margin-left: 180px;margin-top:40px;color: #000000 " class="fa-li fa fa-close fa-4x"></h3>
	<h3 align="center" style="color: #000000;margin-top: 60px">下单成功</h3>
</div>
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
	<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<div class="header_agileits">
				<div class="logo inner_page_log">
					<h1><a class="navbar-brand" href="index.jsp"><span>BlankYours</span> <i>潮流鞋库</i></a></h1>
				</div>
				<div class="overlay overlay-contentpush">
					<button type="button" class="overlay-close"><i class=" fa  fa-cart-arrow-down"></i></button>
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
							<span id="yuan">${count}</span>
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="display" value="1">
							<button class="top_shoe_cart" type="submit" name="submit" value="">
								<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
							</button>
						</form>
						<div style="margin-top: -35px;margin-left: 45px">
							<button class="top_shoe_cart  top_shoe_personal">
								<i class="fa " id="personage" aria-hidden="true"><img src="images/personage.png"></i>
							</button>
							<p style="display: none" id="userName">${user}</p>
						</div>
					</div>
				</div>
				<script src="js/jquery-1.8.3.min.js"></script>
				<script>
					$(function () {
						var userName=$("#userName").text();
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
						alert(count)
						if (count.trim()!="0"){
							$("#yuan").html(count);
						}else{
							$("#yuan").html(0);
						}
						$("#personage").click(function () {
							if (userName==""){
								$("#login").show();
								$("#login2").show();
							} else {
								location.href='web';
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
									window.location.reload();
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
			<div id="cd-search" class="cd-search" style="position:absolute;margin-top: -100px">
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

<style>
	.tab{
		padding: 0px;
		border: 1px solid #cecece;
		width: 95%;
		height: 200px;
		margin-top: 30px;
	}
	.tab td{
		text-align: center;
	}
</style>
<div class="ads-grid_shop">
	<div style="margin-bottom:50px">
		<div style="width:95%;">
			<h3 style="margin-left: 70px">订单列表</h3>
			<table border="1" style="margin-left: 70px" class="tab">
				<tr style="border:1px solid rgba(230,21,57,0.76)">
					<td width="30%" style=";background-color: rgba(230,21,57,0.76)">商品名称</td>
					<td style="background-color: rgba(230,21,57,0.76) ">商品信息</td>
					<td style="background-color: rgba(230,21,57,0.76)">配送方式</td>
				</tr>
				<c:forEach items="${list}" var="list" >
					<tr class="trams">
						<td  class="spname">${list.tradeName}</td>
						<td>
							价格: <span>${list.tradePrice}</span>, 鞋码：<span class="xiemas">${list.tradeShoe}</span>
							,颜色: <span class="colors">${list.tradeColor}</span>, 数量: <span class="countm">${list.tradeCounts}</span>
						</td>
						<td>快递 免邮</td>
					</tr>
				</c:forEach>
			</table>
			<br/>
		</div>
		<h3 style=";margin-top: 30px;margin-left: 70px;">
			<span>收货地址</span>
		</h3>

		<button type="button" id="fomss">
			<span STYLE="float: left;color: #c1c1c1" id="title">[默认地址]</span>
			<table>
				<tr>
					<td style="padding-left: 20px;display:none;"><span id="DefaultValue">${list1.get(0).getDefaultValue()}</span></td>
					<td style="padding-left: 20px" id="recipients">${list1.get(0).getRecipients()}</td>
					<td style="padding-left: 20px" id="province">${list1.get(0).getProvince()}</td>
					<td style="padding-left: 20px" id="city">${list1.get(0).getCity()}</td>
					<td style="padding-left: 20px" id="area">${list1.get(0).getArea()}</td>
					<td style="padding-left: 20px" id="detailed">${list1.get(0).getDetailed()}</td>
					<td style="padding-left: 20px" id="phone">${list1.get(0).getPhone()}</td>
					<td style="padding-left: 20px;display: none" id="xid">${list1.get(0).getId()}</td>
				</tr>
			</table>
			<span class="caretnew1" id="caretnew" style="float: right;margin-top: 10px"></span>
		</button>
		<div style="margin-left: 140px; margin-top: 20px; width: 800px;display: none" id="selectAddress">
			<a  href="selectAddress">新增地址</a>
		<table>
		<c:forEach items="${list1}" var="list" begin="0" end="${list1.size()}"  varStatus="status">
			<script>
				$(function () {
					var DefaultValue2=$(".DefaultValue:eq(${status.index})").text();
					if (DefaultValue2==0){
						$(".title:eq(${status.index})").html("[默认地址]")
						  //默认选中默认地址
					}else if (DefaultValue2==1) {
						$(".title:eq(${status.index})").html("  ")
					}
					var xid=$("#xid").text();
					var xid2=$(".xid:eq(${status.index})").text();
								})
			</script>
			<tr style="border: 1px #f2dede dashed;height: 80px;"class="tr">
				<td style="padding-left: 20px;"><i class="fa  fa-circle-o ys"></i><span class="DefaultValue" style="display: none">${list.defaultValue}</span><span class="title"></span></td>
				<td style="padding-left: 20px" class="recipients">${list.recipients}</td>
				<td style="padding-left: 20px" class="province">${list.province}</td>
				<td style="padding-left: 20px" class="city">${list.city}</td>
				<td style="padding-left: 20px" class="area">${list.area}</td>
				<td style="padding-left: 20px" class="detailed">${list.detailed}</td>
				<td style="padding-left: 20px;width: 200px" class="phone">${list.phone}</td>
				<td style="padding-left: 20px;display: none;" class="xid">${list.id}</td>
			</tr>
		</c:forEach>
			<tr><td  style=""></td></tr>
		</table>
		</div>

		<script type="text/javascript">
			$(function () {
				$(".ys:eq(0)").attr("class","fa fa-dot-circle-o ys");
				var a=0;
				$("#fomss").click(function () {
					if (a%2==0){
						$("#caretnew").attr("class","caretnew")
						$("#selectAddress").show();
					} else {
						$("#caretnew").attr("class","caretnew1")
						$("#selectAddress").hide();
					}
						a++;
				})


				//修改地址
				$(".tr").click(function () {
					var index=$(".tr").index(this);
					var defaultValue=$(".DefaultValue:eq("+index+")").text()
					var recipients=$(".recipients:eq("+index+")").text();
					var province=$(".province:eq("+index+")").text();
					var city=$(".city:eq("+index+")").text();
					var area=$(".area:eq("+index+")").text();
					var detailed=$(".detailed:eq("+index+")").text();
					var phone=$(".phone:eq("+index+")").text();
					var xid=$(".xid:eq("+index+")").text();
					$("#DefaultValue").html(defaultValue)
					$("#recipients").html(recipients)
					$("#province").html(province)
					$("#city").html(city)
					$("#area").html(area)
					$("#detailed").html(detailed)
					$("#phone").html(phone)
					$("#xid").html(xid);


					var DefaultValue=$("#DefaultValue").text();//提示是否默认地址
					if (DefaultValue==0){
						$("#title").html("[默认地址]")
					} else if (DefaultValue==1) {
						$("#title").html("  ")
					}
						$(".ys:eq("+index+")").attr("class","fa fa-dot-circle-o ys")
						$(".ys:eq("+index+")").parent().parent().siblings().find(".ys").attr("class","fa  fa-circle-o ys");
					$("#selectAddress").hide();
				})
			})
		</script>
	</div>
	<div class="shop_inner_inf">
		<div class="privacy about">
			<h3>付款<span>方式</span></h3>
			<!--/tabs-->
			<div class="responsive_tabs">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>货到付款(COD)</li>
						<li>微信/支付宝</li>
					</ul>
					<div class="resp-tabs-container">

						<!--//tab_one-->
						<div class="tab2">
							<div class="pay_info">
                                <form action="javascript:void(0)" method="post" class="creditly-card-form agileinfo_form">
									<section class="creditly-wrapper wthree, w3_agileits_wrapper">
										<div class="credit-card-wrapper">
											<div class="first-row form-group">
												<div class="controls">
													<label class="control-label">商品订单号</label>
													<input class="billing-address-name form-control" id="trade_no" type="text" name="name" placeholder="H:">
												</div>
												<div class="controls">
													<label class="control-label">订单名称</label>
													<input id="sj" class=" form-control" type="text" name="expiration-month-and-year" placeholder="H:"/>
												</div>
												<div class="controls">
													<label class="control-label">付款金额</label>
													<input id="amounts" value="<%=request.getAttribute("zji")%>" class=" form-control" type="text" name="expiration-month-and-year" placeholder="H:"/>
												</div>
											</div>
											<button class="submit" id="qrxd" style="margin-top: 20px"><span>确认下单</span></button>
                                            <script>
                                                $("#qrxd").click(function () {
                                                    var gh;
                                                    var countm=0;
                                                    var ddhao=$("#trade_no").val() //订单号
                                                    var ddname=$("#sj").val()   //订单名称
                                                    var ddprice=$("#amounts").val(); //订单金额
													var fosdzhi=$("#fomss tr td span").html(); //收货地址信息
													for (var i=0;i<$(".countm").length;i++){
														countm+=parseInt($(".countm:eq("+i+")").html())
													}
													var shengf=$("#recipients").html()
													var province=$("#province").html()
													var clientType=$("#city").html();
													var areaElement=$("#area").html();
													var detailed=$("#detailed").html();
													var phone=$("#phone").html();
													var dizhi="";
													dizhi+=shengf+""+province+""+clientType+""+areaElement+""+detailed
                                                    if (fosdzhi!="") {
														var namejson = new Array();
                                                        for (var i = 0; i < $(".trams").length; i++) {
                                                            namejson[i] = document.getElementsByClassName("spname")[i].innerHTML;  //商品名称
                                                        }
														var jsonshoe = new Array();
														for (var i= 0; i < $(".trams").length; i++) {
															jsonshoe[i] = document.getElementsByClassName("xiemas")[i].innerHTML;
														}
													var jsoncolor = new Array();
													for (var i = 0; i < $(".trams").length; i++) {
														jsoncolor[i] = document.getElementsByClassName("colors")[i].innerHTML;
													}
														var colors=JSON.stringify(jsoncolor);
														var shoes=JSON.stringify(jsonshoe);
                                                        var jsons = JSON.stringify(namejson);
                                                        $.ajax({
                                                            url: "qrxds",
                                                            type: "POST",
                                                            async: false,
                                                            data: "countm="+countm+"&ddhao=" + ddhao + "&ddname=" + ddname + "&ddprice=" + ddprice + "&ddphone=" + phone + "&ddzhi="+dizhi+"&jsons=" + encodeURIComponent(jsons)+"&colors="+encodeURIComponent(colors)+"&shoes="+encodeURIComponent(shoes),
                                                            success: function (date) {
                                                                gh = date;
                                                            }
                                                        })
                                                        if (gh.trim() == "1") {
                                                            $("#zss").append("<i class=\"fa-li fa fa-spinner fa-pulse fa-4x\"></i>提交中...");
                                                            setTimeout(function () {
                                                                $("#zss").html("");
																$("#gys h3:first").next().hide();
                                                                $("#gys").slideDown(600)
                                                                setTimeout(function () {
                                                                    $("#gys").css("display", "none")
                                                                }, 2000)
																setTimeout(function () {
																	location.href='checkout';
																},2000)
                                                            }, 2000)
                                                        }
                                                    }else{
                                                        $("#zss").append("<i class=\"fa-li fa fa-spinner fa-pulse fa-4x\"></i>提交中...");
                                                        setTimeout(function () {
                                                            $("#zss").html("");
                                                            $("#gys h3:last").html("请补充完信息!");
                                                            $("#gys h3:first").hide();
                                                            $("#gys").slideDown(600)
                                                            setTimeout(function () {
                                                                $("#gys").css("display", "none")
																$("#fomss").focus();
                                                            }, 2000)
                                                        }, 2000)
                                                    }
                                                });
                                                //默认给值
                                                function GetDateNow() {
                                                    var vNow = new Date();
                                                    var sNow = "";
                                                    sNow += String(vNow.getFullYear());
                                                    sNow += String(vNow.getMonth() + 1);
                                                    sNow += String(vNow.getDate());
                                                    sNow += String(vNow.getHours());
                                                    sNow += String(vNow.getMinutes());
                                                    sNow += String(vNow.getSeconds());
                                                    sNow += String(vNow.getMilliseconds());
                                                    document.getElementById("WIDout_trade_no").value =  sNow;
                                                    document.getElementById("trade_no").value=sNow;
                                                    document.getElementById("WIDsubject").value = "潮流鞋库";
                                                    document.getElementById("sj").value='潮流鞋库';
                                                    document.getElementById("WIDbody")
                                                }
                                                GetDateNow();
                                            </script>
										</div>
									</section>
								</form>
							</div>
						</div>
						<!--/tab_one-->
						<div class="tab1">
							<div class="pay_info">
								<div class="vertical_post check_box_agile">
									<div id="main">
										<form style="margin-top: -100px" name="alipayment" action="#" method="post" target="_blank">
											<div id="body1" class="show" name="divcontent">
												<dl class="content">
													<dt>商户订单号 ：</dt>
													<dd>
														<input id="WIDout_trade_no" name="WIDout_trade_no" />
													</dd>
													<hr class="one_line">
													<dt>订单名称 ：</dt>
													<dd>
														<input id="WIDsubject" name="WIDsubject" />
													</dd>
													<hr class="one_line">
													<dt>付款金额 ：</dt>
													<dd>
														<input id="WIDtotal_amount" value="<%=request.getAttribute("zji")%>" name="WIDtotal_amount" />
													</dd>
													<hr class="one_line">
													<dd class="btn-dd">
						<span class="new-btn-login-sp" style="position: absolute;right:420px">
							<button class="new-btn-login submit" type="button"  id="fuks"
							><span>付 款</span></button>
						</span><br/><br/><br/> <span class="note-help">如果您点击“付款”按钮，即表示您同意该次的执行操作。</span>
														<script>
															$(function () {
																var gh="";
																var countm=0;
																$("#fuks").click(function () {
																	var ddhao=$("#WIDout_trade_no").val() //订单号
																	var ddname=$("#WIDsubject").val()   //订单名称
																	var ddprice=$("#WIDtotal_amount").val(); //订单金额
																	for (var i=0;i<$(".countm").length;i++){
                                                                            countm+=parseInt($(".countm:eq("+i+")").html())
																	}
																	var shengf=$("#recipients").html();
																	var province=$("#province").html()
																	var clientType=$("#city").html();
																	var areaElement=$("#area").html();
																	var detailed=$("#detailed").html();
																	var phone=$("#phone").html();
																	var dizhi="";
																	dizhi+=shengf+"/t"+province+"/t"+clientType+"/t"+areaElement+"/t"+detailed
																	var fosdzhi=$("#fomss tr td span").html(); //收货地址信息
																	var namejson = new Array();
																	if (fosdzhi!="") {
																		for (var i = 0; i < $(".trams").length; i++) {
																			namejson[i] = document.getElementsByClassName("spname")[i].innerHTML;  //商品名称
																		}
																		var jsonshoe = new Array();
																		for (var i= 0; i < $(".trams").length; i++) {
																			jsonshoe[i] = document.getElementsByClassName("xiemas")[i].innerHTML;
																			}
																		var jsoncolor = new Array();
																	for (var i = 0; i < $(".trams").length; i++) {
																		jsoncolor[i] = document.getElementsByClassName("colors")[i].innerHTML;
																		}
																		var colors=JSON.stringify(jsoncolor);
																		var shoes=JSON.stringify(jsonshoe);
																		var jsons = JSON.stringify(namejson);
																		$.ajax({
																			url: "DD",
																			type: "POST",
																			async: false,
																			data: "countm="+countm+"&ddhao=" + ddhao + "&ddname=" + ddname + "&ddprice=" + ddprice + "&ddphone=" + phone + "&ddzhi=" + dizhi + "&jsons=" + encodeURIComponent(jsons)+"&colors="+encodeURIComponent(colors)+"&shoes="+encodeURIComponent(shoes),
																			success: function (date) {
																				gh = date;
																			}
																		})
																		if (gh.trim() == "1") {
																			$("#main form").attr("action", "alipay");
																			$("#fuks").attr("type", "submit");
																			$("#main form").submit();
																		}
																	}else{
																		$("#zss").append("<i class=\"fa-li fa fa-spinner fa-pulse fa-4x\"></i>提交中...");
																		setTimeout(function () {
																			$("#zss").html("");
																			$("#gys h3:last").html("请补充完信息!");
																			$("#gys h3:first").hide();
																			$("#gys").slideDown(600)
																			setTimeout(function () {
																				$("#gys").css("display", "none")
																				$("#fomss").focus();
																			}, 2000)
																		}, 2000)
																	}
																})
															})
														</script>
													</dd>
												</dl>
											</div>
										</form>
									</div>
									<script language="javascript">
										var tabs = document.getElementsByName('tab');
										var contents = document.getElementsByName('divcontent');
										(function changeTab(tab) {
											for(var i = 0, len = tabs.length; i < len; i++) {
												tabs[i].onmouseover = showTab;
											}
										})();

										function showTab() {
											for(var i = 0, len = tabs.length; i < len; i++) {
												if(tabs[i] === this) {
													tabs[i].className = 'selected';
													contents[i].className = 'show';
												} else {
													tabs[i].className = '';
													contents[i].className = 'tab-content';
												}
											}
										}
										//默认给值
										function GetDateNow() {
											var vNow = new Date();
											var sNow = "";
											sNow += String(vNow.getFullYear());
											sNow += String(vNow.getMonth() + 1);
											sNow += String(vNow.getDate());
											sNow += String(vNow.getHours());
											sNow += String(vNow.getMinutes());
											sNow += String(vNow.getSeconds());
											sNow += String(vNow.getMilliseconds());
											document.getElementById("WIDout_trade_no").value =  sNow;
											document.getElementById("trade_no").value=sNow;
											document.getElementById("WIDsubject").value = "潮流鞋库";
											document.getElementById("sj").value='潮流鞋库';
											document.getElementById("WIDbody")
										}
										GetDateNow();
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="clearfix"></div>
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
					<li>fsreatsrdthjk'\
					'lkjgxf\



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
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<%--<script src="js/minicart.js"></script>--%>
	<%--<script>
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
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/demo1.js"></script>
	<!-- //nav -->
	<!--search-bar-->
	<script src="js/search.js"></script>
	<!--//search-bar-->
	<!-- easy-responsive-tabs -->
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

	<!-- credit-card -->
	<script type="text/javascript" src="js/creditly.js"></script>
	<link rel="stylesheet" href="css/creditly.css" type="text/css" media="all" />

	<script type="text/javascript">
		$(function () {
			var creditly = Creditly.initialize(
				'.creditly-wrapper .expiration-month-and-year',
				'.creditly-wrapper .credit-card-number',
				'.creditly-wrapper .security-code',
				'.creditly-wrapper .card-type');

			$(".creditly-card-form .submit").click(function (e) {
				e.preventDefault();
				var output = creditly.validate();
				if (output) {
					// Your validated credit card output
					console.log(output);
				}
			});
		});
	</script>
	<!-- //credit-card -->


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