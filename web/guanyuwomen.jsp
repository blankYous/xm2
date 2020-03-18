<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx">

<head>
	<title>About</title>
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
	<link rel="stylesheet" href="css/about.css" type="text/css" media="screen" property="" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
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
				<div class="mobile-nav-button" style="margin-right: -30px">
					<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true" style="margin-top:7px"></i></button>
                    <p style="display: none" id="userName">${user}</p>
				</div>

				<!-- cart details -->
				<div class="top_nav_right">
					<div class="shoecart shoecart2 cart cart box_1">
						<form action="checkout" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="display" value="1">
							<button class="top_shoe_cart" type="submit" name="submit" value="">
							<%--	<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>--%>
								<i class=" fa  fa-cart-arrow-down"></i>
							</button>
						</form>
						<div style="margin-top: -50px;margin-left: 45px">
							<button class="top_shoe_cart  top_shoe_personal"  >
								<i class="fa " id="personage" aria-hidden="true"><img src="images/personage.png"></i>
							</button>
						</div>
					</div>
				</div>
                <script src="js/jquery-1.12.4.js"></script>
                <script>
                    $(function () {
                        var userName=$("#userName").text();
                        $("#personage").click(function () {
                            alert(userName)
                            if (userName==""){
                                $("#login").show();
                                $("#login2").show();
                            } else {
								location.href="selectUser?userName="+userName;
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
        <div id="cd-search" class="cd-search" style="position:absolute;margin-top: -220px">
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
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<h3 class="head">关于我们</h3>
			<p class="head_para">其他信息</p>
			<div class="inner_section_w3ls">
				<div class="col-md-6 news-left">
					<img src="images/ab.jpg" alt=" " class="img-responsive">
				</div>
				<div class="col-md-6 news-right">
					<h4>欢迎来到BlankYours潮流鞋库</h4>
					<p class="sub_p">我们一直以世界跑步运动领导者为使命。自2007年起，我们在跑步领域频频发力，
						先后携手中国，美国，法国等二十多个国家的马拉松，成为世界赞助马拉松赛事较多的运动品牌。
					</p>
					<p>我们的深受青少年的喜爱，我一直是潮流的领袖，我会一直保持下去。
					</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>

	</div>
	<div class="mid_services">
		<div class="col-md-6 according_inner_grids">
			<h3 class="heading two">我们的故事</h3>
			<div class="according_info">
				<div class="panel-group about_panel" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title asd">
								<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true"
								    aria-controls="collapseOne">
							  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>我们的目标
							</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body panel_text">
							我一直坚持制造舒适，潮流，又便宜的鞋，让全世界以最便宜的价格，买最好的鞋
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-md-6 mid_services_img">
			<div class="bar-grids">
				<h3 class="heading two three">普及范围</h3>
				<div class="skill_info">
					<h6>美国<span> 95% </span></h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active" style="width: 95%">
						</div>
					</div>
					<h6>中国<span> 85% </span></h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active" style="width: 85%">
						</div>
					</div>
					<h6>法国 <span>90% </span></h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active" style="width: 90%">
						</div>
					</div>
					<h6>俄罗斯 <span>86% </span></h6>
					<div class="progress prgs-last">
						<div class="progress-bar progress-bar-striped active" style="width: 86%">
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="clearfix"> </div>
	</div>
	<!-- /Properties -->
	<div class="mid_slider_w3lsagile">
		<div class="col-md-3 mid_slider_text">
			<h5>更多鞋子</h5>
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
	<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<%--<script src="js/minicart.js"></script>--%>
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
	<!-- cart-js -->
	<%--<script src="js/minicart.js"></script>--%>
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