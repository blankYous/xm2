<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <title></title>
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
    <%--  <link rel="stylesheet" type="text/css" media="screen" href="//static.adidas.com.cn/??libs/spice/js/cloudzoom/css/cloudzoom.css,libs/spice/js/tinyscrollbar/css/tinyscrollbar.css,libs/spice/js/datetime/css/datetime.css,libs/slider/jquery-ui.css,libs/swiper/css/swiper.min.css,css/common.css?20200213081555835" />
      <link type="text/css" href="css/Address.css">
      <link type="text/css" href="css/Address2.css">--%>
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

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"><%--标签--%>

    <%--  <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">--%>
    <%--  <link type="text/css" href="https://anta-cn-web.obs.myhwclouds.com/theme/pc/css/style.css" rel="stylesheet">--%>

    <%--   <script type="text/javascript" src="https://anta-cn-web.obs.myhwclouds.com/theme/pc/js/jquery-1.8.3.min.js"></script>--%>

    <link href="css/common.css" type="text/css" rel="stylesheet">
    <link href="css/ucenter.css"type="text/css" rel="stylesheet">
    <%-- <link rel="stylesheet" type="text/css" href="css/liui.css" />--%>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
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
</head>
<body>
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

                <script type="text/javascript">
                    $(function () {
                        $("#myaccountr-navbar li").click(function () {
                            var index= $("#myaccountr-navbar li").index(this);
                            $("#myaccountr-navbar li:eq("+index+")").attr("class","is-active").siblings().attr("class"," ");
                        })
                        $(".collect-ops").click(function () {
                            var index=$(".collect-ops").index(this);
                            var id=$(".id:eq("+index+")").text();
                            var tj="";
                            $.ajax({
                                url:"deleteCollect",
                                type:"POST",
                                data:"id="+id,
                                async: false,
                                success: function (date) {
                                    tj=date
                                }
                            })
                            if (tj=="true"){
                                $(".collect-ops:eq("+index+")").parent().remove();
                            }
                        })

                        $(".collect-inner").click(function () {
                            var index = $(".collect-inner").index(this);
                            var src = $(".img:eq(" + index + ")").attr("src");
                            location.href="img?src="+src
                        })
                    })
                </script>
<%--            </div>--%>
            <div class="uc-box" style="background-color: #f0f1f5;">
                <div class="uc-box-inner">
                    <div class="uc-page-title">
                        <span >我的收藏</span>
                    </div>
                    <ul class="collect-types" style="width: 1100px">
                        <li class="active"><a href="javascript:;"><span>全部收藏</span></a></li>
                    </ul>
                    <c:forEach items="${listCollect}" var="list">
                        <div class="collect-item" style="margin-left: 32px;background-color: #ffffff;padding: 5px">
                            <a class="collect-inner" :href="item.url" target="_blank" title="item.goods_info.pro_title">
                                <span class="id"style="display: none">${list.id}</span>
                                <div class="collect-pic">
                                    <img src="${list.imgName}" class="img">
                                </div>
                                <p class="collect-name ellipsis--l2">${list.title}</p>
                                <p class="collect-price">
                                    <span>￥${list.price}</span>
                                    <span class="mktprice" v-if="item.goods_info.price!=item.goods_info.market_price">￥${list.originalPrice }</span>
                                </p>
                            </a>
                            <div v-else class="collect-ops" @click="toggleCollect(item.id_goods,'add')"><i></i><span>取消收藏</span></div>
                        </div>
                    </c:forEach>
                    <div v-else class="list-empty" style="display: none">
                        <div class="list-empty-inner" >
                            <img src="https://anta-cn-web.obs.myhwclouds.com/theme/images/antacn/icons/order-empty.svg" alt="">
                            <a :href="url.path_list">暂无收藏商品，快去选择心仪的商品吧~</a>
                        </div>
                    </div>
                </div>
            </div>



            <script src="https://anta-cn-web.obs.myhwclouds.com/theme/pc/js/mall.common.js"></script>

            <script type="text/javascript" src="https://anta-cn-web.obs.myhwclouds.com/theme/pc/js/vue.min.js"></script>
            <script type="text/javascript" src="https://anta-cn-web.obs.myhwclouds.com/theme/pc/js/jquery.scrollLoading.js"></script>

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
<%--<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>--%>

</body>
</html>