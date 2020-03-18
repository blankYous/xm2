<%@ page import="java.util.List" %>
<%@ page import="entity.Blank" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>付款</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="js/jquery-1.12.4.js"></script>
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
	<link href="css/zfb.css" type="text/css" rel="stylesheet"/>
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
	<script type="text/javascript" src="jps/jquery-latest.js"></script>
	<link type="text/css" href="jp/style.css" rel="stylesheet" />
	<style>
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
	<script src="js/jquery-1.8.3.min.js"></script>
	<script>
		$(function () {
			$("#qrxd").click(function () {
				var gh;
				var ddhao=$("#trade_no").val() //订单号
				var ddname=$("#sj").val()   //订单名称
				var ddprice=$("#amounts").val(); //订单金额
				var ddphone=$("#phones").html();  //电话号码
				var ddzhi=$("#fomse").html();   //订单地址
				var namejson = new Array();
				for(var i=0;i<$(".trams").length;i++){
					namejson[i]=document.getElementsByClassName("spname")[i].innerHTML;  //商品名称
				}
				var jsons=JSON.stringify(namejson);
				$.ajax({
					url:"qrxds",
					type:"POST",
					async:false,
					data:"ddhao="+ddhao+"&ddname="+ddname+"&ddprice="+ddprice+"&ddphone="+ddphone+"&ddzhi="+ddzhi+"&jsons="+encodeURIComponent(jsons),
					success:function (date) {
						gh = date;
					}
				})
				if (gh.trim()=="1") {
					$("#zss").append("<i class=\"fa-li fa fa-spinner fa-pulse fa-4x\"></i>提交中...");
					 setTimeout(function () {
                         $("#zss").html("");
						 $("#gys").slideDown(600)
                         setTimeout(function () {
                         	$("#gys").css("display","none")
						 },2000)
					 },2000);
				}
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
			})
		})
	</script>
</head>

<body style="position: relative">
<div id="cgs" style="position:absolute;background-color: #000000;opacity: 0.5;z-index:998;height: 100%;width: 100%;display: none">
</div>
<div id="zss">
</div>
<div id="gys">
	 <h3 style="z-index: 1001;margin-left: 180px;margin-top:40px;color: #000000 " class="fa-li fa fa-check-square fa-4x"></h3>
	 <h3 align="center" style="color: #000000;margin-top: 60px">下单成功</h3>
</div>
	<!-- banner -->
