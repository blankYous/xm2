<%@ page import="java.util.List" %>
<%@ page import="entity.Blank" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
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

   <%-- <link rel="stylesheet" type="text/css" href="css/liui.css" />--%>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="//static.adidas.com.cn/??css/myaccount-address-book.css,css/myaccount-orders.css?20200213081555835" />
  <%--  <script type="text/javascript" src="//static.adidas.com.cn/??libs/spice/js/citySelect/json/area.zh.js,libs/spice/js/citySelect/jquery.citySelect.js,js/message/message_address_zh_CN.js,js/address/myaccount-address-book.js,js/address/validateAddress.js,js/address/postCode.js,js/common/handlerbars-common.js?20200213081555835"></script>
    <link type="text/css" href="css/Address3.css">--%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="js/distpicker.js"></script>
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
<body >
<%--提示框--%>
<%--<div id="cgs" style="position:absolute;background-color: #000000;opacity: 0.5;z-index: 998;height: 100%;width: 100%;display: none">--%>

<%--</div>--%>
<div id="cg">
    <table border="1" height="100%" width="100%">
        <tr>
            <td colspan="2" height="70%">
                <p style="font-width: bold;color: #000000" align="center">确定删除吗?</p>
            </td>
        </tr>
        <tr>
            <td><button class="bs" style="height: 100%;width: 100%">确定</button></td>
            <td><button class="bs" style="height: 100%;width: 100%">取消</button></td>
        </tr>
    </table>
</div>


<%--<div class="banner_top innerpage" id="home">--%>
<%--    <div class="wrapper_top_w3layouts">--%>
<%--        <div class="header_agileits">--%>
<%--            <div class="logo inner_page_log">--%>
<%--                <h1><a class="navbar-brand" href="index.jsp"><span>BlankYours</span> <i>潮流鞋库</i></a></h1>--%>
<%--            </div>--%>
<%--            <div class="overlay overlay-contentpush">--%>
<%--                <button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>--%>

<%--                <nav>--%>
<%--                    <ul>--%>
<%--                        <li><a href="index.jsp">BlankYours潮流鞋库</a></li>--%>
<%--                        <li><a href="logins.jsp">登入/注册</a></li>--%>
<%--                        <li><a href="guanyuwomen.jsp?user="${user}>关于我们</a></li>--%>
<%--                        <li><a href="404.jsp">服务</a></li>--%>
<%--                        <li><a href="404.jsp">规则</a></li>--%>
<%--                        <li><a href="lianxiwomen.jsp?user="${user}">联系我们</a></li>--%>
<%--                    </ul>--%>
<%--                </nav>--%>
<%--            </div>--%>
<%--            <div class="mobile-nav-button" style="margin-right: -30px">--%>
<%--                <button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true" style="margin-top:7px"></i></button>--%>
<%--            </div>--%>
<%--            <!-- cart details -->--%>
<%--            <div class="top_nav_right">--%>
<%--                <div class="shoecart shoecart2 cart cart box_1">--%>
<%--                    <form action="checkout" method="post" class="last">--%>
<%--                        <input type="hidden" name="cmd" value="_cart">--%>
<%--                        <input type="hidden" name="display" value="1">--%>
<%--                        <button class="top_shoe_cart" type="submit" name="submit" value="">--%>
<%--                            &lt;%&ndash;<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>&ndash;%&gt;--%>
<%--                            <i class=" fa  fa-cart-arrow-down"></i>--%>
<%--                        </button>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- //cart details -->--%>
<%--    <!-- search -->--%>
<%--    <div class="search_w3ls_agileinfo">--%>
<%--        <div class="cd-main-header">--%>
<%--            <ul class="cd-header-buttons">--%>
<%--                <li style="position: absolute"><a class="cd-search-trigger" href="#cd-search"></a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--        <div id="cd-search" class="cd-search" style="position:absolute;margin-top: -60px" >--%>
<%--            <div id="Search">--%>
<%--                <input name="Search" type="search" placeholder="搜索">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
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
<%--    <div class="clearfix"></div>--%>
<%--    <!-- /banner_inner -->--%>
<%--    <div class="services-breadcrumb_w3ls_agileinfo">--%>
<%--        <div class="inner_breadcrumb_agileits_w3">--%>

