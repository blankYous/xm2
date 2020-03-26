<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
	<title>Check Out</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script src="js/jquery-1.12.4.js"></script>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<script>
		$(function () {
			var url=document.referrer;
			if (url==""){
				location.href="checkout";
			}
		})
	</script>
	<script>
		/*取消商品*/
		$(function () {
			$(".close1").click(function () {
				var index = $(".close1").index(this);
				$("#cg").slideDown(400)
				$("#cgs").show()
				$(".bs").click(function () {
					if ($(this).html()=="确定") {
						$("#cgs").hide();
						$("#cg").slideUp(400)
						if ($(".rem").length == 0) {
							$(".anim").hide();
						}
						var mj = "";
						var img = $(".img-responsive:eq(" + index + ")").attr("src");
						var color=document.getElementsByClassName("color")[index].innerHTML;
						var xiema=document.getElementsByClassName("xiema")[index].innerHTML;
						$.ajax({
							url: "deleteGwc",
							type: "POST",
							async: false,
							data: "img=" + img+"&color="+color+"&xiema="+xiema,
							success: function (date) {
								mj = date;
							}
						});
						if (mj.trim() == "true") {
							//$("#tr"+index).fadeOut(500,function (){
							/*$("#tr" + index).remove();*/
							$(".id").eq(index).parent().remove();
							//});
						}
						if ($(".rem .checkbox:eq(" + index + ")").prop("checked")) {
							var name = document.getElementsByClassName("na")[index].innerHTML;
							var mani = document.getElementsByClassName("ma")[index].innerHTML;
							mani = mani.substr(1);
							var code = document.getElementsByClassName("namecount")[index].innerHTML;
							var fws = document.getElementById("fw").innerHTML;
							fws = fws.substr(1)
							var mts = document.getElementById("mt").innerHTML;
							mts = mts.substr(1)
							var zjia = parseInt(mani) * parseInt(code)
							var fweis = parseInt(code) * 1;
							var doem = parseInt(fws) - fweis;
							var dome1 = parseInt(mts) - zjia - fweis;
							$("#fw").html("￥" + doem);
							$("#mt").html("￥" + dome1);
							for (var i = 0; i < $("#countsho li").length; i++) {
								var namespace = document.getElementsByClassName("li")[i].innerHTML;
								if (name == namespace) {
									$("#countsho li:eq(" + i + ")").remove();
								}
							}
						}
						counts();
					}
				});
				$("#cg-rt ").click(function () {
					$("#cg").slideUp(200)
					$("#cgs").hide()
				})
			});

			//点击加
			$('.value-plus').on('click', function () {
				var index=$(".value-plus").index(this)
				var code=document.getElementsByClassName("namecount")[index].innerHTML;
				var mn=parseInt(code)+1;//数量
				var kucun=$("#kucun").html()//库存
				if(mn==kucun){
					mn=kucun;
				}
				document.getElementsByClassName("namecount")[index].innerHTML=mn;
				var name=document.getElementsByClassName("na")[index].innerHTML;
				var img=$(".img-responsive:eq("+index+")").attr("src");
				var color=document.getElementsByClassName("color")[index].innerHTML;
				var xiema=document.getElementsByClassName("xiema")[index].innerHTML;
				var mani=document.getElementsByClassName("ma")[index].innerHTML;
				mani = mani.substr(1);
				$.ajax({
					url: "gwc",
					type: "POST",
					async: false,
					data:"name="+name+"&img="+img+"&color="+color+"&shoe="+xiema+"&price="+mani+"&count="+mn,
					success: function (date) {

					}
				});
				var mt = $("#mt");
				var fw = $("#fw");
				if ($(".rem .checkbox:eq("+index+")").prop("checked")){
					var mani = document.getElementsByClassName("ma")[index].innerHTML;
					mani = mani.substr(1);
					var fws=document.getElementById("fw").innerHTML;
					fws = fws.substr(1)
					var mts=document.getElementById("mt").innerHTML;
					mts = mts.substr(1)
					var count=parseInt(fws) + 1;
					var countm=parseInt(mts) + parseInt(mani)
					fw.html("￥"+count);
					mt.html("￥"+countm);
				}
				counts();
			});
			//点击减
			$('.value-minus').on('click', function () {
				var index=$(".value-minus").index(this)
				var code=document.getElementsByClassName("namecount")[index].innerHTML;
				var mn=parseInt(code)-1;
				var name=document.getElementsByClassName("na")[index].innerHTML;
				var color=document.getElementsByClassName("color")[index].innerHTML;
				var xiema=document.getElementsByClassName("xiema")[index].innerHTML;
				if (mn>0) {
					$.ajax({
						url: "updateGwc",
						type: "POST",
						async: false,
						data: "name=" + name + "&color=" + color + "&xiema=" + xiema,
						success: function (date) {
						}
					});
				}
				if (mn==0){
					mn=1;
				}
				document.getElementsByClassName("namecount")[index].innerHTML = mn;
				var mt = $("#mt");
				var fw = $("#fw");
				if ($(".rem .checkbox:eq("+index+")").prop("checked")) {
					if (mn > 1) {
						var mani = document.getElementsByClassName("ma")[index].innerHTML;
						mani = mani.substr(1);
						var fws = document.getElementById("fw").innerHTML;
						fws = fws.substr(1)
						var mts = document.getElementById("mt").innerHTML;
						mts = mts.substr(1)
						var count=parseInt(fws) - 1;
						var countm=parseInt(mts) - parseInt(mani)
						fw.html("￥"+count);
						mt.html("￥"+countm);
					}
				}
				counts();
			});
			//商品数量
			counts();
			function counts() {
				var ge=$("#ge");
				var mm=0;
				var lm = $("#ta tr").length;
				if (lm==0) {
					ge.html(0)
				}
				for (var i = 0; i <lm; i++) {
					var count =document.getElementsByClassName("namecount")[i].innerHTML;  //个数
					mm=mm+parseInt(count);
				}
				ge.html(mm);
			}

			//选中环节
			if ($(".rem").length==0){
				$(".anim").hide()
			}
			//加载全选
			$(".rem .checkbox").click(function () {
				gms()
			})
			gms()
			function gms() {
				var manager=0;
				for (var i=0;i<$(".rem").length;i++){
					if ($(".rem .checkbox:eq("+i+")").prop("checked")==false){
						++manager;
					}
				}
				if (manager==0){
					gm();
					$("#check").prop("checked","checked");
				}else{
					$("#check").removeAttr("checked")
				}
			}
			//计算
			function gm() {
				var he = 0;
				var km = 0;
				var gg = 0;
				var mt = $("#mt");
				var fw = $("#fw");
				var lm = $("#ta tr").length;
				if (lm == 0) {
					fw.html(0.00);
					mt.html(0.00);
				}
				if (lm>0) {
					for (var i = 0; i <lm; i++) {
						var mani = document.getElementsByClassName("ma")[i].innerHTML;
						mani = mani.substr(1);
						var count = document.getElementsByClassName("namecount")[i].innerHTML;  //个数
						var gh = parseInt(mani) * parseInt(count);   //每个商品总价钱
						he = he + gh;   //所有商品总价钱
						km = km + 1 * count;
						gg = km + he;
					}
					fw.html("￥"+km);
					mt.html("￥"+gg);
				}
			}
			//<%--						点击全选--%>
			$("#check").click(function () {
				quanx();
			});
			function quanx() {
				var length = $("#ta tr").length;
				if ($("#check").prop("checked")) {
					$(":checkbox").prop("checked", "checked");
					var list = "<li class=\"ym\"><i class=\"li\"> </i><i>-</i><span><i>￥</i><span class=\"tm\"> </span></span></li>";
					$("#countsho li").remove();
					for (var i = 0; i < length; i++) {
						$("#countsho").append(list);
						var mani = document.getElementsByClassName("ma")[i].innerHTML;
						mani = mani.substr(1);
						var name = document.getElementsByClassName("na")[i].innerHTML;
						$(".li:eq(" + i + ")").html(name);
						$(".tm:eq(" + i + ")").html(mani);
					}
					gm();
				} else {
					$(":checkbox").removeAttr("checked")
					$("#countsho li").remove();
					$("#mt").html("￥0.00");
					$("#fw").html("￥0.00");
				}

			}
			//单击选中单个商品计算
			$(".anim .checkbox").click(function () {
				var he = 0;
				var km = 0;
				var gg = 0;
				var or=0;
				var mt = $("#mt");
				var fw = $("#fw");
				var list = "<li class=\"ym\"><i class=\"li\"> </i><i>-</i><span><i>￥</i><span class=\"tm\"> </span></span></li>";
				$("#countsho li").remove();
				for (var i=0;i<$("#ta tr").length;i++) {
					if ($(".rem .checkbox:eq(" + i + ")").prop("checked")){
						//表示选中的有几个就追加几次
						$("#countsho").append(list);
						var mani = document.getElementsByClassName("ma")[i].innerHTML;
						mani = mani.substr(1);
						var name = document.getElementsByClassName("na")[i].innerHTML;
						$(".li:eq(" + or + ")").html(name);
						$(".tm:eq(" + or + ")").html(mani);
						++or;
						//计算选中的总价和服务费
						var count = document.getElementsByClassName("namecount")[i].innerHTML;  //个数
						var gh = parseInt(mani) * parseInt(count);   //每个商品总价钱
						he = he + gh;      //所有商品总价钱
						km = km + 1 * count;
						gg = km + he;
					}
				}
				fw.html("￥" + km);
				mt.html("￥" + gg);
			})
		});
	</script>
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Owl-carousel-CSS -->
	<link rel="stylesheet" type="text/css" href="css/checkout.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="http://fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
		  rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>