<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<div class="header_agileits">
				<div class="logo inner_page_log">
					<h1><a class="navbar-brand" href="index.jsp"><span>BLANKYOURS</span> <i>潮流鞋库</i></a></h1>
				</div>
				<div class="overlay overlay-contentpush">
					<button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

					<nav>
						<ul>
							<li><a href="index.jsp" class="active">首页</a></li>
							<li><a href="#">About</a></li>
							<li><a href="404.jsp">Team</a></li>
							<li><a href="shop.jsp">Shop Now</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
					</nav>
				</div>
				<div class="mobile-nav-button" style="margin-right: -30px">
					<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
				</div>
				<!-- cart details -->
				<div class="top_nav_right">
					<div class="shoecart shoecart2 cart cart box_1">
						<form action="checkout" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="display" value="1">
							<button class="top_shoe_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- //cart details -->
		<!-- search -->
		<div class="search_w3ls_agileinfo">
			<div class="cd-main-header">
				<ul class="cd-header-buttons">
					<li style="position: absolute"><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
				</ul>
			</div>
			<div id="cd-search" class="cd-search">
				<form action="#" method="post">
					<input name="Search" type="search" placeholder="输入点击确定...">
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
					<li>付款</li>
				</ul>
			</div>
		</div>
		<!-- //banner_inner -->
	</div>
	<!-- //banner -->
	<!-- top Products -->
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
						  <td class="spname">${list.tradeName}</td>
                          <td>
							  价格: <span>${list.tradePrice}</span>, 鞋码：<span>${list.tradeShoe}</span>
						      ,颜色: <span>${list.tradeColor}</span>, 数量: <span>${list.tradeCounts}</span>
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
				<span STYLE="float: left;color: #c1c1c1">H:</span>
				<span id="fomse" style="float: left"><%=request.getAttribute("shouhuo")%></span>
				<%
					String phone=request.getParameter("phone");
					if (phone == null) {
						phone="";
					}
				%>
				电话号码：<span id="phones" style="margin-right:50px "><%=phone%></span>
				<span class="caretnew1" style="float: right;margin-top: 10px"></span>
			</button>
			<div id="dics" style="display:none;border:1px solid #e6dde6;width: 90%;height:480px;margin-left:70px;margin-top: 20px">
				<label style="margin-left: 70px;margin-top: 50px">省/市/县/区:</label>
				<div class="info" style="margin-left:70px">
					<div>
						<select id="s_province" name="s_province" size="1"></select>
						<select id="s_city" name="s_city"></select>
						<select id="s_county" name="s_county"></select>
						<script class="resources library" src="js/area.js"  type="text/javascript"></script>
						<script type="text/javascript">_init_area();</script>
					</div>
					<div id="show"></div>
				</div>
				<form action="#" method="post" class="creditly-card-form agileinfo_form" style="width: 80%;margin-left: 70px;margin-top: 30px">
				<section class="creditly-wrapper wrapper">
					<div class="information-wrapper">
						<div class="first-row form-group">
							<div class="controls">
								<label class="control-label">详细地址:<span class="dizhi" style='display: none'>请输入你的地址</span></label>
								<input class="billing-address-name form-control" id="dizhi" type="text" name="name" placeholder="详细地址">
							</div>
							<div class="card_number_grids">
								<div class="card_number_grid_left">
									<div class="controls">
										<label class="control-label">手机号码:<span class="phone" style='display: none'>请输入你的电话号码</span></label>
										<input class="form-control"  id="phone" type="text" placeholder="手机号码">
									</div>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="controls">
								<label class="control-label">地址标签: </label>
								<select  class="form-control option-w3ls" size="1" id="bq">
									<option>家</option>
									<option>公司</option>
									<option>学校</option>
								</select>
					       </div>
	          </div>
	     </div>
				 </section>
					<button id="husd" class="submit" style="margin-left: 740px;margin-bottom: 20px"><span>提交地址</span></button>
			  </form>
			</div>
	</div>
		<script>
			var Gid = document.getElementById;
			var showArea = function() {
				Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" +
						Gid('s_city').value + " - 县/区" +
						Gid('s_county').value + "</h3>"
			}
			Gid('s_county').setAttribute('onchange', 'showArea()');
		</script>