<%--            <ul class="short">--%>
<%--                <li><a href="index.jsp">首页</a><i>|</i></li>--%>
<%--                <li>查看</li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- //banner_inner -->--%>
<%--</div>--%>


<%--<link rel="stylesheet" type="text/css" media="screen" href="//static.adidas.com.cn/??css/myaccount-address-book.css,css/myaccount-orders.css?20200213081555835" />--%>
<%--<script type="text/javascript" src="//static.adidas.com.cn/??libs/spice/js/citySelect/json/area.zh.js,libs/spice/js/citySelect/jquery.citySelect.js,js/message/message_address_zh_CN.js,js/address/myaccount-address-book.js,js/address/validateAddress.js,js/address/postCode.js,js/common/handlerbars-common.js?20200213081555835"></script>--%>




<%--<section class="container">--%>
<%--    <article class="article article-my-width">--%>
<%--        <div class="my-content-box float-clearfix">--%>
<%--            <div class="myaccount-left float-clearfix none-sm">--%>
<%--                <div class="myaccount-left-top">--%>
<%--                    <div class="myaccount-tit">--%>
<%--                        <i class="icon icon-head-portrait"></i>--%>
<%--                        <p>BlankYours 账户</p>--%>
<%--                        <i class="icon icon-caret none block-sm"></i>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="left-nav-item events-left-nav-item">--%>
<%--                    <ul class="float-clearfix" id="myaccountr-navbar">--%>
<%--                        <li class="" data-id="myPersonInfoListLi">--%>
<%--                            <a href="selectUser">--%>
<%--                                <i class="icon icon-myaccount icon-myaccount-2"></i>   &lt;%&ndash;点击<li>添加内样式is-active&ndash;%&gt;--%>
<%--                                <span>我的个人信息</span>--%>
<%--                                <i class="icon icon-caret"></i>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="is-active" data-id="myAddressListLi">--%>
<%--                            <a href="#">--%>
<%--                                <i class="icon icon-myaccount icon-myaccount-3"></i>--%>
<%--                                <span>我的地址簿 </span>--%>
<%--                                <i class="icon icon-caret"></i>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="" data-id="orderListLi">--%>
<%--                            <a href="#">--%>
<%--                                <i class="icon icon-myaccount icon-myaccount-6"></i>--%>
<%--                                <span>我的订单</span>--%>
<%--                                <i class="icon icon-caret"></i>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="" data-id="orderListLi">--%>
<%--                            <a href="selectCollect">--%>
<%--                                <i class="icon icon-myaccount icon-myaccount-7"></i>--%>
<%--                                <span>我的收藏</span>--%>
<%--                                <i class="icon icon-caret"></i>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
            <script src="js/jquery-1.12.4.js?rd=<%=Math.random()%>"></script>
            <script type="text/javascript">
                $(function () {

                    $("#myaccountr-navbar li").click(function () {
                        var index= $("#myaccountr-navbar li").index(this);
                        $("#myaccountr-navbar li:eq("+index+")").attr("class","is-active").siblings().attr("class"," ");
                    })
                    var count=${count};
                    if (count==0){
                        /*alert(1)*/
                        $("#insertAddress").show();//打开新增按钮
                        $("#updateAddress").hide();//关闭修改按钮
                        $(".address-select-list").hide();//关闭展示盒子
                        $(".event-address-box").show();//打开新增盒子
                        $(".mb-place").attr("class","mb-place block-sm none");//关闭展示盒子头
                        $(".addAddress").attr("class","addAddress ");//打开新增盒子头
                        $(".event-save-return").attr("class","gl-cta gl-cta--primary gl-cta--center btn-cancel event-save-return gl-cta--secondary block-sm  none");//关闭取消按钮
                        $(".icon-checked").attr("class","icon icon-checked is-active")//默认选中
                        $("#span").html(0);//0代表选中
                        $(".display").hide();//数据展示盒子
                    }else if (count>=5){
                       /* alert(2)*/
                        $("#insertAddress").hide();//关闭新增按钮
                        $("#updateAddressAddress").hide();//关闭修改按钮
                        $(".address-select-list").show();//打开展示盒子
                        $(".event-address-box").hide();//关闭新增盒子
                        $(".addAddress").attr("class","addAddress none");//关闭新增盒子头
                        $(".mb-place").attr("class","mb-place block-sm ");//打开展示盒子头
                        $(".event-address").attr("class","order-title-link event-address none");//关闭新增
                        $(".maxaddress").attr("class","order-title-link maxaddress");//打开数量上限提示
                        $(".event-save-return").attr("class","gl-cta gl-cta--primary gl-cta--center btn-cancel event-save-return gl-cta--secondary block-sm  none");//关闭取消按钮
                        $(".icon-checked").attr("class","icon icon-checked")//默认不选中
                        $("#span").html("1");//1代表不选中

                    }else {
                       /* alert(3)*/
                        $("#insertAddress").show();//打开新增按钮
                        $("#updateAddress").hide();//关闭修改按钮
                        $(".address-select-list").show();//打开展示盒子
                        $(".event-address-box").hide();//关闭新增盒子
                        $(".addAddress").attr("class","addAddress none");//关闭新增盒子头
                        $(".mb-place").attr("class","mb-place block-sm ");//显示展示盒子头
                        $(".event-address").attr("class","order-title-link event-address");//打开新增
                        $(".maxaddress").attr("class","order-title-link none maxaddress");//关闭数量上限提示
                        $("#ressselect").hide();
                        $(".event-save-return").attr("class","gl-cta gl-cta--primary gl-cta--center btn-cancel event-save-return gl-cta--secondary block-sm none ");//打开取消按钮
                        $(".icon-checked").attr("class","icon icon-checked")//默认不选中
                        $("#span").html("1");//1代表不选中
                    }
                    $("#nName").blur(function () {
                        var name=$("#nName").val();  //收货人
                        if (name==""||name==null||isNaN(name)==false){
                            $("#nName").focus();
                            $("#nName").next().attr("class","");
                        }else {
                            $("#nName").next().attr("class","msg-block");
                        }
                    })
                    $("#mobilephone").blur(function () {
                        var shoe=$("#mobilephone").val();  //手机号
                        if (shoe==""||shoe==null||isNaN(shoe)||shoe.length!=11){
                            $("#mobilephone").focus();
                            $("#mobilephone").next().attr("class","");
                        }else {
                            $("#mobilephone").next().attr("class","msg-block");
                        }
                    })
                    $("#addresss").blur(function () {
                        var addresss=$("#addresss").val();  //详细地址
                        if (addresss==""||addresss==null){
                            $("#addresss").focus();
                            $("#addresss").next().attr("class","");
                        }else {
                            $("#addresss").next().attr("class","msg-block");
                        }
                    })
                    var oneId=$("#id0").text();//第一个地址的id*/
                    $("#insertAddress").click(function () {  //保存新增地址
                        alert(oneId)
                        var name=$("#nName").val();  //收货人
                        var phone=$("#mobilephone").val();//手机号
                        var  province =$(".province option:selected").text();//省
                        var city=$(".city option:selected").text();//市
                        var area=$(".area option:selected").text();//区
                        var detailed=$("#addresss").val();//详细地址
                        var  defaultValue= $("#span").text();//是否默认
                        if (oneId==""){
                            oneId=0//张痞子会遇到的问题
                        }
                        if (name==""||phone==""||detailed==""){
                                $("#ts").html("信息不完整");
                        }else {
                            var tj=null;
                            $.ajax({
                                url:"addAddress",
                                type:"post",
                                data:"name="+name+"&phone="+phone+"&province="+province+"&city="+city+"&area="+area+"&detailed="+detailed+"&defaultValue="+defaultValue+"&oneId="+oneId,/*oneId地址第一tr的id*/
                                async: false,
                                success: function (date) {
                                    tj=date
                                }
                            })
                          /*  alert(tj)*/
                           if (tj=="true"){

                               location.href="selectAddress";
                           }

                        }
                    })
                    var  id=0; /*修改共用id*/
                    $(".event-editor").click(function () {           /*编制按钮*/
                        var index = $(".event-editor").index(this);
                        id = $(".event-editor:eq(" + index + ")").parent().parent().next().children("span").text();
                        var  recipients= $(".address-name:eq(" + index + ")").text(); //收货人
                        var provinces=$(".provinces:eq(" + index + ")").text();//省
                        var citys=$(".citys:eq(" + index + ")").text();//市
                        var areas=$(".areas:eq(" + index + ")").text();//区
                        var detaileds=$(".detaileds:eq(" + index + ")").text();//详细地址
                        var phone=$(".detaileds:eq(" + index + ")").parent().next().children("p").text();  //电话
                        var defaultValue=$(".defaultValue:eq(" + index + ")").text();//默认 0默认 1不默认
                        if (id > 0) {
                            $(".address-select-list").hide();//关闭展示盒子
                            $(".event-address-box").show();
                            $("#insertAddress").hide();//打开新增按钮
                            $("#updateAddress").show();//关闭修改按钮
                            /*$(".update-address-box").show();//修改盒子*/
                            $(".order-title-tips").attr("class", "order-title-tips none")//关闭未有收货地址提示
                            $(".mb-place").attr("class", "mb-place block-sm none");//关闭展示盒子头
                            $(".addAddress").attr("class", "addAddress ");//打开新增盒子头
                            $(".event-save-return").attr("class", "gl-cta gl-cta--primary gl-cta--center btn-cancel event-save-return gl-cta--secondary block-sm ");//打开取消按钮
                            $("#nName").val(recipients);
                            $("#mobilephone").val(phone);
                            $(".province option:selected").text(provinces);//省
                            $(".city option:selected").text(citys.trim());//市
                            $(".area option:selected").text(areas);//区
                            $("#addresss").val(detaileds);
                            $("#span").text(defaultValue);
                            if (defaultValue==0){
                                $(".icon-checked").attr("class","icon icon-checked is-active")//选中
                            } else {
                                $(".icon-checked").attr("class","icon icon-checked")//默认选中
                            }
                        }


                    })
                    $("#updateAddress").click(function () {  /*修改按钮*/
                        var name=$("#nName").val();  //收货人
                        var phone=$("#mobilephone").val();//手机号
                        var detailed=$("#addresss").val();//详细地址
                        var  province =$(".province option:selected").text();//省
                        var city=$(".city option:selected").text();//市
                        var area=$(".area option:selected").text();//区
                        var  defaultValue= $("#span").text();//是否默认
                        if (name==""||phone==""||detailed==""){
                            $("#ts").html("信息不完整");
                        }else {
                            var tj=null;
                            $.ajax({
                                url:"updateAddress",
                                type:"post",
                                data:"name="+name+"&phone="+phone+"&province="+province+"&city="+city+"&area="+area+"&detailed="+detailed+"&defaultValue="+defaultValue+"&id="+id+"&oneId="+oneId,
                                async: false,
                                success: function (date) {
                                    tj=date
                                }
                            })
                            alert(tj)
                            if (tj=="true"){

                                location.href="selectAddress";
                            }

                        }
                    })
                    //单击删除
                    $(".event-delect").click(function () {
                        var index = $(".event-delect").index(this);
                        var id = $(".event-delect:eq(" + index + ")").parent().parent().next().children("span").text();
                        $("#cg").show();
                        $("#cgs").show();
                        $(".bs").click(function () {
                            if ($(this).html()=="确定"){
                                $("#cg").hide();
                                $("#cgs").hide();
                                var tj = null;
                                $.ajax({
                                    url: "deleteAddress",
                                    type: "post",
                                    data: "id=" + id,
                                    async: false,
                                    success: function (date) {
                                        tj = date
                                    }
                                })
                                alert(tj)
                                if (tj == "true") {
                                    location.href = "selectAddress";
                                }
                            }else {
                                $("#cg").hide();
                                $("#cgs").hide();
                            }
                        })
                    })
                    /*单击新增按钮*/
                    $(".event-address").click(function () {
                        $("#insertAddress").show();//打开新增盒子
                        $("#updateAddress").hide();//关闭修改盒子
                        $(".address-select-list").hide();//关闭展示盒子
                        $(".event-address-box").show();//打开新增盒子
                        $(".order-title-tips").attr("class","order-title-tips none")//关闭未有收货地址提示
                        $(".mb-place").attr("class","mb-place block-sm none");//关闭展示盒子头
                        $(".addAddress").attr("class","addAddress ");//打开新增盒子头
                        $(".event-save-return").attr("class","gl-cta gl-cta--primary gl-cta--center btn-cancel event-save-return gl-cta--secondary block-sm ");//打开取消按钮
                        $(".icon-checked").attr("class","icon icon-checked ")//不选中
                        $("#span").html(1);//1代表不选中
                    })

                    //单击设为默认按钮
                    $(".a-address").click(function () {
                        alert(1)
                        var tj=null;
                        var index=$(".a-address").index(this);
                        var id=$(".a-address:eq("+index+")").parent().parent().parent().next().next().next().next().children("span").text();
                        $.ajax({
                            url:"updateAddressValue",
                            type:"post",
                            data:"id="+id+"&oneId="+oneId,
                            async: false,
                            success: function (date) {
                                tj=date
                            }
                        })

                        if (tj=="true"){
                            alert(tj)
                            location.href="selectAddress";
                        }
                    })
                })
            </script>