<style>
	#cg{
		display: none;
		background-color:#FFFFFF ;
		height:120px;
		width: 250px;
		border: 1px solid #FFFFFF;
		position: fixed;
		/*opacity: 0.9;*/
		left:50%;
		top:50%;
		margin-left: -150px;
		margin-top: -60px;
		z-index: 999;
	}
	#xxhh{
		display:none;color:#FFFFFF;
		margin-right: -120px;
		margin-top: -70px;background-color:#000000;
		border: 1px solid #000000;
		height: 100px;width: 300px;position: fixed;right:50%;top:50%
	;z-index:1000;
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
	.closes{

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
	.closes:after{

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
</style>
<body style="position: relative">
<div id="xxhh">
	<h5 align="center"  style="margin-top:20px">请您选择要结算的商品哦</h5>
</div>
<div id="cgs" style="position:absolute;background-color: #000000;opacity: 0.5;z-index: 998;height: 100%;width: 100%;display: none">
</div>

<%--登入框--%>
<div id="login" style=" "></div>
<div id="login2"style="">
	<div id="cancel"><span class="closes"></span></div>
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



<div id="cg">
	<button type="button" id="cg-rt" style="height:16px;top:1px;outline:none;border:0;background-color:#FFFFFF;position: absolute;right:-1px">
		<i class="fa fa-times" style="font-size: 15px;margin-bottom:-50px " ></i>
	</button>
	<table border="0" height="100%" width="100%">
		<tr>
			<td height="70%">
				<p style=";color: #000000;font-size: 15px" align="center">确定删掉我么?</p>
			</td>
		</tr>
		<tr>
			<td><button class="bs" style="color:#FFFFFF;outline: none;height: 100%;width: 100%;border:none;background-color:#f3362a">确定</button></td>
		</tr>
	</table>
</div>
<!-- banner -->
<div class="banner_top innerpage" id="home">
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
			<div class="mobile-nav-button">
				<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
			</div>
			<!-- cart details -->
			<div class="top_nav_right">
				<%--<div class="shoecart shoecart2 cart cart box_1">
                    <form action="#" method="post" class="last">
                        <input type="hidden" name="cmd" value="_cart">
                        <input type="hidden" name="display" value="1">
                        <button class="top_shoe_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                    </form>
                </div>--%>
				<div>
					<button class="top_shoe_cart  top_shoe_personal"  >
						<i class="fa " id="personage" aria-hidden="true"><img src="images/personage.png"></i>
					</button>
					<p style="display: none" id="userName">${user}</p>
				</div>
				<script src="js/jquery-1.12.4.js"></script>
				<script>
					$(function () {
						var userName=$("#userName").text();
						$("#personage").click(function () {
							<%--		var userName="<%request.getParameter("user");%>";--%>
							alert(userName)
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
								alert(tj)
								if (tj.trim()==user){
									$("#login").hide();
									$("#login2").hide();
									$("#userName").html(user);
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
	</div>
	<!-- //cart details -->
	<!-- search -->
	<div class="search_w3ls_agileinfo">
		<div class="cd-main-header">
			<ul class="cd-header-buttons">
				<li ><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
			</ul>
		</div>
		<div id="cd-search" class="cd-search">
			<form action="#" method="post">
				<input name="Search" type="search" placeholder="单击enter搜索...">
			</form>
		</div>
	</div>
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
		<div class="privacy about">
			<h3><span>购物车列表</span></h3>
			<div class="checkout-right">
				<h4>您的购物车包含: <span id="ge"></span>个产品</h4>
				<table class="timetable_sub">
					<thead>
					<tr>
						<th><lable class="anim"><input type="checkbox"  class="checkbox" id="check"></lable></th>
						<th>产品</th>
						<th>产品信息</th>
						<th>数量</th>
						<th>价钱</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody id="ta">
					<c:forEach items="${list}" var="list" varStatus="varStatus">
						<tr class="rem"  id="${varStatus.index}">
							<td><lable class="anim"><input type="checkbox" onclick="gms()"   class="checkbox"></lable></td>
							<td class="id" style="display: none">${list.tradeId}
							</td>
							<td class="invert-image" width="35%" ><a href="img?src=${list.tradeImg}"><img src="${list.tradeImg}"  alt="" class="img-responsive"></a></td>
							<td class="invert" width="30%"><span class="na">${list.tradeName}</span><br/>
								<span class="color">${list.tradeColor}</span>;
								<span class="xiema">${list.tradeShoe}</span>
							</td>
							<td class="invert">
								<div class="quantity">
									<div class="quantity-select">
										<div class="entry value-minus">&nbsp;</div>
										<div class="entry value"><span class="namecount">${list.tradeCounts}</span></div>
										<div class="entry value-plus active">&nbsp;</div>
									</div>
								</div>
							</td>
							<td class="invert" ><span class="ma">￥${list.tradePrice}</span></td>
							<td class="invert">
								<div class="rem">
									<div class="close1"  style="right:4px">取消商品</div>
								</div>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div id="sh-sh" style="height: 200px;width: 100%;border: 1px solid #cecece">
					<input type="hidden" name="cmd" value="_cart">
					<input type="hidden" name="display" value="1">
						<i class="fa fa-cart-arrow-down" style="margin-left:45%;;margin-top:60px;font-size: 60px" aria-hidden="true"></i>
					<a href="#">你还没有商品...</a>
				</div>
			</div>
			<div class="checkout-left">
				<div class="col-md-4 checkout-left-basket" >
					<h4>产品合计</h4>
					<ul id="countsho">
					</ul>
					<ul>
						<li style="font-weight: bold;color: #000000">总服务费 <i>-</i> <span id="fw">￥0.00</span></li>
						<li style="font-weight: bold;color: #000000">总计 <i>-</i> <span id="mt">￥0.00</span></li>
					</ul>
				</div>
				<div class="col-md-8 address_form">
					<div class="checkout-right-basket">
						<a href="javascript:void(0)">进行结算 </a>
					</div>
				</div>
				<script>
					$(function () {
						//判断购物车是否有商品的显示
						$(function () {
                          var count=$("#ta tr").length;
                          if (count==0){
                               $(".timetable_sub").hide();
						  }else{
                          	 $("#sh-sh").hide();
						  }
						})
						$(".checkout-right-basket").click(function () {
							var zji=document.getElementById("mt").innerText
							zji = zji.substr(1);
							//判断是否有选中
							var counts=0;
							for (var i=0;i<$("#ta tr").length;i++){
								if ($(".rem .checkbox:eq(" + i + ")").prop("checked")){
									counts++;
								}
							}
							if ($("#ta tr").length>0) {
								if (counts>0) {
									var namejson = new Array();
									var j = 0;
									//拿到所选中的信息的name值
									var lr = $("#ta .rem").length;
									for (var i = 0; i < lr; i++) {
										if ($(".rem .checkbox:eq(" + i + ")").prop("checked")) {
											namejson[j] = document.getElementsByClassName("na")[i].innerHTML;
											++j;
										}
									}
									var jsonshoe = new Array();
									var k=0;
									for (var i = 0; i < lr; i++) {
										if ($(".rem .checkbox:eq(" + i + ")").prop("checked")) {
											jsonshoe[k] = document.getElementsByClassName("xiema")[i].innerHTML;
											++k;
										}
									}
									var jsoncolor = new Array();
									var s=0;
									for (var i = 0; i < lr; i++) {
										if ($(".rem .checkbox:eq(" + i + ")").prop("checked")) {
											jsoncolor[s] = document.getElementsByClassName("color")[i].innerHTML;
											++s;
										}
									}
									var jsons=JSON.stringify(namejson);
									var colors=JSON.stringify(jsoncolor);
									var shoes=JSON.stringify(jsonshoe);
									alert(jsons)
									location.href="jsonName?jsons="+encodeURIComponent(jsons)+"&zji="+zji+"&colors="+encodeURIComponent(colors)+"&shoes="+encodeURIComponent(shoes);
								} else {
									$("#xxhh").fadeIn(600);
									$("#xxhh").fadeOut(600);
								}
							}
						})

					})
				</script>
				<div class="clearfix"> </div>
				<div class="clearfix"></div>
			</div>
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
							<li><a href="#">关于我们</a></li>
							<li><a href="404.jsp">服务</a></li>
							<li><a href="404.jsp">规则</a></li>
							<li><a href="#">联系我们</a></li>
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
						<%--							<h4>BlankYours潮流鞋库<span>的贴吧</span></h4>--%>
						<%--							<ul>--%>
						<%--								<li><a href="single.html"><img src="images/t1.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--								<li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--								<li><a href="single.html"><img src="images/t3.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--								<li><a href="single.html"><img src="images/t4.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--								<li><a href="single.html"><img src="images/t1.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--								<li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--								<li><a href="single.html"><img src="images/t3.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--								<li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--								<li><a href="single.html"><img src="images/t4.jpg" alt=" " class="img-responsive" /></a></li>--%>
						<%--							</ul>--%>
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
	shoe.render();

	shoe.cart.on('shoe_checkout', function (evt) {
		var items, len, i;

		if (this.subtotal() > 0) {
			items = this.items();

			for (i = 0, len = items.length; i < len; i++) {}
		}
	});
</script>
<!-- //cart-js -->
<!-- /nav -->
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="js/classie.js"></script>
<script src="js/demo1.js"></script>
<!-- //nav -->
<!--search-bar-->
<script src="js/search.js"></script>
<!--//search-bar-->
<!--quantity-->
<script>
</script>
<!--quantity-->

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	//单击返回到上面
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