<script>
	$(function () {
		$("#husd").click(function () {
	var  dizhi=$("#dizhi").val();  //详细地址
	var  phone=$("#phone").val();   //电话号码
	var  bq=$("#bq").val();             //地址标签
	var  shenf=$("#s_province").val();    //省份
	var shiqu=$("#s_city").val()		//市区
	var xian=$("#s_county").val()		//县

	var symbol=true;
	//判断是否为空
	function hh() {
		if (shenf=="省份"){
			$("#s_province").attr("style", "border:1px solid red")
			symbol = false;
			return symbol;
		}else{
			$("#s_province").removeAttr("style")
		}
		if (shiqu=="地级市"){
			$("#s_city").attr("style", "border:1px solid red")
			symbol = false;
			return symbol;
		}else{
			$("#s_city").removeAttr("style")
		}
		if (xian=="市、县级市"){
			$("#s_county").attr("style", "border:1px solid red")
			symbol = false;
			return symbol;
		}else{
			$("#s_county").removeAttr("style")
		}
		if (dizhi=="") {
			$("#dizhi").attr("style", "border:1px solid red");
			$(".dizhi").removeAttr("style")
			$(".dizhi").css("color","red");
			symbol = false;
			return symbol;
		}else{
			$("#dizhi").removeAttr("style");
			$(".dizhi").attr("style","display:none")
		}
		if (phone=="") {
			$("#phone").attr("style", "border:1px solid red");
			$(".phone").removeAttr("style")
			$(".phone").css("color","red");
			symbol = false;
			return symbol
		}else{
			$("#phone").removeAttr("style")
			$(".phone").attr("style","display:none")
		}
		if (bq==""){
			$("#bq").attr("style", "border:1px solid red");
			$(".bq").removeAttr("style")
			$(".bq").css("color","red");
			symbol=false;
			return symbol;
		}else{
			$("#bq").removeAttr("style")
			$(".bq").attr("style","display:none")
		}
		return symbol;
	}
   if (hh()){
   	    $(".caretnew").attr("class", "caretnew1")
	    $("#dics").fadeOut(600);
	    $("#fomse").html(shenf+"-"+shiqu+"-"+xian+"-"+dizhi);
	    $("#phones").html(phone)
	    $.ajax({
			url:"shouhuo",
			type:"post",
			async:false,
			data:"shenf="+shenf+"&shiqu="+shiqu+"&xian="+xian+"&dizhi="+dizhi+"&phone="+phone+"&bq="+bq,
		    success:function (date) {
			}
		})
          }
		});
		var boolean=true;
		$("#fomss").click(function () {
			if (boolean){
				boolean=false;
			$(".caretnew1").attr("class","caretnew")
			$("#dics").slideDown(800)
		}else {
				boolean=true;
				$(".caretnew").attr("class", "caretnew1")
				$("#dics").slideUp(800)
			}
		})
	})