<%--             <input type="hidden" value="myAddressListLi" id="leftBarSelect"/>--%>
<%--            <div class="myaccount-right" >--%>
                <div class="myaccount-rig-left float-clearfix" style="width: 100%;height: 100%">
                    <div class="ma-address-box" >
                        <div class="order-submit-content order-submit-member-content float-clearfix">
                            <div class="order-content-left">
                                <div class="delivery-address payment-method">
                                    <div class="order-title-box">
                                        <div class="mb-place block-sm "><%--显示盒子头--%>
                                            <span class="order-title-labels">我的地址簿</span>
                                            <a class="order-title-link event-address none"><i class="add-ic"></i>新增地址</a>
                                            <a class="order-title-link none maxaddress"><i class="add-ic"></i>您的地址数量已达上限，请删除其他地址后再保存</a>
                                            <a class="order-title-link spantxt none">已添加地址</a>
                                        </div>
                                    </div>


                                    <div class="addAddress none"><%--新增盒子头--%>
                                    <div class="order-title  none-sm ">我的地址簿</div>
                                    <div class="order-title-tips  ">您还未保存配送地址，请填写以下内容。</div>
                                    </div>

                                    <div class="address-select-list event-address-select" style="display: none" >

                                        <%--  查询--%>
                                        <div class="display" style="" >
                                            <table style="width: 100%">
                                                <c:forEach items="${listAddress}" var="list" begin="0" end="${count}" varStatus="status">
                                                    <script>
                                                        $(function () {
                                                            var aa=$("#defaultValue${status.index}").text();
                                                           if (aa==0){//设置默认地址背景
                                                               var bb="#defaultValue${status.index}";
                                                               $(""+bb).next().attr("class","default-span");
                                                               $(""+bb).next().next().attr("class","none");
                                                               $(""+bb).parent().parent().parent().css("background-color","#f2dede")
                                                           } else if (aa==1) {
                                                               var bb="#defaultValue${status.index}";
                                                               $(""+bb).next().attr("class","default-span none");
                                                               $(""+bb).next().next().attr("class","")
                                                               $(""+bb).parent().parent().parent().css("background-color","#fff")
                                                           }
                                                        })
                                                    </script>
                                                <tr style="border-bottom: 1px gray dotted;border-top: 1px gray dotted;height: 100px;width: 100%" id="${status.index}">
                                                    <td style="padding-left: 70px;">
                                                        <div class="address-default" style="width: 100px;font-size: 5px;">
                                                            <span id="defaultValue${status.index}" class="defaultValue" style="display: none">${list.defaultValue}</span>
                                                            <span class="default-span ">[默认地址]</span>
                                                            <span class="none"><i class="fa fa-dot-circle-o "></i><input type="button" style="border: 0px;background-color: #FFFFFF " value="设为默认地址" class="a-address"></span>
                                                        </div>
                                                    </td>
                                                    <td style="padding-left: 50px;">
                                                        <p class="address-name" style="font-size: 5px;width: 80px;">${list.recipients}</p>
                                                    </td>
                                                    <td style="padding-left: 50px;width: 380px">
                                                        <div class="address-box">
                                                            <p style="font-size: 5px;">
                                                                <span class="provinces">${list.province}</span>
                                                                <span class="citys">${list.city}</span>
                                                                <span class="areas">${list.area}</span>
                                                                <span class="detaileds">${list.detailed}</span>
                                                            </p >
                                                            <div style="font-size: 5px;"> <span>电话：&nbsp;</span><p style="display: inline-block">${list.phone}</p></div>
                                                        </div>
                                                    </td>
                                                    <td style="padding-left: 20px;">
                                                        <p class="edit-box" data-id="6106437" style="font-size: 5px;">
                                                            <a class="edit-button event-editor">编辑</a>
                                                            <span> | </span>
                                                            <a class="edit-button event-delect"><em>删除</em></a>
                                                        </p>
                                                    </td>
                                                    <td style="padding-left:30px;"><span id="id${status.index}" style="display: none">${list.id}</span></td>
                                                </tr>
                                                </c:forEach>
                                                <tr><td><div style="margin-top: 80px"></div></td></tr>
                                            </table>

                                        </div>
                                    </div>
                                   <%-- <script type="text/javascript">
                                        $(function () {


                                        })
                                    </script>--%>

                                    <div class="event-address-box" style="display: none">
                                        <%--新增  --%>
                                        <div   style="padding-left: 20px;">
                                            <input type="hidden" name="addressId" id="addressId" />
                                            <div class="address-form-content tinyscrollbar">
                                                <div class="viewport">
                                                    <div class="overview">
                                                        <div class="address-form-box float-clearfix">
                                                            <div class="form-group">
                                                                <label class="control-label">收货人<span class="font-icon-red">*</span></label>
                                                                <div class="form-input">
                                                                    <input placeholder="" type="text" id="nName" value="${listUpdate.get(0).getRecipients()}" >
                                                                    <div class="msg-block">
                                                                        <i class="icon msg-icon"></i>
                                                                        <span>格式错误,请重新输入</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">手机号码<span class="font-icon-red">*</span></label>
                                                                <div class="form-input">
                                                                    <input placeholder="" type="text"  id = "mobilephone" >
                                                                    <div class="msg-block">
                                                                        <i class="icon msg-icon"></i>
                                                                        <span>格式错误,请重新输入</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group" style="padding-left: 20px">
                                                                <div class="row form-selects form-select-box none-sm events-city-simulation" >

                                                                   <%-- <div id="liui-city" style="width: 500px;margin-left: -10px;margin-bottom: 0px">
                                                                        <p style="margin-left: 10px">地址：</p>
                                                                    </div>
                                                                    <script src="js/areaList.js"></script>
                                                                    <script src="js/city.js"></script>--%>

                                                                   <%-- <script>
                                                                        let obj = city.render();
                                                                        city.listen(obj);
                                                                    </script>--%>
                                                                        <div class="form-inline mt-2 mb-4">
                                                                            <p style="margin-left: 1px">地址：</p>
                                                                            <div data-toggle="distpicker" style="width: 100%">
                                                                                <select class="form-control province" data-province="—— 省 ——" style="font-size: 10px">${listUpdate.get(0).getPhone()}</select>
                                                                                <select class="form-control city" data-city="—— 市 ——" style="font-size: 10px">${listUpdate.get(0).phone}</select>
                                                                                <select class="form-control area" data-district="—— 区 ——"style="font-size: 10px">${listUpdate.get(0).phone}</select>
                                                                            </div>
                                                                        </div>
                                                                    <div class="col-12-12" style="margin-top: 2px">
                                                                        <div class="form-input">
                                                                            <textarea  id="addresss" placeholder="请填写详细收货地址，例如街道名称、门牌号码等信息"></textarea>
                                                                            <div class="msg-block">
                                                                                <i class="icon msg-icon"></i>
                                                                                <span>格式错误,请重新输入</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="checked-select-con font-size-12">
                                                            <div class="checked-select" id="default-address-labell">
                                                                <i class="icon icon-checked is-active"></i>   <%--  is-active代表默认--%>
                                                                <span>设为默认地址</span><span id="span" style="display: none"></span>
                                                            </div>
                                                        </div>
                                                        <script src="js/jquery-1.12.4.js?rd=<%=Math.random()%>"></script>
                                                        <script>
                                                            $(function () {
                                                                var a=0;
                                                                $("#default-address-labell").unbind('click').click(function () {
                                                                    if (a%2===0){
                                                                        $(".icon-checked").attr("class", "icon icon-checked is-active")//默认选中
                                                                        $("#span").html("0");//0代表选中
                                                                    } else {
                                                                        $(".icon-checked").attr("class", "icon icon-checked ")//不选中
                                                                        $("#span").html("1");//1代表选中
                                                                    }
                                                                    a++;
                                                                })
                                                                $(".gl-cta--secondary").click(function () {
                                                                    $("#insertAddress").hide();//打开新增盒子
                                                                    $("#updateAddress").show();//关闭修改盒子
                                                                    $(".address-select-list").show();//打开展示盒子
                                                                    $(".event-address-box").hide();//关闭新增盒子
                                                                    $(".addAddress").attr("class","addAddress none");//关闭新增盒子头
                                                                    $(".mb-place").attr("class","mb-place block-sm ");//显示展示盒子头
                                                                    $(".event-address").attr("class","order-title-link event-address");//打开新增
                                                                    $(".maxaddress").attr("class","order-title-link none maxaddress");//关闭数量上限提示
                                                                    $("#ressselect").hide();
                                                                    $(".event-save-return").attr("class","gl-cta gl-cta--primary gl-cta--center btn-cancel event-save-return gl-cta--secondary block-sm none ");//打开取消按钮
                                                                    $(".icon-checked").attr("class","icon icon-checked")//默认不选中
                                                                    $("#span").html("1");//1代表不选中
                                                                })
                                                            })
                                                        </script>
                                                        <div class="add-address-btn" style="margin-top: 20px">
                                                            <p style="padding-left: 500px;color: red" id="ts"></p>
                                                            <a class="gl-cta gl-cta--primary gl-cta--center btn-blue event-save" id="insertAddress" style="display: none"><span style="color: #FFF;">保存该地址</span></a>
                                                            <a class="gl-cta gl-cta--primary gl-cta--center btn-blue event-save " id="updateAddress" style="display: none"><span style="color: #FFF;">更新该地址</span></a>
                                                            <a class="gl-cta gl-cta--primary gl-cta--center btn-cancel event-save-return gl-cta--secondary block-sm  none"><span>取消</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="mob-address-list-content none block-sm">
                                                        <div class="mb-list-tit">已添加地址</div>
                                                        <div class="mob-address-list father-list-box">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="scrollbar">
                                                <div class="track">
                                                    <div class="thumb">
                                                        <div class="end"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                       <%-- <script>
                                            $(function () {

                                            })
                                        </script>--%>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
