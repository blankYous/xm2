<%@ page import="java.util.List" %>
<%@ page import="entity.Blank" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/8 0008
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>个人信息订单</title>
    <style>
        #dd{
            background-color: #FFFFFF;
            height: 100%;
            width:99%;
        }
        #tr1 td{
            font-size:15px;
            text-align: center;
            color: #FFFFFF;
        }
        #tr2 td{
            font-size:15px;
            text-align: center;
            color: #FFFFFF;
        }
        #tr5 td{
            font-size:15px;
            text-align: center;
            color: #FFFFFF;
        }
        #tr1 td a{
                text-decoration: none;
            color: #FFFFFF;
        }
        #tr2 td a{
            text-decoration: none;
            color: #FFFFFF;
        }
        #tr5 td a{
            text-decoration: none;
            color: #FFFFFF;
        }

        #tab{
            height: 20px;
            width: 100%;
            border-collapse: separate;
            border-spacing:30px 25px ;
            background-color: #000000;
            position: fixed;
            margin-bottom: 50px;
            z-index: 2;
        }
        #td1 table{
            height: 50%;
             width:100%;
        }
        #td2 table{
            height: 50%;
            width:100%;
        }
        #td5 table{
            height: 50%;
            width:100%;
        }
        body{
            margin: 0;
            position: relative;
        }
        .creaw {
            display: inline-block;
            width: 0;
            height: 0;
            /*vertical-align: middle;*/
            border-bottom: 10px dashed;
            border-bottom: 10px solid \9;
            border-right: 10px solid transparent;
            border-left: 10px solid transparent;
        }
        .butt{
            background-color: #FFFFFF;
            height: 30px;
            width: 100px;
            outline: none;
            border-color: #F6F6F6;
        }
        .zf{
            text-align: center;
            color: red;
            font-size: 50px;
            position: absolute;

        }
    </style>
</head>
<script src="js/jquery-1.12.4.js"></script>
<script>
    $(function () {
        var url=document.referrer;
        if (url==""){
            location.href='sum';
        }
        $(".creaw").hide();
        $(".td").hide();
        $(".td:eq(0)").show();
        $(".creaw:eq(0)").show();
        $("#tr1 a").click(function () {
            var index=$("#tr1 a").index(this);
            $(".creaw").hide();
            $(".td").hide();
            $(".creaw:eq("+index+")").show();
            $(".td:eq("+index+")").show();
        })
        //点击付款
        $(".butts").click(function () {
            var index=$(".butts").index(this);
            var out_trade_no=$(".ds:eq("+index+")").html();
            var total_amount=$(".hj:eq("+index+")").html();
            var subject=$(".name:eq("+index+")").html();
               window.parent.location.href="alipay?WIDout_trade_no="+out_trade_no+"&WIDtotal_amount="+total_amount+"&WIDsubject="+subject;
        })
        //点击取消
        $(".qx").click(function () {
              var ko="";
              var index=$(".qx").index(this);
              var ddhao=$(".ds:eq("+index+")").html();
              $.ajax({
                 url:"deletedd",
                 type:"POST",
                  async:false,
                  data:"ddhao="+ddhao,
                  success:function (date) {
                     ko = date;
                  }
              });
            if (ko.trim()=="1"){
                location.href='sum';
            }
        })
    });