</script>
		<div class="shop_inner_inf">
			<div class="privacy about">
				<h3>付款<span>方式</span></h3>
				<!--/tabs-->
				<div class="responsive_tabs">
					<div id="horizontalTab">
						<ul class="resp-tabs-list">
							<li>货到付款(COD)</li>
							<li>支付宝</li>
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
																	var gh;
                                                                    $("#fuks").click(function () {
																		var ddhao=$("#WIDout_trade_no").val() //订单号
																		var ddname=$("#WIDsubject").val()   //订单名称
																		var ddprice=$("#WIDtotal_amount").val(); //订单金额
                                                                        var ddphone=$("#phones").html();  //电话号码
																		var ddzhi=$("#fomse").html();   //订单地址
																		var namejson = new Array();
																		for(var i=0;i<$(".trams").length;i++){
																			namejson[i]=document.getElementsByClassName("spname")[i].innerHTML;  //商品名称
																		}
																		var jsons=JSON.stringify(namejson);
                                                                        $.ajax({
																			url:"DD",
																			type:"POST",
																			async:false,
																			data:"ddhao="+ddhao+"&ddname="+ddname+"&ddprice="+ddprice+"&ddphone="+ddphone+"&ddzhi="+ddzhi+"&jsons="+encodeURIComponent(jsons),
																			success:function (date) {
																				gh = date;
																			}
																		})
																		if (gh.trim()=="1"){
																			$("#main form").attr("action","alipay");
																			$("#fuks").attr("type","submit");
																			$("#main form").submit();
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
<%--							<div class="tab3">--%>
<%--								<div class="pay_info">--%>
<%--									<div class="vertical_post">--%>
<%--										<form action="#" method="post">--%>
<%--											<h5>Select From Popular Banks</h5>--%>
<%--											<div class="swit-radio">--%>
<%--												<div class="check_box_one">--%>
<%--													<div class="radio_one"> <label><input type="radio" name="radio" checked=""><i></i>Syndicate Bank</label> </div>--%>
<%--												</div>--%>
<%--												<div class="check_box_one">--%>
<%--													<div class="radio_one"> <label><input type="radio" name="radio"><i></i>Bank of Baroda</label> </div>--%>
<%--												</div>--%>
<%--												<div class="check_box_one">--%>
<%--													<div class="radio_one"> <label><input type="radio" name="radio"><i></i>Canara Bank</label> </div>--%>
<%--												</div>--%>
<%--												<div class="check_box_one">--%>
<%--													<div class="radio_one"> <label><input type="radio" name="radio"><i></i>ICICI Bank</label> </div>--%>
<%--												</div>--%>
<%--												<div class="check_box_one">--%>
<%--													<div class="radio_one"> <label><input type="radio" name="radio"><i></i>State Bank Of India</label> </div>--%>
<%--												</div>--%>
<%--												<div class="clearfix"></div>--%>
<%--											</div>--%>
<%--											<h5>Or SELECT OTHER BANK</h5>--%>
<%--											<div class="section_room_pay">--%>
<%--												<select class="year"><option value="">=== Other Banks ===</option><option value="ALB-NA">Allahabad Bank NetBanking</option><option value="ADB-NA">Andhra Bank</option><option value="BBK-NA">Bank of Bahrain and Kuwait NetBanking</option><option value="BBC-NA">Bank of Baroda Corporate NetBanking</option><option value="BBR-NA">Bank of Baroda Retail NetBanking</option><option value="BOI-NA">Bank of India NetBanking</option><option value="BOM-NA">Bank of Maharashtra NetBanking</option><option value="CSB-NA">Catholic Syrian Bank NetBanking</option><option value="CBI-NA">Central Bank of India</option><option value="CUB-NA">City Union Bank NetBanking</option><option value="CRP-NA">Corporation Bank</option><option value="DBK-NA">Deutsche Bank NetBanking</option><option value="DCB-NA">Development Credit Bank</option><option value="DC2-NA">Development Credit Bank - Corporate</option><option value="DLB-NA">Dhanlaxmi Bank NetBanking</option><option value="FBK-NA">Federal Bank NetBanking</option><option value="IDS-NA">Indusind Bank NetBanking</option><option value="IOB-NA">Indian Overseas Bank</option><option value="ING-NA">ING Vysya Bank (now Kotak)</option><option value="JKB-NA">Jammu and Kashmir NetBanking</option><option value="JSB-NA">Janata Sahakari Bank Limited</option><option value="KBL-NA">Karnataka Bank NetBanking</option><option value="KVB-NA">Karur Vysya Bank NetBanking</option><option value="LVR-NA">Lakshmi Vilas Bank NetBanking</option><option value="OBC-NA">Oriental Bank of Commerce NetBanking</option><option value="CPN-NA">PNB Corporate NetBanking</option><option value="PNB-NA">PNB NetBanking</option><option value="RSD-DIRECT">Rajasthan State Co-operative Bank-Debit Card</option><option value="RBS-NA">RBS (The Royal Bank of Scotland)</option><option value="SWB-NA">Saraswat Bank NetBanking</option><option value="SBJ-NA">SB Bikaner and Jaipur NetBanking</option><option value="SBH-NA">SB Hyderabad NetBanking</option><option value="SBM-NA">SB Mysore NetBanking</option><option value="SBT-NA">SB Travancore NetBanking</option><option value="SVC-NA">Shamrao Vitthal Co-operative Bank</option><option value="SIB-NA">South Indian Bank NetBanking</option><option value="SBP-NA">State Bank of Patiala NetBanking</option><option value="SYD-NA">Syndicate Bank NetBanking</option><option value="TNC-NA">Tamil Nadu State Co-operative Bank NetBanking</option><option value="UCO-NA">UCO Bank NetBanking</option><option value="UBI-NA">Union Bank NetBanking</option><option value="UNI-NA">United Bank of India NetBanking</option><option value="VJB-NA">Vijaya Bank NetBanking</option></select>--%>
<%--											</div>--%>
<%--											<input type="submit" value="PAY NOW">--%>
<%--										</form>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="tab4">--%>
<%--								<div class="pay_info">--%>
<%--									<div class="col-md-6 tab-grid">--%>
<%--										<img class="pp-img" src="images/paypal.png" alt="Image Alternative text" title="Image Title">--%>
<%--										<p>Important: You will be redirected to PayPal's website to securely complete your payment.</p><a class="btn btn-primary">Checkout via Paypal</a>--%>
<%--									</div>--%>
<%--									<div class="col-md-6">--%>
<%--										<form class="cc-form">--%>
<%--											<div class="clearfix">--%>
<%--												<div class="form-group form-group-cc-number">--%>
<%--													<label>Card Number</label>--%>
<%--													<input class="form-control" placeholder="xxxx xxxx xxxx xxxx" type="text"><span class="cc-card-icon"></span>--%>
<%--												</div>--%>
<%--												<div class="form-group form-group-cc-cvc">--%>
<%--													<label>CVV</label>--%>
<%--													<input class="form-control" placeholder="xxxx" type="text">--%>
<%--												</div>--%>
<%--											</div>--%>
<%--											<div class="clearfix">--%>
<%--												<div class="form-group form-group-cc-name">--%>
<%--													<label>Card Holder Name</label>--%>
<%--													<input class="form-control" type="text">--%>
<%--												</div>--%>
<%--												<div class="form-group form-group-cc-date">--%>
<%--													<label>Valid Thru</label>--%>
<%--													<input class="form-control" placeholder="mm/yy" type="text">--%>
<%--												</div>--%>
<%--											</div>--%>
<%--											<div class="checkbox checkbox-small">--%>
<%--												<label>--%>
<%--                                        <input class="i-check" type="checkbox" checked="">Add to My Cards</label>--%>
<%--											</div>--%>
<%--											<input class="btn btn-primary submit" type="submit" value="Proceed Payment">--%>
<%--										</form>--%>
<%--									</div>--%>
<%--									<div class="clearfix"></div>--%>
<%--								</div>--%>
<%--							</div>--%>
						</div>
					</div>
				</div>
				<!--//tabs-->
			</div>
		</div>
		<!-- //payment -->

		<div class="clearfix"></div>
	</div>
	<!-- //top products -->
	<div class="mid_slider_w3lsagile">
		<div class="col-md-3 mid_slider_text">
			<h5>Some More Shoes</h5>
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
			<h3>Sign up for Newsletter !</h3>
		</div>
		<div class="col-sm-6 newsright">
			<form action="#" method="post">
				<input type="email" placeholder="Enter your email..." name="email" required="">
				<input type="submit" value="Submit">
			</form>
		</div>

		<div class="clearfix"></div>
	</div>
	<!-- //newsletter-->
	<!-- footer -->
	<div class="footer_agileinfo_w3">
		<div class="footer_inner_info_w3ls_agileits">
			<div class="col-md-3 footer-left">
				<h2><a href="index.jsp"><span>D</span>owny Shoes </a></h2>
				<p>Lorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>
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
						<h4>Our <span>Information</span> </h4>
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="#">About</a></li>
							<li><a href="404.jsp">Services</a></li>
							<li><a href="404.jsp">Short Codes</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
					</div>

					<div class="col-md-5 sign-gd-two">
						<h4>Store <span>Information</span></h4>
						<div class="address">
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-phone" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>Phone Number</h6>
									<p>+1 234 567 8901</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-envelope" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>Email Address</h6>
									<p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-map-marker" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>Location</h6>
									<p>Broome St, NY 10002,California, USA.

									</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="col-md-3 sign-gd flickr-post">

					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<p class="copy-right-w3ls-agileits">Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
	</div>
	</div>
	</div>
	<!-- //footer -->
   <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="jps/script.js"></script>
	<!-- //js -->
	<!-- cart-js -->
<%--	<script src="js/minicart.js"></script>--%>
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