<%--            </div>--%>
<%--        </div>--%>
<%--        </div>--%>
<%--    </article>--%>
<%--</section>--%>

<!-- /newsletter-->
<%--<div class="newsletter_w3layouts_agile">--%>
<%--    <div class="col-sm-6 newsleft">--%>
<%--        <h3>订阅鞋库公众号 !</h3>--%>
<%--    </div>--%>
<%--    <div class="col-sm-6 newsright">--%>
<%--        <form action="#" method="post">--%>
<%--            <input type="email" placeholder="请输入您的邮箱..." name="email" required="">--%>
<%--            <input type="submit" value="提交">--%>
<%--        </form>--%>
<%--    </div>--%>

<%--    <div class="clearfix"></div>--%>
<%--</div>--%>
<%--<!-- //newsletter-->--%>
<%--<!-- footer -->--%>
<%--<div class="footer_agileinfo_w3">--%>
<%--    <div class="footer_inner_info_w3ls_agileits">--%>
<%--        <div class="col-md-3 footer-left">--%>
<%--            <h2><a href="index.jsp"><span>BlankYours</span>潮流鞋库</a></h2>--%>
<%--            <p>心与脚同步，伴你乐行仕。舒心生活，源于品质。</p>--%>
<%--            <ul class="social-nav model-3d-0 footer-social social two">--%>
<%--                <li>--%>
<%--                    <a href="#" class="facebook">--%>
<%--                        <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>--%>
<%--                        <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="#" class="twitter">--%>
<%--                        <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>--%>
<%--                        <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="#" class="instagram">--%>
<%--                        <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>--%>
<%--                        <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="#" class="pinterest">--%>
<%--                        <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>--%>
<%--                        <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--        <div class="col-md-9 footer-right">--%>
<%--            <div class="sign-grds">--%>
<%--                <div class="col-md-4 sign-gd">--%>
<%--                    <h4>我们的<span>信息</span> </h4>--%>
<%--                    <ul>--%>
<%--                        <li><a href="index.jsp">BlankYours潮流鞋库</a></li>--%>
<%--                        <li><a href="about.html">关于我们</a></li>--%>
<%--                        <li><a href="404.jsp">服务</a></li>--%>
<%--                        <li><a href="404.jsp">规则</a></li>--%>
<%--                        <li><a href="contact.html">联系我们</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>