</script>
<script>
    //加载为空提示
    $(function () {
        var dd1=$("#td1 table tr").html();
        var dd2=$("#td2 table tr").html();
        var dd3=$("#td3 table tr").html();
        var dd4=$("#td4 table tr").html();
        var dd5=$("#td5 table tr").html();
        if (dd1==""||dd1==null){
            $("#td1 table").append("<h1 class='zf'>您还没有相关的订单!</h1>")
        }
        if (dd2==""||dd2==null){
            $("#td2 table").append("<h1 class='zf'>您还没有相关的订单!</h1>")
        }
        if (dd3==""||dd3==null){
            $("#td3 table").append("<h1 class='zf'>您还没有相关的订单!</h1>")
        }
        if (dd4==""||dd4==null){
            $("#td4 table").append("<h1 class='zf'>您还没有相关的订单!</h1>")
        }
        if (dd5==""||dd5==null) {
            $("#td5 table").append("<h1 class='zf'>您还没有相关的订单!</h1>")
        }
    })
    $(function () {
        var dd1=$("#td1 table tr .zt")
        for(var i=0;i<dd1.length;i++){
            if (dd1.eq(i).html()=="已支付"){
                  $("#td1 .butts:eq("+i+")").hide()
            }
        }
        var dd2=$("#td2 table tr .zt")
        for(var j=0;j<dd2.length;j++){
            if (dd2.eq(j).html()=="已支付"){
                $("#td2 .butts:eq("+j+")").hide()
            }
        }
        // var dd3=$("#td3 table tr .zt")
        // for(var k=0;k<dd3.length;k++){
        //     if (dd3.eq(k).html()=="已支付"){
        //         $(".butts:eq("+k+")").hide()
        //     }
        // }
        // var dd4=$("#td4 table tr .zt")
        // for(var s=0;s<dd4.length;s++){
        //     if (dd4.eq(s).html()=="已支付"){
        //         $(".butts:eq("+s+")").hide()
        //     }
        // }
        var dd5=$("#td5 table tr .zt")
        for(var y=0;y<dd5.length;y++){
            if (dd5.eq(y).html()=="已支付"){
                $("#td5 .butts").eq(y).hide();
            }
        }
    })
</script>
<body>
<table align="center" border="0" id="tab">
    <tr id="tr1">
        <td><a href="javascript:void(0)">全部</a><br/><span class="creaw"></span></td>
        <td><a href="javascript:void(0)">待支付</a><br/><span class="creaw"></span></td>
        <td><a href="javascript:void(0)">待发货</a><br/><span class="creaw"></span></td>
        <td><a href="javascript:void(0)">待收货</a><br/><span class="creaw"></span></td>
        <td><a href="javascript:void(0)">已支付</a><br/><span class="creaw"></span></td>
    </tr>
</table>
<div style="height: 80px"></div>
<div id="dd">
 <div id="td1" class="td">
     <table>
                <c:forEach items="${list1}" var="list1">
                    <tr class="tr"><td style="border-top: 1px solid #000000"><h4 class="h" style="margin-bottom: 10px;margin-top: 30px;color:#2b2d2d;margin-left: 20px">订单编号:<span class="ds">${list1.ddhao}</span>
                       ( <span class="zt">${list1.zt}</span>) <input class="butt qx" style="margin-right: -130px;float: right" type="submit" value="删除订单">
                   </h4>
                   </td>
                       <td style="border-top: 1px solid #000000">
                           <button class="butt butts"  style="margin-right: 50px;margin-top: 30px;float: right">付款</button></td>
                   </tr>
                    <tr>
                        <td>
                   <c:forEach items="${list}" var="list">
                       <c:if test="${list.ddhao==list1.ddhao}">
                            <div class="dic" style=";height: 150px;width: 100%">
                                 <img style="margin-left: 30px" src="${list.tradeImg}" height="150" width="150"/>
                                 <span style="font-weight: bold;position: absolute;left: 250px;margin-top: 60px"> ${list.title}</span>
                                 <span style="position: absolute;left: 500px;margin-top: 70px">￥<span class="moey">${list.ddprice}</span></span>
                                 <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 300px;margin-top: 90px"><span>${list.tradeShoe}</span>码</span>
                                 <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 350px;margin-top: 90px">${list.color}</span>
                                <span style="position: absolute;left: 600px;margin-top: 70px">x&nbsp;<span class="count">${list.tradeCounts}</span></span>
                            </div>
                           <script></script>
                       </c:if>
                 </c:forEach>
                        </td>
                        <td width="30%"><span style="position: absolute;"><span>共计<span class="sp">${list1.count}</span>件商品&nbsp;&nbsp;合计：<span class="hj">${list1.price}</span>（含运费￥<span class="yf">0.00</span>)</span></span>
                           <br/> 订单名称：<span class="name">${list1.ddname}</span>
                        </td>
                    </tr>
                </c:forEach>
     </table>
 </div>
