<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="entity.Blank" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>欢迎页面-L-admin1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/xadmin.css">
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
   <script>
     $(function () {

     })
   </script>
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
      <a class="layui-btn startlayui-btn-primary layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:38px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so">
          <input class="layui-input" placeholder="开始日" name="start" id="start">
          <input class="layui-input" placeholder="截止日" name="end" id="end">
          <div class="layui-input-inline">
            <select name="contrller" id="zt">
              <option>支付状态</option>
              <option>已支付</option>
              <option>未支付</option>
            </select>
          </div>
          <div class="layui-input-inline">
            <select name="contrller" id="fs">
              <option>支付方式</option>
              <option>支付宝</option>
              <option>微信</option>
              <option>货到付款</option>
            </select>
          </div>
          <div class="layui-input-inline">
            <select name="contrller" id="dd">
              <option value="">订单状态</option>
              <option value="0">待确认</option>
              <option value="1">已确认</option>
              <option value="2">已收货</option>
              <option value="3">已取消</option>
              <option value="4">已完成</option>
              <option value="5">已作废</option>
            </select>
          </div>
          <input id="ddhao" type="text" name="username"  placeholder="请输入订单号" autocomplete="off" class="layui-input">
          <button id="bn" class="layui-btn" type="button" lay-filter=""><i class="layui-icon">&#xe615;</i></button>
<%--          根据条件搜索订单信息--%>
          <script>
            $(function () {
               $("#bn").click(function () {
                     var start=$("#start").val(); //开始日期
                     var end=$("#end").val();   //截止日期
                     var zt=$("#zt").val();
                     var fs=$("#fs").val();
                     var dd=$("#dd").val();
                     var ddhao=$("#ddhao").val();
                     var id=0;
                     if (start!=""||end!=""||zt!="支付状态"||fs!="支付方式"||dd!=""||ddhao!=""){
                         alert(1);
                       id = 1;
                     }
                    location.href="htselectdd?ddhao="+ddhao+"&start="+start+"&end="+end+"&zt="+zt+"&fs="+fs+"&dd="+dd+"&id="+id;
               })
            })
         </script>
        </form>
      </div>
      <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="x_admin_show('发货','html/admin-rule.jsp')"><i class="layui-icon"></i>发货</button>
        <span class="x-right" style="line-height:40px">共有数据：<span>${pagecount}</span> 条</span>
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>订单编号</th>
            <th>收货人</th>
            <th>总金额</th>
            <th>订单状态</th>
            <th>支付状态</th>
            <th>发货状态</th>
            <th>支付方式</th>
            <th>配送方式</th>
            <th>下单时间</th>
            <th >操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="list" varStatus="a">
          <tr class="tr">
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td class="ddh">${list.ddhao}</td>
            <td>${list.account}:${list.phones}</td>
            <td>${list.price}</td>
            <td>${list.ddzt}</td>
            <td>${list.zt}</td>
            <td class="fh">${list.fhuo}</td>
            <td>${list.fkmoney}</td>
            <td>申通物流</td>
            <td>${list.time}</td>
            <td class="td-manage">
<%--              <a title="查看"  onclick="x_admin_show('编辑','./order-view.jsp')" href="javascript:;">--%>
<%--                <i class="layui-icon">&#xe63c;</i>--%>
<%--              </a>--%>
              <a title="删除" onclick="member_del(this)" href="javascript:;">
                <i class="layui-icon">&#xe640;</i>
              </a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <div class="page">
        <div>
          <a class="prev" href="htselectdd?page=${page-1}">&lt;&lt;</a>
          <c:forEach begin="1" end="${pagemax}" varStatus="stu">
            <c:if test="${stu.count<=4}">
              <a class="num" href="htselectdd?page=${stu.count}">${stu.count}</a>
            </c:if>
            <c:if test="${stu.count>4}">
              <span class="num">...</span>
            </c:if>
          </c:forEach>
          <a class="next" href="htselectdd?page=${page+1}">&gt;&gt;</a>
          总共：<span class="current">${pagemax}</span>页
        </div>
      </div>
    </div>
    <script>

      layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });
      // //发货
      function x_admin_show() {
        var jk="";
        var checked=new Array();
        var index=$(".layui-form-checked").not('.header').length;
        for (var i=0;i<index;i++){
          var mk=$(".layui-form-checked").not('.header').eq(i).parent('td').next(".ddh").html();
          var fh=$(".layui-form-checked").not('.header').eq(i).parent('td').siblings(".fh").html();
          if (fh=="未发货"){
            checked[i]=mk;
          }
        }
          var checker=JSON.stringify(checked);
         if (checker=="[]"){
           layer.msg('请选择要发货的订单', {icon: 0, time: 1300});
         }else {
           layer.confirm('确认要发货吗？', function () {
             $.ajax({
               url: "Fahuo",
               data: "checker=" + checker,
               type: "POST",
               async: false,
               success: function (date) {
                 jk = date;
               }
             })
             if (jk.trim() == "true") {
               for (var j = 0; j < index; j++) {
                 var fhs = $(".layui-form-checked").not('.header').eq(j).parent('td').siblings(".fh").html();
                 if (fhs == "未发货") {
                   $(".layui-form-checked").not('.header').eq(j).parent('td').siblings(".fh").html("已发货");
                 }
               }
             }
             layer.msg('已发货!', {icon: 1, time: 1000});
           });
         }
      }

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').jsp('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').jsp('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').jsp('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').jsp('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
      function member_del(obj){
          var ddhao=$(obj).parent("td").siblings(".ddh").html();
          layer.confirm('确认要删除吗？',function(index){
            $.ajax({
              url:"member",
              type:"post",
              async:false,
              data:"ddhao="+ddhao,
              success:function () {
              }
            })
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
               location.href='htselectdd';
          });
      }


      function delAll () {
        var checked=new Array();
        var data = tableCheck.getData();
        var index=$(".layui-form-checked").not('.header').length;
        for (var i=0;i<index;i++){
          var mk=$(".layui-form-checked").not('.header').eq(i).parent('td').next(".ddh").html();
          checked[i]=mk;
        }
        var checker=JSON.stringify(checked);
        if (checker=="[]"){
          layer.msg('请选择要删除的订单', {icon: 0,time:1300});
        }else {
          layer.confirm('确认要删除吗？', function () {
            $.ajax({
              url: "delall",
              type: "post",
              data: "ddhao=" + checker,
              async: false,
              success: function (date) {
              }
            });
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();

          });
        }
      }
    </script>
  </body>

</html>