<%--                <div class="col-md-5 sign-gd-two">--%>
<%--                    <h4>商店 <span>信息</span></h4>--%>
<%--                    <div class="address">--%>
<%--                        <div class="address-grid">--%>
<%--                            <div class="address-left">--%>
<%--                                <i class="fa fa-phone" aria-hidden="true"></i>--%>
<%--                            </div>--%>
<%--                            <div class="address-right">--%>
<%--                                <h6>电话号码</h6>--%>
<%--                                <p>+1 234 567 8901</p>--%>
<%--                            </div>--%>
<%--                            <div class="clearfix"> </div>--%>
<%--                        </div>--%>
<%--                        <div class="address-grid">--%>
<%--                            <div class="address-left">--%>
<%--                                <i class="fa fa-envelope" aria-hidden="true"></i>--%>
<%--                            </div>--%>
<%--                            <div class="address-right">--%>
<%--                                <h6>邮箱地址</h6>--%>
<%--                                <p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>--%>
<%--                            </div>--%>
<%--                            <div class="clearfix"> </div>--%>
<%--                        </div>--%>
<%--                        <div class="address-grid">--%>
<%--                            <div class="address-left">--%>
<%--                                <i class="fa fa-map-marker" aria-hidden="true"></i>--%>
<%--                            </div>--%>
<%--                            <div class="address-right">--%>
<%--                                <h6>位置</h6>--%>
<%--                                <p>Broome St, NY 10002,California, USA.--%>

<%--                                </p>--%>
<%--                            </div>--%>
<%--                            <div class="clearfix"> </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-3 sign-gd flickr-post">--%>
<%--                    <h4>BlankYours潮流鞋库<span>的贴吧</span></h4>--%>
<%--                    <ul>--%>
<%--                        <li><a href="single.html"><img src="images/t1.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                        <li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                        <li><a href="single.html"><img src="images/t3.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                        <li><a href="single.html"><img src="images/t4.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                        <li><a href="single.html"><img src="images/t1.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                        <li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                        <li><a href="single.html"><img src="images/t3.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                        <li><a href="single.html"><img src="images/t2.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                        <li><a href="single.html"><img src="images/t4.jpg" alt=" " class="img-responsive" /></a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <div class="clearfix"></div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="clearfix"></div>--%>
<%--    </div>--%>
<%--</div>--%>
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