<div id="td2" class="td">
    <table>
        <c:forEach items="${list2}" var="list2">
            <tr><td>订单名称：<span class="name">${list2.ddname}</span></td></tr>
            <tr class="tr"><td><h4 class="h" style="margin-bottom: 10px;margin-top: 30px;color:#2b2d2d;margin-left: 20px">订单编号:<span class="ds">${list2.ddhao}</span>
                ( <span class="zt">${list2.zt}</span>) <input class="butt qx" style="margin-right: -130px;float: right" type="submit" value="删除订单">
            </h4>
            </td>
                <td><button class="butt butts"  style="margin-right: 50px;margin-top: 30px;float: right">付款</button></td>
            </tr>
            <tr>
                <td>
                    <c:forEach items="${list}" var="list">
                        <c:if test="${list.ddhao==list2.ddhao}">
                            <div class="dic" style=";height: 150px;width: 100%">
                                <img style="margin-left: 30px" src="${list.tradeImg}" height="150" width="150"/>
                                <span style="font-weight: bold;position: absolute;left: 250px;margin-top: 60px"> ${list.title}</span>
                                <span style="position: absolute;left: 500px;margin-top: 70px">￥<span class="moey">${list.ddprice}</span></span>
                                <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 300px;margin-top: 90px"><span>${list.tradeShoe}</span>码</span>
                                <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 350px;margin-top: 90px">${list.color}</span>
                                <span style="position: absolute;left: 600px;margin-top: 70px">x&nbsp;<span class="count">${list.tradeCounts}</span></span>
                            </div>
                        </c:if>
                    </c:forEach>
                </td>
                <td width="30%"><span style="position: absolute;"><span>共计<span class="sp">${list2.count}</span>件商品&nbsp;&nbsp;合计：<span class="hj">${list2.price}</span>（含运费￥<span class="yf"></span>)</span></span></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="td3" class="td">
    <table>
        <c:forEach items="${list3}" var="list3">
            <tr><td>订单名称：<span class="name">${list3.ddname}</span></td></tr>
            <tr class="tr"><td><h4 class="h" style="margin-bottom: 10px;margin-top: 30px;color:#2b2d2d;margin-left: 20px">订单编号:<span class="ds">${list3.ddhao}</span>
                ( <span class="zt">${list3.zt}</span>) <input class="butt qx" style="margin-right: -130px;float: right" type="submit" value="删除订单">
            </h4>
            </td>
                <td><button class="butt butts"  style="margin-right: 50px;margin-top: 30px;float: right">付款</button></td>
            </tr>
            <tr>
                <td>
                    <c:forEach items="${list}" var="list">
                        <c:if test="${list.ddhao==list3.ddhao}">
                            <div class="dic" style=";height: 150px;width: 100%">
                                <img style="margin-left: 30px" src="${list.tradeImg}" height="150" width="150"/>
                                <span style="font-weight: bold;position: absolute;left: 250px;margin-top: 60px"> ${list.title}</span>
                                <span style="position: absolute;left: 500px;margin-top: 70px">￥<span class="moey">${list.ddprice}</span></span>
                                <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 300px;margin-top: 90px"><span>${list.tradeShoe}</span>码</span>
                                <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 350px;margin-top: 90px">${list.color}</span>
                                <span style="position: absolute;left: 600px;margin-top: 70px">x&nbsp;<span class="count">${list.tradeCounts}</span></span>
                            </div>
                        </c:if>
                    </c:forEach>
                </td>
                <td width="30%"><span style="position: absolute;"><span>共计<span class="sp">${list3.count}</span>件商品&nbsp;&nbsp;合计：<span class="hj">${list3.price}</span>（含运费￥<span class="yf"></span>)</span></span></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="td4" class="td">
    <table>
        <c:forEach items="${list4}" var="list4">
            <tr><td>订单名称：<span class="name">${list4.ddname}</span></td></tr>
            <tr class="tr"><td><h4 class="h" style="margin-bottom: 10px;margin-top: 30px;color:#2b2d2d;margin-left: 20px">订单编号:<span class="ds">${list4.ddhao}</span>
                ( <span class="zt">${list4.zt}</span>) <input class="butt qx" style="margin-right: -130px;float: right" type="submit" value="删除订单">
            </h4>
            </td>
                <td><button class="butt butts"  style="margin-right: 50px;margin-top: 30px;float: right">付款</button></td>
            </tr>
            <tr>
                <td>
                    <c:forEach items="${list}" var="list">
                        <c:if test="${list.ddhao==list4.ddhao}">
                            <div class="dic" style=";height: 150px;width: 100%">
                                <img style="margin-left: 30px" src="${list.tradeImg}" height="150" width="150"/>
                                <span style="font-weight: bold;position: absolute;left: 250px;margin-top: 60px"> ${list.title}</span>
                                <span style="position: absolute;left: 500px;margin-top: 70px">￥<span class="moey">${list.ddprice}</span></span>
                                <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 300px;margin-top: 90px"><span>${list.tradeShoe}</span>码</span>
                                <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 350px;margin-top: 90px">${list.color}</span>
                                <span style="position: absolute;left: 600px;margin-top: 70px">x&nbsp;<span class="count">${list.tradeCounts}</span></span>
                            </div>
                        </c:if>
                    </c:forEach>
                </td>
                <td width="30%"><span style="position: absolute;"><span>共计<span class="sp">${list4.count}</span>件商品&nbsp;&nbsp;合计：<span class="hj">${list4.price}</span>（含运费￥<span class="yf"></span>)</span></span></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="td5" class="td">
        <table>
            <c:forEach items="${list5}" var="list5">
                <tr><td>订单名称：<span class="name">${list5.ddname}</span></td></tr>
                <tr class="tr"><td><h4 class="h" style="margin-bottom: 10px;margin-top: 30px;color:#2b2d2d;margin-left: 20px">订单编号:<span class="ds">${list5.ddhao}</span>
                    ( <span class="zt">${list5.zt}</span>) <input class="butt qx" style="margin-right: -130px;float: right" type="submit" value="删除订单">
                </h4>
                </td>
                    <td><button class="butt butts"  style="margin-right: 50px;margin-top: 30px;float: right">付款</button></td>
                </tr>
                <tr>
                    <td>
                        <c:forEach items="${list}" var="list">
                            <c:if test="${list.ddhao==list5.ddhao}">
                                <div class="dic" style=";height: 150px;width: 100%">
                                    <img style="margin-left: 30px" src="${list.tradeImg}" height="150" width="150"/>
                                    <span style="font-weight: bold;position: absolute;left: 250px;margin-top: 60px"> ${list.title}</span>
                                    <span style="position: absolute;left: 500px;margin-top: 70px">￥<span class="moey">${list.ddprice}</span></span>
                                    <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 300px;margin-top: 90px"><span>${list.tradeShoe}</span>码</span>
                                    <span style="font-size: 13px;color: #a0a0a0;position: absolute;left: 350px;margin-top: 90px">${list.color}</span>
                                    <span style="position: absolute;left: 600px;margin-top: 70px">x&nbsp;<span class="count">${list.tradeCounts}</span></span>
                                </div>
                            </c:if>
                        </c:forEach>
                    </td>
                    <td width="30%"><span style="position: absolute;"><span>共计<span class="sp">${list5.count}</span>件商品&nbsp;&nbsp;合计：<span class="hj">${list5.price}</span>（含运费￥<span class="yf"></span>)</span></span></td>
                </tr>
            </c:forEach>
        </table>
</div>

</div>

<script src="js/classie.js"></script>
<script src="js/demo1.js"></script>
<script src="js/easy-responsive-tabs.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>
