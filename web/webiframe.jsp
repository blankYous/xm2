<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx">
<head>
    <title>个人信息</title>
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

    <script type="text/javascript">/*var base ="https://www.adidas.com.cn";var staticbase ="//static.adidas.com.cn";var imgbase ="https://img.adidas.com.cn/resources/";var defaultImg ="https://img.adidas.com.cn/resources/images/default.png";*/var profile ="dev";var environmentbase ="pro";var captchaId_register ="8af74c359ab74053aa465a6f7bb9ccb8";/*var hypePageDomain ="https://hype.adidas.com.cn";var basePayment ="https://payment.adidas.com.cn";var ossimgbase ="https://bztic-adidas-prod.oss-cn-shanghai.aliyuncs.com/";*/var ossSwitch ="true";var adobeTrankingEnvironment="{adobeTrankingEnvironment}";var adobeTrankingJSEnvironment="{adobeTrankingJSEnvironment}";</script><link rel="stylesheet" type="text/css" media="screen" href="//static.adidas.com.cn/??libs/spice/css/spice.css,libs/spice/css/spice.icon.css?20200213081555835" />

    <!--[if lte IE 7]>
  <link rel="stylesheet" href="//static.adidas.com.cn/libs/spice/css/spice.ie7.css" />-->

    <link rel="stylesheet" type="text/css" media="screen" href="//static.adidas.com.cn/??libs/spice/js/cloudzoom/css/cloudzoom.css,libs/spice/js/tinyscrollbar/css/tinyscrollbar.css,libs/spice/js/datetime/css/datetime.css,libs/slider/jquery-ui.css,libs/swiper/css/swiper.min.css,css/common.css?20200213081555835" />

    <link rel="stylesheet" type="text/css" media="screen" href="//static.adidas.com.cn/??libs/spice/css/spice.icon.css,css/myaccount-memeber.css?20200213081555835" />




    <!-- //custom-theme -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
    <link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Owl-carousel-CSS -->
    <link rel="stylesheet" type="text/css" href="css/contact.css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="http://fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        #cg{
            display: none;
            background-color:#FFFFFF ;
            height:120px;
            width: 300px;
            border: 0px solid #000000;
            position: fixed;
            /*opacity: 0.9;*/
            left:50%;
            top:50%;
            margin-left: -200px;
            margin-top: -60px;
            z-index: 999;
        }
    </style>
    <style>
        #iframe{
            margin-left: 180px;
            width: 100%;
            height: 600px;
        }
        #yuan{
            padding: 0px 5px;
            border-radius:50%;
            background-color:#FFFFFF;
            color:forestgreen;position:absolute;top: -13px;left: -6px
        }
    </style>
</head>

<body style="position: relative">
<div id="cgs" style="position:absolute;background-color: #000000;opacity: 0.5;z-index: 998;height: 100%;width: 100%;display: none">
</div>
<div id="cg">
    <table border="1" height="100%" width="100%">
        <tr>
            <td colspan="2" height="70%">
                <p style="font-width: bold;color: #000000" align="center">确定退出吗?</p>
            </td>
        </tr>
        <tr>
            <td><button class="bs" style="height: 100%;width: 100%">确定</button></td>
            <td><button class="bs" style="height: 100%;width: 100%">取消</button></td>
        </tr>
    </table>
</div>
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
            </div>
            <!-- cart details -->
            <div class="top_nav_right">
                <div class="shoecart shoecart2 cart cart box_1">
                    <form action="checkout" method="post" class="last">
                        <span id="yuan">${count}</span>
                        <input type="hidden" name="cmd" value="_cart">
                        <input type="hidden" name="display" value="1">
                        <button class="top_shoe_cart"  type="submit" name="submit" value="">
                            <i class=" fa  fa-cart-arrow-down"></i>
                        </button>
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
                <li style="position: absolute"><a class="cd-search-trigger" href="#cd-search"></a></li>
            </ul>
        </div>
        <div id="cd-search" class="cd-search" style="position:absolute;margin-top: -60px" >
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
<button id="sjs"  style="border-bottom: 1px solid red;margin-top: -40px;font-size: 20px;color: red">返回上一级</button>
<script>
    $(function () {
          var url="";
          url = document.referrer;
          $("#sjs").click(function () {
                 location.href=url;
          })
    })
</script>
<section class="container">
    <article class="article article-my-width">
        <div class="my-content-box float-clearfix">
            <div class="myaccount-left float-clearfix none-sm">
                <div class="myaccount-left-top" style="position: absolute;left:-100px ;width: 250px">
                    <div class="myaccount-tit">
                        <i class="icon icon-head-portrait"></i>
                        <p>BlankYours 账户</p>
                        <i class="icon icon-caret none block-sm"></i>
                    </div>
                </div>
                <div class="left-nav-item events-left-nav-item" style="position: absolute;left: -100px;top:70px;width: 250px">
                    <ul class="float-clearfix" id="myaccountr-navbar">
                        <li class="is-active" data-id="myPersonInfoListLi">
                            <a href="selectUser" target="dizhi">
                                <i class="icon icon-myaccount icon-myaccount-2"></i>   <%--点击<li>添加内样式is-active--%>
                                <span>我的个人信息</span>
                                <i class="icon icon-caret"></i>
                            </a>
                        </li>
                        <li class="" data-id="myAddressListLi">
                            <a href="selectAddress" target="dizhi">
                                <i class="icon icon-myaccount icon-myaccount-3"></i>
                                <span>我的地址簿 </span>
                                <i class="icon icon-caret"></i>
                            </a>
                        </li>
                        <li class="" data-id="orderListLi">
                            <a href="sum" target="dizhi">
                                <i class="icon icon-myaccount icon-myaccount-6"></i>
                                <span>我的订单</span>
                                <i class="icon icon-caret"></i>
                            </a>
                        </li>
                        <li class="" data-id="orderListLi">
                            <a href="selectCollect" target="dizhi">
                                <i class="icon icon-myaccount icon-myaccount-7"></i>
                                <span>我的收藏</span>
                                <i class="icon icon-caret"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <script src="js/jquery-1.12.4.js?rd=<%=Math.random()%>"></script>
                <script type="text/javascript">
                    $(function () {
                        $("#myaccountr-navbar li").click(function () {
                            var index= $("#myaccountr-navbar li").index(this);
                            $("#myaccountr-navbar li:eq("+index+")").attr("class","is-active").siblings().attr("class"," ");
                        })
                    })
                </script>
            </div>
            <div style="width: 100%;height: 500px">
                <iframe id="iframe" src="selectUser" name="dizhi" height="600" width="500" frameborder="0" scrolling="auto"></iframe>
            </div>
        </div>
    </article>
</section>
<!-- /newsletter-->
<div class="newsletter_w3layouts_agile" style="">
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

<!-- js -->
<%--<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>--%>
<!-- //js -->
<!-- cart-js -->
<%--<script src="js/minicart.js"></script>--%>

<!-- //cart-js -->
<!-- /nav -->
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="js/classie.js"></script>
<script src="js/demo1.js"></script>
<!-- //nav -->
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