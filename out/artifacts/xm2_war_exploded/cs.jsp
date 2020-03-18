<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"><%--标签--%>
    <style type="text/css">
        #login{
            border: red 1px solid;
            display: none;
            background: rgba(56, 59, 56, 0.73);
            opacity: 0.8;
            width: 100%;
            height: 100%;
            z-index: 998;
            position:absolute
        }
        #login2{
            display:none;
            z-index: 999;
            /* height:450px;*/
            width: 800px;
            margin-left: 450px;
            margin-top: 250px;
            background: #fffeee /*linear-gradient(0deg, seashell, silver)*/;
            position: fixed;
        }
        #login2 tr{
            font-size: 20px;
            line-height: 50px;
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
        #cancel,#cancel button{
            float: right;
            width: 25px;
            height: 25px;
            background:#fffeee;
            text-align: center;
            /* padding-right: 15px;
             margin-left: 465px;*/
        }
        #tbody tr td{
            height: 10px;
        }
    </style>
</head>
<body class="form-wrap" style="background-image: url('../images/e9218aec65aadad0fd9e7e7c700d305d.jpg');background-repeat:no-repeat; background-size: 100%;position: relative" >

<%--修改框--%>
<div id="login" style=" "></div>
<div id="login2"style="text-align: center;">
    <div id="cancel"> <button style="border: 0px"><span class="close"></span></button></div>
    <table style="margin-left: 30px;width: 750px;text-align: revert ">
        <tr>
            <th style="border-bottom: 1px silver solid;font-size: 25px; text-align: revert;" colspan="5">编辑商品信息(<span style="color: red">*</span>为不可编辑)</th>
        </tr>
        <tr>
            <th>商品标题：</th>
            <td colspan="3"><input type="text" id="title" style="width: 600px" ></td>
        </tr>
        <tr>
            <th><span style="color: red">*</span>商品编号：</th>
            <td ><input type="text" id="id"style="width: 180px"readonly></td>
            <th>当前价格：</th>
            <td ><input type="text" id="price"style="width: 180px"></td>
        </tr>
        <tr>
            <th>剩余库存：</th>
            <td colspan="3">
                <div style="border: 1px #b2b2b2 solid;width: 600px;background-color: #FFFFFF;font-size: 15px " id="countDiv">

                </div>
            </td>
        </tr>
        <tr>
            <th><span style="color: red">*</span>累计销售：</th>
            <td ><input type="text" id="sales"style="width: 180px" readonly></td>
            <th><span style="color: red">*</span>创建时间：</th>
            <td ><input type="text" id="date"style="width: 180px" readonly></td>
        </tr>
    </table>
    <div style="margin-top: 20px;margin-left: 240px;margin-bottom: 20px">
        <button style="width: 100px;height: 50px;background-color: #d0f2d2;border-radius: 40px " id="return">返回</button>
        <span id="index" style="display: none"></span><%--当前数据的下标--%>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <button style="width: 100px;height: 50px;background-color: #f2dede;border-radius: 40px " id="update">确认修改</button></div>
</div>


<div class="x-nav" style="margin-top: -15px; ">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
    <a class="layui-btn layui-btn-primary layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:38px">ဂ</i></a>
</div>

<div class="x-body" style="font-size: 20px;margin-bottom: -20px">
    <div class="layui-row" style="margin-left: 5%">
        <form class="layui-form layui-col-md12 x-so">
            <table>
                <tr>
                    <th>商品编码：</th>
                    <td><input type="text" name="userId"  placeholder="请输入商品编码" autocomplete="off" class="layui-input"></td>
                    <th>标题：</th>
                    <td><input type="text" name="userTitle"  placeholder="请输入商品标题" autocomplete="off" class="layui-input"></td>
                    <th>品牌：</th>
                    <td><input type="text" name="userBrand"  placeholder="请输入商品品牌" autocomplete="off" class="layui-input"></td>
                    <th>类型：</th>
                    <td><input type="text" name="userClass"  placeholder="请输入商品类型" autocomplete="off" class="layui-input"></td>
                    <th>价格：</th>
                    <td><input type="text" name="userPrice"  autocomplete="off" class="layui-input">——<input type="text" name="userPrice2"  autocomplete="off" class="layui-input"></td>
                    <td> <button class="layui-btn select" type="button"  <%--lay-submit="" lay-filter="sreach"--%>><i class="layui-icon">&#xe615;</i></button></td>
                </tr>
                <tr>
                    <td></td>
                    <td><span class="userId" style="font-size: 15px;color: red;display: none">必须是数字</span></td>
                    <td></td>
                    <td ><span class="userTitle" style="font-size: 15px;color: red;display: none">必须是文本</span></td>
                    <td></td>
                    <td ><span class="userBrand" style="font-size: 15px;color: red;display: none">必须是文本</span></td>
                    <td></td>
                    <td><span  class="userClass" style="font-size: 15px;color: red;display: none">必须是文本</span></td>
                    <td></td>
                    <td><span class="userPrice" style="font-size: 15px;color: red;display: none">必须是数字</span></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<script type="text/javascript">
    $(function () {
       var a=document.referrer;
       if (a==""){
           var name = "qb";
           $.getJSON({
               url:"buttonSpu",
               data:"name="+name,
               success:function (data) {
                   $(".spu").remove()
                   /* $(".gridItem").remove()*/
                   $("#count").html(data.length)
                 /*  $(".js").remove()*/
                   if (data.length>0){

                       for (var i=0;i<data.length;i++){
                           var tr=$("<tr class=\"spu\">\n" +
                               "        <td>\n" +
                               "            <div class=\"layui-unselect layui-form-checkbox\" lay-skin=\"primary\" data-id='2'><i class=\"layui-icon\">&#xe605;</i></div>\n" +
                               "        </td>\n" +
                               "        <td class=\"listId\">"+data[i].id+"</td>\n" +
                               "        <td>\n" +
                               "            <div style=\"width: 80px;height: 50px;float: left\"><img src=\""+data[i].imgName+"\" alt=\"\"style=\"max-width:100%;max-height:100%;\"></div>\n" +
                               "            <div style=\"float: left;vertical-align:middle; padding-top: 20px\" class='title'>"+data[i].title+"</div>\n" +
                               "        </td>\n" +
                               "        <td><span class='brandName'>"+data[i].brandName+"</span></td>\n" +
                               "        <td><span class='classification'>"+data[i].classification+"</span></td>\n" +
                               "        <td><span class='price'>"+data[i].price+"</span></td>\n" +
                               "        <td><span class=\"count\">"+data[i].count+"</span><span style=\"color: red;display: none\">(需补货)</span></td>\n" +
                               "        <td><span class='sales'>"+data[i].sales+"</span></td>\n" +
                               "        <td><span class='date'>"+data[i].date+"</span></td>\n" +
                               "        <td class=\"td-status\">\n" +
                               "            <span class=\"layui-btn layui-btn-normal layui-btn-mini status\">已上架</span><span style=\"display: none\" class=\"StatusId\">"+data[i].status+"</span></td>\n" +
                               "        <td class=\"td-manage\">\n" +
                               "            <a href=\"javascript:void(0);\" class=\"button-status\" title=\"\">\n" +
                               "                <i class=\"sj\"></i> \n" +
                               "            </a>\n" +
                               "            <a title=\"编辑\" class=\"update\" href=\"javascript:;\">\n" +
                               "                <i class=\"layui-icon\">&#xe642;</i>\n" +
                               "            </a> \n" +
                               "        </td>\n" +
                               "    </tr>")
                           $("#tbody").append(tr);
                           var count=data[i].count;
                           if (count<50){
                               $(".count:eq("+i+")").css("color","red");
                               $(".count:eq("+i+")").next().show();
                           }
                           var status=data[i].status;
                           if (status==0){
                               $(".status:eq("+i+")").html("待上架");
                               $(".status:eq("+i+")").attr("class","layui-btn layui-btn-mini status")
                               $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                               $(".sj:eq("+i+")").parent().attr("title","上架")
                           } else if (status==1){
                               $(".status:eq("+i+")").html("已上架");
                               $(".status:eq("+i+")").attr("class","layui-btn layui-btn-danger layui-btn-mini status")
                               $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-down sj")
                               $(".sj:eq("+i+")").parent().attr("title","下架")
                           } else if(status==2){
                               $(".status:eq("+i+")").html("已下架");
                               $(".status:eq("+i+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                               $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                               $(".sj:eq("+i+")").parent().attr("title","上架")
                           }
                       }
                       $(".button-status").click(function (){
                           var index=$(".button-status").index(this);
                           var id=$(".listId:eq("+index+")").text();
                           var title=$(".button-status:eq("+index+")").attr("title");//获取是上架还是下架
                           if (title=="下架"){
                               var status=2;
                               $.ajax({
                                   url:"updateSpustatus",
                                   data:"id="+id+"&status="+status,
                                   async:false,
                                   success:function (data) {
                                       var name=$("input[name=1]").val();
                                       if (name=="全部"||name=="已售罄") {
                                           $(".StatusId:eq("+index+")").html(2);
                                           $(".status:eq("+index+")").html("已下架");
                                           $(".status:eq("+index+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                           $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-up sj")
                                           $(".sj:eq("+index+")").parent().attr("title","上架")
                                       }else {
                                           $(".spu:eq("+index+")").remove()
                                           var a=$("#count").text();
                                           $("#count").html(a-1)
                                       }
                                   }
                               })
                           } else if (title=="上架"){
                               var status=$(".button-status:eq("+index+")").parent().prev().find(".StatusId").text();
                               if (status==0){   //代表待上架  未有规格

                               } else if (status==2) {   //代表是下架的 准备上架
                                   var status=1;
                                   $.ajax({
                                       url:"updateSpustatus",
                                       data:"id="+id+"&status="+status,
                                       async:false,
                                       success:function (data) {
                                           var name=$("input[name=1]").val();
                                           if (name=="全部"||name=="已售罄") {
                                               $(".StatusId:eq("+index+")").html(1);
                                               $(".status:eq("+index+")").html("已上架");
                                               $(".status:eq("+index+")").attr("class","layui-btn layui-btn-danger  layui-btn-mini status")
                                               $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-down sj")
                                               $(".sj:eq("+index+")").parent().attr("title","下架")
                                           }else {
                                               $(".spu:eq("+index+")").remove()
                                               var a=$("#count").text();
                                               $("#count").html(a-1)
                                           }
                                       }
                                   })
                               }
                           }

                       })//单击下架图标
                                               var div=$(" <div class=\"gridItem\" style=\"padding: 5px; width: 250px; float: left; text-align: left; height: 20px; font-size: 15px;margin-left: 100px\" >\n" +
                                                   "                            共有 <span id=\"spanTotalInfor\"></span> 条记录\n" +
                                                   "                        当前第<span id=\"spanPageNum\"></span>页\n" +
                                                   "                        共<span id=\"spanTotalPage\"></span>页\n" +
                                                   "                            </div>");
                                               var  div2=$("<div class=\"gridItem\" style=\"margin-left:50px;  padding: 5px; width: 400px; float: left; text-align: center; height: 20px; vertical-align: middle; font-size: 15px;margin-left: 260px\">\n" +
                                                   "                            <span id=\"spanFirst\" >首页</span>\n" +
                                                   "                            <span id=\"spanPre\">上一页</span>\n" +
                                                   "                            <span id=\"spanInput\" style=\"margin: 0px; padding: 0px 0px 4px 0px; height:100%; \">\n" +
                                                   "                            第<input id=\"Text1\" type=\"text\" class=\"TextBox\" onkeyup=\"changepage()\"   style=\"height:20px; text-align: center;width:50px\" />页\n" +
                                                   "                            </span>\n" +
                                                   "                            <span id=\"spanNext\">下一页</span>\n" +
                                                   "                            <span  id=\"spanLast\">尾页</span>\n" +
                                                   "                            </div>");
                                               $("#tbody").parent().after(div2);
                                               $("#tbody").parent().after(div);


                       $(".update").click(function () {         //单击编制标签
                           var index=$(".update").index(this);
                           var id=$(".listId:eq("+index+")").text();//id
                           var title=$(".title:eq("+index+")").text();//标题
                           var price=$(".price:eq("+index+")").text();//价格
                           var sales=$(".sales:eq("+index+")").text();//销量
                           var date=$(".date:eq("+index+")").text();//创建时间

                           $.ajax({
                               url:"selectShoe",
                               type:"POST",
                               data:"id="+id,
                               async: false,
                               dataType:"JSON",
                               success: function (data) {
                                   if (data.length>0){
                                       $("#id").val(id);
                                       $("#title").val(title);
                                       $("#price").val(price);
                                       $("#sales").val(sales);
                                       $("#date").val(date);
                                       $("#index").html(index);//这条数据的下标
                                       for (var i=0;i<data.length;i++){
                                           var p=$("<p style=\"display: inline-block\"class='shoe'><span class='shoeSize'>"+data[i].size+"</span>码<span class='shoeColor'>"+data[i].color+"</span>:<input type=\"text\"value=\""+data[i].count+"\"style=\"width: 80px\" class='shoeCount'></p>")
                                           $("#countDiv").append(p)
                                       }
                                       $("#login").show();
                                       $("#login2").show();
                                   }

                               }
                           })
                       })  //单击编制标签
                       $("#cancel").click(function () {  //单击关闭修改盒子标签
                           $("#countDiv").children().remove();//清除数据  防止叠加
                           $("#login").hide();
                           $("#login2").hide();
                       }) //单击关闭修改盒子标签
                       $("#return").click(function () {  //单击返回按钮
                           $("#countDiv").children().remove();//清除数据  防止叠加
                           $("#login").hide();
                           $("#login2").hide();
                       })//单击返回按钮
                       $("#update").click(function () {  //单击修改框保存按钮
                           var title= $("#title").val();//标题
                           var id= $("#id").val()//id
                           var price= $("#price").val();//价格
                           var json=new Array();//鞋码
                           /* var count=new Array();//数量*/
                           for (var i=0;i<$(".shoe").length;i++){
                               json[i]={'size':$(".shoeSize:eq("+i+")").text(),'color':$(".shoeColor:eq("+i+")").text(),'count':$(".shoeCount:eq("+i+")").val()};
                               /*count[i]=$(".shoeCount:eq("+i+")").val();*/
                           }
                           var shoeJson=JSON.stringify(json);
                           $.ajax({
                               url:"updateSpu",
                               type:"POST",
                               data:"id="+id+"&title="+title+"&price="+price+"&shoeJson="+shoeJson,
                               async: false,
                               success:function (data) {
                                   if (data=="true"){
                                       var index=$("#index").text();//获取这条数据的下标
                                       $(".title:eq("+index+")").html(title);
                                       $(".price:eq("+index+")").html(price);
                                       var sum=0
                                       for (var i=0;i<json.length;i++){
                                           sum+=json[i].count*1;
                                       }
                                       $(".count:eq("+index+")").html(sum);
                                       $("#countDiv").children().remove();//清除数据  防止叠加
                                       $("#login").hide();
                                       $("#login2").hide();
                                   }
                               }
                           })

                       })//单击修改框保存按钮


                           $("#Text1").change(function () { //修改文本框
                               changepage();
                           })
                           $("#spanFirst").click(function () {
                               first()
                           })
                           $("#spanPre").click(function () {
                               var  b=$("#Text1").val();
                               if (b>1){
                                   pre()
                               } else {
                                   preNoLink()
                               }

                           })
                           $("#spanNext").click(function () {//单击下一页
                               var a=$("#spanTotalPage").text();
                               var  b=$("#Text1").val();
                               if (b<a){
                                   next()
                               }
                           })
                           $("#spanLast").click(function () { //尾页
                               last()
                           })

                           var theTable = document.getElementById("t_student");
                           var txtValue = document.getElementById("Text1").value;
                           function changepage() {
                               var txtValue2 = document.getElementById("Text1").value;
                               if (txtValue != txtValue2) {
                                   if (txtValue2 > pageCount()) {

                                   }
                                   else if (txtValue2 <= 0) {

                                   }
                                   else if (txtValue2 == 1) {
                                       first();
                                   }
                                   else if (txtValue2 == pageCount()) {
                                       last();
                                   }
                                   else {
                                       hideTable();
                                       page = txtValue2;
                                       pageNum2.value = page;
                                       currentRow = pageSize * page;
                                       maxRow = currentRow - pageSize;
                                       if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
                                       for (var i = maxRow; i < currentRow; i++) {
                                           theTable.rows[i].style.display = '';
                                       }
                                       if (maxRow == 0) { preText(); firstText(); }
                                       showPage();
                                       nextLink();
                                       lastLink();
                                       preLink();
                                       firstLink();
                                   }

                                   txtValue = txtValue2;
                               }
                           }
                           //假分页

   //获取对应控件
                           var totalPage = document.getElementById("spanTotalPage");//总页数
                           var pageNum = document.getElementById("spanPageNum");//当前页
                           var totalInfor = document.getElementById("spanTotalInfor");//记录总数
                           var pageNum2 = document.getElementById("Text1");//当前页文本框

                           var spanPre = document.getElementById("spanPre");//上一页
                           var spanNext = document.getElementById("spanNext");//下一页
                           var spanFirst = document.getElementById("spanFirst");//首页
                           var spanLast = document.getElementById("spanLast");//尾页
                           var pageSize = 8;//每页信息条数

                           var numberRowsInTable = theTable.rows.length-1;//表格最大行数

                           var page = 1;

   //下一页
                           function next() {
                               if (pageCount() <= 1) {
                               }
                               else {
                                   hideTable();
                                   currentRow = pageSize * page + 1; //下一页的第一行
                                   maxRow = currentRow + pageSize;    //下一页的一行
                                   if (maxRow > numberRowsInTable) maxRow = numberRowsInTable+1;//如果计算中下一页最后一行大于实际最后一行行号

                                   for (var i = currentRow; i < maxRow; i++) {
                                       theTable.rows[i].style.display = '';
                                   }
                                   page++;
                                   pageNum2.value = page;
                                   if (maxRow == numberRowsInTable) { //如果下一页的最后一行是表格的最后一行
                                       nextNoLink(); //下一页 和尾页 不点击
                                       lastNoLink();
                                   }

                                   showPage();//更新page显示
                                   if (page == pageCount()) {//如果当前页是尾页
                                       nextNoLink();
                                       lastNoLink();
                                   }

                                   preLink();
                                   firstLink();
                               }
                           }



   //上一页
                           function pre() {
                               if (pageCount() <= 1) {
                               }
                               else {
                                   hideTable();
                                   page--;
                                   pageNum2.value = page;
                                   currentRow = pageSize * page + 1;//下一页的第一行
                                   maxRow = currentRow - pageSize;//本页的第一行
                                   if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;//如果计算中本页的第一行小于实际首页的第一行行号，则更正

                                   for (var i = maxRow; i < currentRow; i++) {
                                       theTable.rows[i].style.display = '';
                                   }
                                   if (maxRow == 0) { preNoLink(); firstNoLink(); }
                                   showPage();//更新page显示
                                   if (page == 1) {
                                       firstNoLink();
                                       preNoLink();
                                   }
                                   nextLink();
                                   lastLink();
                               }
                           }


   //第一页
                           function first() {
                               if (pageCount() <= 1) {
                               }
                               else {
                                   hideTable();//隐藏所有行
                                   page = 1;
                                   pageNum2.value = page;
                                   for (var i = 1; i < pageSize+1; i++) {//显示第一页的信息
                                       theTable.rows[i].style.display = '';
                                   }
                                   showPage();//设置当前页

                                   firstNoLink();
                                   preNoLink();
                                   nextLink();
                                   lastLink();
                               }
                           }


   //最后一页
                           function last() {

                               if (pageCount() <= 1) {
                               }
                               else {
                                   hideTable();//隐藏所有行
                                   page = pageCount();//将当前页设置为最大页数
                                   pageNum2.value = page;
                                   currentRow = pageSize * (page - 1)+1;//获取最后一页的第一行行号
                                   for (var i = currentRow; i < numberRowsInTable+1; i++) {//显示表格中最后一页信息
                                       theTable.rows[i].style.display = '';
                                   }

                                   showPage();
                                   lastNoLink();
                                   nextNoLink();
                                   preLink();
                                   firstLink();
                               }
                           }


                           function hideTable() {//隐藏表格内容
                               for (var i = 0; i < numberRowsInTable+1; i++) {
                                   theTable.rows[i].style.display = 'none';
                               }
                               theTable.rows[0].style.display = '';//标题栏显示
                           }


                           function showPage() {//设置当前页数
                               pageNum.innerHTML = page;
                           }

                           function inforCount() {//设置总记录数
                               spanTotalInfor.innerHTML = numberRowsInTable;
                           }

   //总共页数
                           function pageCount() {
                               var count = 0;
                               if (numberRowsInTable % pageSize != 0) count = 1;
                               return parseInt(numberRowsInTable / pageSize) + count;
                           }


   //显示链接 link方法将相应的文字变成可点击翻页的  nolink方法将对应的文字变成不可点击的
                           function preLink() { spanPre.innerHTML = "<a href='javascript:void(0);'>上一页</a>"; }
                           function preNoLink(){ spanPre.innerHTML = "上一页"; }

                           function nextLink() {  spanNext.innerHTML = "<a href='javascript:void(0);'>下一页</a>"; }
                           function nextNoLink(){ spanNext.innerHTML = "下一页";}

                           function firstLink() { spanFirst.innerHTML = "<a href='javascript:void(0);'>首页</a>"; }
                           function firstNoLink(){ spanFirst.innerHTML = "首页";}

                           function lastLink() { spanLast.innerHTML = "<a href='javascript:void(0);'>尾页</a>"; }
                           function lastNoLink(){ spanLast.innerHTML = "尾页";}

   //初始化表格
                           function hide() {
                               for (var i = pageSize + 1; i < numberRowsInTable+1 ; i++) {
                                   theTable.rows[i].style.display = 'none';
                               }
                               theTable.rows[0].style.display = '';

                               inforCount();

                               totalPage.innerHTML = pageCount();
                               showPage();
                               pageNum2.value = page;

                               if (pageCount() > 1) {
                                   nextLink();
                                   lastLink();
                               }

                           }

                           hide();

                   }
               }
           })
       }
        $(".select").click(function () {
            var id = $("input[name=userId]").val();
            var userTitle = $("input[name=userTitle]").val();
            var userBrand = $("input[name=userBrand]").val();
            var userClass = $("input[name=userClass]").val();
            var userPrice = $("input[name=userPrice]").val();
            var userPrice2 = $("input[name=userPrice2]").val();
            var bobo = "true";
            if (id != "") {
                if (isNaN(id)) {
                    $(".userId").fadeIn(600);
                    $(".userId").fadeOut(6000);
                    bobo = "false"
                }
            }
            if (userTitle != "") {
                if (isNaN(userTitle) == false) {
                    $(".userTitle").fadeIn(600);
                    $(".userTitle").fadeOut(6000);
                    bobo = "false"
                }
            }
            if (userBrand != "") {
                if (isNaN(userBrand) == false) {
                    $(".userBrand").fadeIn(600);
                    $(".userBrand").fadeOut(6000);
                    bobo = "false"
                }
            }
            if (userClass != "") {
                if (isNaN(userClass) == false) {
                    $(".userClass").fadeIn(600);
                    $(".userClass").fadeOut(6000);
                    bobo = "false"
                }
            }
            if (isNaN(userPrice)){
                $(".userPrice").fadeIn(600);
                $(".userPrice").fadeOut(6000);
                bobo = "false"
            }

            if (isNaN(userPrice2)) {
                $(".userPrice").fadeIn(600);
                $(".userPrice").fadeOut(6000);
                bobo = "false"
            }
            if (bobo == "true") {
                location.href = "selectPutaway?id=" + id + "&title=" + userTitle + "&brand=" + userBrand + "&classify=" + userClass + "&price=" + userPrice + "&price2=" + userPrice2;
            }


        })//模糊查询
        $("#all").click(function (){//单击全部
            var name = "qb";
            $("#all").css("background-color","#f2dede").siblings().css("background-color", "#ececf2");
            $("#all").attr("name","1").siblings().attr("name","0")
            $(".header").attr("class","layui-unselect header layui-form-checkbox");
            $.getJSON({
                url:"buttonSpu",
                data:"name="+name,
                success:function (data) {
                    $(".spu").remove()
                   /* $(".gridItem").remove()*/
                    $("#count").html(data.length)
                    $(".js").remove()
                    if (data.length>0){

                        for (var i=0;i<data.length;i++){
                            var tr=$("<tr class=\"spu\">\n" +
                                "        <td>\n" +
                                "            <div class=\"layui-unselect layui-form-checkbox\" lay-skin=\"primary\" data-id='2'><i class=\"layui-icon\">&#xe605;</i></div>\n" +
                                "        </td>\n" +
                                "        <td class=\"listId\">"+data[i].id+"</td>\n" +
                                "        <td>\n" +
                                "            <div style=\"width: 80px;height: 50px;float: left\"><img src=\""+data[i].imgName+"\" alt=\"\"style=\"max-width:100%;max-height:100%;\"></div>\n" +
                                "            <div style=\"float: left;vertical-align:middle; padding-top: 20px\" class='title'>"+data[i].title+"</div>\n" +
                                "        </td>\n" +
                                "        <td><span class='brandName'>"+data[i].brandName+"</span></td>\n" +
                                "        <td><span class='classification'>"+data[i].classification+"</span></td>\n" +
                                "        <td><span class='price'>"+data[i].price+"</span></td>\n" +
                                "        <td><span class=\"count\">"+data[i].count+"</span><span style=\"color: red;display: none\">(需补货)</span></td>\n" +
                                "        <td><span class='sales'>"+data[i].sales+"</span></td>\n" +
                                "        <td><span class='date'>"+data[i].date+"</span></td>\n" +
                                "        <td class=\"td-status\">\n" +
                                "            <span class=\"layui-btn layui-btn-normal layui-btn-mini status\">已上架</span><span style=\"display: none\" class=\"StatusId\">"+data[i].status+"</span></td>\n" +
                                "        <td class=\"td-manage\">\n" +
                                "            <a href=\"javascript:void(0);\" class=\"button-status\" title=\"\">\n" +
                                "                <i class=\"sj\"></i> \n" +
                                "            </a>\n" +
                                "            <a title=\"编辑\" class=\"update\" href=\"javascript:;\">\n" +
                                "                <i class=\"layui-icon\">&#xe642;</i>\n" +
                                "            </a> \n" +
                                "        </td>\n" +
                                "    </tr>")
                            $("#tbody").append(tr);
                            var count=data[i].count;
                            if (count<50){
                                $(".count:eq("+i+")").css("color","red");
                                $(".count:eq("+i+")").next().show();
                            }
                            var status=data[i].status;
                            if (status==0){
                                $(".status:eq("+i+")").html("待上架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                $(".sj:eq("+i+")").parent().attr("title","上架")
                            } else if (status==1){
                                $(".status:eq("+i+")").html("已上架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-danger layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-down sj")
                                $(".sj:eq("+i+")").parent().attr("title","下架")
                            } else if(status==2){
                                $(".status:eq("+i+")").html("已下架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                $(".sj:eq("+i+")").parent().attr("title","上架")
                            }
                        }
                        $(".button-status").click(function (){
                            var index=$(".button-status").index(this);
                            var id=$(".listId:eq("+index+")").text();
                            var title=$(".button-status:eq("+index+")").attr("title");//获取是上架还是下架
                            if (title=="下架"){
                                var status=2;
                                $.ajax({
                                    url:"updateSpustatus",
                                    data:"id="+id+"&status="+status,
                                    async:false,
                                    success:function (data) {
                                        var name=$("input[name=1]").val();
                                        if (name=="全部"||name=="已售罄") {
                                            $(".StatusId:eq("+index+")").html(2);
                                            $(".status:eq("+index+")").html("已下架");
                                            $(".status:eq("+index+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                            $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-up sj")
                                            $(".sj:eq("+index+")").parent().attr("title","上架")
                                        }else {
                                            $(".spu:eq("+index+")").remove()
                                            var a=$("#count").text();
                                            $("#count").html(a-1)
                                        }
                                    }
                                })
                            } else if (title=="上架"){
                                var status=$(".button-status:eq("+index+")").parent().prev().find(".StatusId").text();
                                if (status==0){   //代表待上架  未有规格

                                } else if (status==2) {   //代表是下架的 准备上架
                                    var status=1;
                                    $.ajax({
                                        url:"updateSpustatus",
                                        data:"id="+id+"&status="+status,
                                        async:false,
                                        success:function (data) {
                                            var name=$("input[name=1]").val();
                                            if (name=="全部"||name=="已售罄") {
                                                $(".StatusId:eq("+index+")").html(1);
                                                $(".status:eq("+index+")").html("已上架");
                                                $(".status:eq("+index+")").attr("class","layui-btn layui-btn-danger  layui-btn-mini status")
                                                $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-down sj")
                                                $(".sj:eq("+index+")").parent().attr("title","下架")
                                            }else {
                                                $(".spu:eq("+index+")").remove()
                                                var a=$("#count").text();
                                                $("#count").html(a-1)
                                            }
                                        }
                                    })
                                }
                            }

                        })//单击下架图标
                 /*       var div=$(" <div class=\"gridItem\" style=\"padding: 5px; width: 250px; float: left; text-align: left; height: 20px; font-size: 15px;margin-left: 100px\" >\n" +
                            "                            共有 <span id=\"spanTotalInfor\"></span> 条记录\n" +
                            "                        当前第<span id=\"spanPageNum\"></span>页\n" +
                            "                        共<span id=\"spanTotalPage\"></span>页\n" +
                            "                            </div>");
                        var  div2=$("<div class=\"gridItem\" style=\"margin-left:50px;  padding: 5px; width: 400px; float: left; text-align: center; height: 20px; vertical-align: middle; font-size: 15px;margin-left: 260px\">\n" +
                            "                            <span id=\"spanFirst\" >首页</span>\n" +
                            "                            <span id=\"spanPre\">上一页</span>\n" +
                            "                            <span id=\"spanInput\" style=\"margin: 0px; padding: 0px 0px 4px 0px; height:100%; \">\n" +
                            "                            第<input id=\"Text1\" type=\"text\" class=\"TextBox\" onkeyup=\"changepage()\"   style=\"height:20px; text-align: center;width:50px\" />页\n" +
                            "                            </span>\n" +
                            "                            <span id=\"spanNext\">下一页</span>\n" +
                            "                            <span  id=\"spanLast\">尾页</span>\n" +
                            "                            </div>");
                        $("#tbody").parent().after(div2);
                        $("#tbody").parent().after(div);*/


                        $(".update").click(function () {         //单击编制标签
                            var index=$(".update").index(this);
                            var id=$(".listId:eq("+index+")").text();//id
                            var title=$(".title:eq("+index+")").text();//标题
                            var price=$(".price:eq("+index+")").text();//价格
                            var sales=$(".sales:eq("+index+")").text();//销量
                            var date=$(".date:eq("+index+")").text();//创建时间

                            $.ajax({
                                url:"selectShoe",
                                type:"POST",
                                data:"id="+id,
                                async: false,
                                dataType:"JSON",
                                success: function (data) {
                                    if (data.length>0){
                                        $("#id").val(id);
                                        $("#title").val(title);
                                        $("#price").val(price);
                                        $("#sales").val(sales);
                                        $("#date").val(date);
                                        $("#index").html(index);//这条数据的下标
                                        for (var i=0;i<data.length;i++){
                                            var p=$("<p style=\"display: inline-block\"class='shoe'><span class='shoeSize'>"+data[i].size+"</span>码<span class='shoeColor'>"+data[i].color+"</span>:<input type=\"text\"value=\""+data[i].count+"\"style=\"width: 80px\" class='shoeCount'></p>")
                                            $("#countDiv").append(p)
                                        }
                                        $("#login").show();
                                        $("#login2").show();
                                    }

                                }
                            })
                        })  //单击编制标签
                        $("#cancel").click(function () {  //单击关闭修改盒子标签
                            $("#countDiv").children().remove();//清除数据  防止叠加
                            $("#login").hide();
                            $("#login2").hide();
                        }) //单击关闭修改盒子标签
                        $("#return").click(function () {  //单击返回按钮
                            $("#countDiv").children().remove();//清除数据  防止叠加
                            $("#login").hide();
                            $("#login2").hide();
                        })//单击返回按钮
                        $("#update").click(function () {  //单击修改框保存按钮
                            var title= $("#title").val();//标题
                            var id= $("#id").val()//id
                            var price= $("#price").val();//价格
                            var json=new Array();//鞋码
                            /* var count=new Array();//数量*/
                            for (var i=0;i<$(".shoe").length;i++){
                                json[i]={'size':$(".shoeSize:eq("+i+")").text(),'color':$(".shoeColor:eq("+i+")").text(),'count':$(".shoeCount:eq("+i+")").val()};
                                /*count[i]=$(".shoeCount:eq("+i+")").val();*/
                            }
                            var shoeJson=JSON.stringify(json);
                            $.ajax({
                                url:"updateSpu",
                                type:"POST",
                                data:"id="+id+"&title="+title+"&price="+price+"&shoeJson="+shoeJson,
                                async: false,
                                success:function (data) {
                                    if (data=="true"){
                                        var index=$("#index").text();//获取这条数据的下标
                                        $(".title:eq("+index+")").html(title);
                                        $(".price:eq("+index+")").html(price);
                                        var sum=0
                                        for (var i=0;i<json.length;i++){
                                            sum+=json[i].count*1;
                                        }
                                        $(".count:eq("+index+")").html(sum);
                                        $("#countDiv").children().remove();//清除数据  防止叠加
                                        $("#login").hide();
                                        $("#login2").hide();
                                    }
                                }
                            })

                        })//单击修改框保存按钮

                        $("#Text1").change(function () { //修改文本框
                            changepage();
                        })
                        $("#spanFirst").click(function () {
                            first()
                        })
                        $("#spanPre").click(function () {
                            var  b=$("#Text1").val();
                            if (b>1){
                                pre()
                            } else {
                                preNoLink()
                            }

                        })
                        $("#spanNext").click(function () {//单击下一页
                            var a=$("#spanTotalPage").text();
                            var  b=$("#Text1").val();
                            if (b<a){
                                next()
                            }
                        })
                        $("#spanLast").click(function () { //尾页
                            last()
                        })

                        var theTable = document.getElementById("t_student");
                        var txtValue = document.getElementById("Text1").value;
                        function changepage() {
                            var txtValue2 = document.getElementById("Text1").value;
                            if (txtValue != txtValue2) {
                                if (txtValue2 > pageCount()) {

                                }
                                else if (txtValue2 <= 0) {

                                }
                                else if (txtValue2 == 1) {
                                    first();
                                }
                                else if (txtValue2 == pageCount()) {
                                    last();
                                }
                                else {
                                    hideTable();
                                    page = txtValue2;
                                    pageNum2.value = page;
                                    currentRow = pageSize * page;
                                    maxRow = currentRow - pageSize;
                                    if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
                                    for (var i = maxRow; i < currentRow; i++) {
                                        theTable.rows[i].style.display = '';
                                    }
                                    if (maxRow == 0) { preText(); firstText(); }
                                    showPage();
                                    nextLink();
                                    lastLink();
                                    preLink();
                                    firstLink();
                                }

                                txtValue = txtValue2;
                            }
                        }
                        //假分页

//获取对应控件
                        var totalPage = document.getElementById("spanTotalPage");//总页数
                        var pageNum = document.getElementById("spanPageNum");//当前页
                        var totalInfor = document.getElementById("spanTotalInfor");//记录总数
                        var pageNum2 = document.getElementById("Text1");//当前页文本框

                        var spanPre = document.getElementById("spanPre");//上一页
                        var spanNext = document.getElementById("spanNext");//下一页
                        var spanFirst = document.getElementById("spanFirst");//首页
                        var spanLast = document.getElementById("spanLast");//尾页
                        var pageSize = 8;//每页信息条数

                        var numberRowsInTable = theTable.rows.length-1;//表格最大行数

                        var page = 1;

//下一页
                        function next() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();
                                currentRow = pageSize * page + 1; //下一页的第一行
                                maxRow = currentRow + pageSize;    //下一页的一行
                                if (maxRow > numberRowsInTable) maxRow = numberRowsInTable+1;//如果计算中下一页最后一行大于实际最后一行行号

                                for (var i = currentRow; i < maxRow; i++) {
                                    theTable.rows[i].style.display = '';
                                }
                                page++;
                                pageNum2.value = page;
                                if (maxRow == numberRowsInTable) { //如果下一页的最后一行是表格的最后一行
                                    nextNoLink(); //下一页 和尾页 不点击
                                    lastNoLink();
                                }

                                showPage();//更新page显示
                                if (page == pageCount()) {//如果当前页是尾页
                                    nextNoLink();
                                    lastNoLink();
                                }

                                preLink();
                                firstLink();
                            }
                        }



//上一页
                        function pre() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();
                                page--;
                                pageNum2.value = page;
                                currentRow = pageSize * page + 1;//下一页的第一行
                                maxRow = currentRow - pageSize;//本页的第一行
                                if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;//如果计算中本页的第一行小于实际首页的第一行行号，则更正

                                for (var i = maxRow; i < currentRow; i++) {
                                    theTable.rows[i].style.display = '';
                                }
                                if (maxRow == 0) { preNoLink(); firstNoLink(); }
                                showPage();//更新page显示
                                if (page == 1) {
                                    firstNoLink();
                                    preNoLink();
                                }
                                nextLink();
                                lastLink();
                            }
                        }


//第一页
                        function first() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();//隐藏所有行
                                page = 1;
                                pageNum2.value = page;
                                for (var i = 1; i < pageSize+1; i++) {//显示第一页的信息
                                    theTable.rows[i].style.display = '';
                                }
                                showPage();//设置当前页

                                firstNoLink();
                                preNoLink();
                                nextLink();
                                lastLink();
                            }
                        }


//最后一页
                        function last() {

                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();//隐藏所有行
                                page = pageCount();//将当前页设置为最大页数
                                pageNum2.value = page;
                                currentRow = pageSize * (page - 1)+1;//获取最后一页的第一行行号
                                for (var i = currentRow; i < numberRowsInTable+1; i++) {//显示表格中最后一页信息
                                    theTable.rows[i].style.display = '';
                                }

                                showPage();
                                lastNoLink();
                                nextNoLink();
                                preLink();
                                firstLink();
                            }
                        }


                        function hideTable() {//隐藏表格内容
                            for (var i = 0; i < numberRowsInTable+1; i++) {
                                theTable.rows[i].style.display = 'none';
                            }
                            theTable.rows[0].style.display = '';//标题栏显示
                        }


                        function showPage() {//设置当前页数
                            pageNum.innerHTML = page;
                        }

                        function inforCount() {//设置总记录数
                            spanTotalInfor.innerHTML = numberRowsInTable;
                        }

//总共页数
                        function pageCount() {
                            var count = 0;
                            if (numberRowsInTable % pageSize != 0) count = 1;
                            return parseInt(numberRowsInTable / pageSize) + count;
                        }


//显示链接 link方法将相应的文字变成可点击翻页的  nolink方法将对应的文字变成不可点击的
                        function preLink() { spanPre.innerHTML = "<a href='javascript:void(0);'>上一页</a>"; }
                        function preNoLink(){ spanPre.innerHTML = "上一页"; }

                        function nextLink() {  spanNext.innerHTML = "<a href='javascript:void(0);'>下一页</a>"; }
                        function nextNoLink(){ spanNext.innerHTML = "下一页";}

                        function firstLink() { spanFirst.innerHTML = "<a href='javascript:void(0);'>首页</a>"; }
                        function firstNoLink(){ spanFirst.innerHTML = "首页";}

                        function lastLink() { spanLast.innerHTML = "<a href='javascript:void(0);'>尾页</a>"; }
                        function lastNoLink(){ spanLast.innerHTML = "尾页";}

//初始化表格
                        function hide() {
                            for (var i = pageSize + 1; i < numberRowsInTable+1 ; i++) {
                                theTable.rows[i].style.display = 'none';
                            }
                            theTable.rows[0].style.display = '';

                            inforCount();

                            totalPage.innerHTML = pageCount();
                            showPage();
                            pageNum2.value = page;

                            if (pageCount() > 1) {
                                nextLink();
                                lastLink();
                            }

                        }

                        hide();

                    }
                }
            })
        })//单击全部
        $("#sj").click(function () {                           //单击在售中
            var name = "sj";
            $("#sj").css("background-color","#f2dede").siblings().css("background-color", "#ececf2");
            $("#sj").attr("name","1").siblings().attr("name","0")
            $(".header").attr("class","layui-unselect header layui-form-checkbox");
            $.getJSON({
                url:"buttonSpu",
                data:"name="+name,
                success:function (data) {
                    $(".spu").remove()
                    $(".gridItem").remove()
                    $("#count").html(data.length)
                    if (data.length>0){

                        for (var i=0;i<data.length;i++){
                            var tr=$("<tr class=\"spu\">\n" +
                                "        <td>\n" +
                                "            <div class=\"layui-unselect layui-form-checkbox\" lay-skin=\"primary\" data-id='2'><i class=\"layui-icon\">&#xe605;</i></div>\n" +
                                "        </td>\n" +
                                "        <td class=\"listId\">"+data[i].id+"</td>\n" +
                                "        <td>\n" +
                                "            <div style=\"width: 80px;height: 50px;float: left\"><img src=\""+data[i].imgName+"\" alt=\"\"style=\"max-width:100%;max-height:100%;\"></div>\n" +
                                "            <div style=\"float: left;vertical-align:middle; padding-top: 20px\"class='title' >"+data[i].title+"</div>\n" +
                                "        </td>\n" +
                                "        <td><span class='brandName'>"+data[i].brandName+"</span></td>\n" +
                                "        <td><span class='classification'>"+data[i].classification+"</span></td>\n" +
                                "        <td><span class='price'>"+data[i].price+"</span></td>\n" +
                                "        <td><span class=\"count\">"+data[i].count+"</span><span style=\"color: red;display: none\">(需补货)</span></td>\n" +
                                "        <td><span class='sales'>"+data[i].sales+"</span></td>\n" +
                                "        <td><span class='date'>"+data[i].date+"</span></td>\n" +
                                "        <td class=\"td-status\">\n" +
                                "            <span class=\"layui-btn layui-btn-normal layui-btn-mini status\">已上架</span><span style=\"display: none\" class=\"StatusId\">"+data[i].status+"</span></td>\n" +
                                "        <td class=\"td-manage\">\n" +
                                "            <a href=\"javascript:void(0);\" class=\"button-status\" title=\"\">\n" +
                                "                <i class=\"sj\"></i> \n" +
                                "            </a>\n" +
                                "            <a title=\"编辑\" class=\"update\" href=\"javascript:;\">\n" +
                                "                <i class=\"layui-icon\">&#xe642;</i>\n" +
                                "            </a> \n" +
                                "        </td>\n" +
                                "    </tr>")
                            $("#tbody").append(tr);
                            var count=data[i].count;
                            if (count<50){
                                $(".count:eq("+i+")").css("color","red");
                                $(".count:eq("+i+")").next().show();
                            }
                            var status=data[i].status;
                            if (status==0){
                                $(".status:eq("+i+")").html("待上架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                $(".sj:eq("+i+")").parent().attr("title","上架")
                            } else if (status==1){
                                $(".status:eq("+i+")").html("已上架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-danger layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-down sj")
                                $(".sj:eq("+i+")").parent().attr("title","下架")
                            } else if(status==2){
                                $(".status:eq("+i+")").html("已下架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                $(".sj:eq("+i+")").parent().attr("title","上架")
                            }
                        }
                        var div=$(" <div class=\"gridItem\" style=\"padding: 5px; width: 250px; float: left; text-align: left; height: 20px; font-size: 15px;margin-left: 100px\" >\n" +
                            "                            共有 <span id=\"spanTotalInfor\"></span> 条记录\n" +
                            "                        当前第<span id=\"spanPageNum\"></span>页\n" +
                            "                        共<span id=\"spanTotalPage\"></span>页\n" +
                            "                            </div>");
                        var  div2=$("<div class=\"gridItem\" style=\"margin-left:50px;  padding: 5px; width: 400px; float: left; text-align: center; height: 20px; vertical-align: middle; font-size: 15px;margin-left: 260px\">\n" +
                            "                            <span id=\"spanFirst\" >首页</span>\n" +
                            "                            <span id=\"spanPre\">上一页</span>\n" +
                            "                            <span id=\"spanInput\" style=\"margin: 0px; padding: 0px 0px 4px 0px; height:100%; \">\n" +
                            "                            第<input id=\"Text1\" type=\"text\" class=\"TextBox\" onkeyup=\"changepage()\"   style=\"height:20px; text-align: center;width:50px\" />页\n" +
                            "                            </span>\n" +
                            "                            <span id=\"spanNext\">下一页</span>\n" +
                            "                            <span  id=\"spanLast\">尾页</span>\n" +
                            "                            </div>");
                        $("#tbody").parent().after(div2);
                        $("#tbody").parent().after(div);

                        $(".button-status").click(function () {  //修改上下架
                            var index=$(".button-status").index(this);
                            var id=$(".listId:eq("+index+")").text();
                            var title=$(".button-status:eq("+index+")").attr("title");//获取是上架还是下架
                            if (title=="下架"){
                                var status=2;
                                $.ajax({
                                    url:"updateSpustatus",
                                    data:"id="+id+"&status="+status,
                                    async:false,
                                    success:function (data) {
                                        var name=$("input[name=1]").val();
                                        if (name=="全部"||name=="已售罄") {
                                            $(".StatusId:eq("+index+")").html(2);
                                            $(".status:eq("+index+")").html("已下架");
                                            $(".status:eq("+index+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                            $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-up sj")
                                            $(".sj:eq("+index+")").parent().attr("title","上架")
                                        }else {
                                            $(".spu:eq("+index+")").remove();
                                            var a=$("#count").text();
                                            $("#count").html(a-1)
                                        }
                                    }
                                })
                            } else if (title=="上架"){
                                var status=$(".button-status:eq("+index+")").parent().prev().find(".StatusId").text();
                                if (status==0){   //代表待上架  未有规格

                                } else if (status==2) {   //代表是下架的 准备上架
                                    var status=1;
                                    $.ajax({
                                        url:"updateSpustatus",
                                        data:"id="+id+"&status="+status,
                                        async:false,
                                        success:function (data) {
                                            var name=$("input[name=1]").val();
                                            if (name=="全部"||name=="已售罄") {
                                                $(".StatusId:eq("+index+")").html(1);
                                                $(".status:eq("+index+")").html("已上架");
                                                $(".status:eq("+index+")").attr("class","layui-btn layui-btn-danger  layui-btn-mini status")
                                                $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-down sj")
                                                $(".sj:eq("+index+")").parent().attr("title","下架");
                                            }else {
                                                $(".spu:eq("+index+")").remove();
                                                var a=$("#count").text();
                                                $("#count").html(a-1);
                                            }

                                        }
                                    })
                                }
                            }

                        })//单击下架图标

                        $(".update").click(function () {         //单击编制标签
                            var index=$(".update").index(this);
                            var id=$(".listId:eq("+index+")").text();//id
                            var title=$(".title:eq("+index+")").text();//标题
                            var price=$(".price:eq("+index+")").text();//价格
                            var sales=$(".sales:eq("+index+")").text();//销量
                            var date=$(".date:eq("+index+")").text();//创建时间

                            $.ajax({
                                url:"selectShoe",
                                type:"POST",
                                data:"id="+id,
                                async: false,
                                dataType:"JSON",
                                success: function (data) {
                                    if (data.length>0){
                                        $("#id").val(id);
                                        $("#title").val(title);
                                        $("#price").val(price);
                                        $("#sales").val(sales);
                                        $("#date").val(date);
                                        $("#index").html(index);//这条数据的下标
                                        for (var i=0;i<data.length;i++){
                                            var p=$("<p style=\"display: inline-block\"class='shoe'><span class='shoeSize'>"+data[i].size+"</span>码<span class='shoeColor'>"+data[i].color+"</span>:<input type=\"text\"value=\""+data[i].count+"\"style=\"width: 80px\" class='shoeCount'></p>")
                                            $("#countDiv").append(p)
                                        }
                                        $("#login").show();
                                        $("#login2").show();
                                    }

                                }
                            })
                        })  //单击编制标签
                        $("#cancel").click(function () {  //单击关闭修改盒子标签
                            $("#countDiv").children().remove();//清除数据  防止叠加
                            $("#login").hide();
                            $("#login2").hide();
                        }) //单击关闭修改盒子标签
                        $("#return").click(function () {  //单击返回按钮
                            $("#countDiv").children().remove();//清除数据  防止叠加
                            $("#login").hide();
                            $("#login2").hide();
                        })//单击返回按钮
                        $("#update").click(function () {  //单击修改框保存按钮
                            var title= $("#title").val();//标题
                            var id= $("#id").val()//id
                            var price= $("#price").val();//价格
                            var json=new Array();//鞋码
                            /* var count=new Array();//数量*/
                            for (var i=0;i<$(".shoe").length;i++){
                                json[i]={'size':$(".shoeSize:eq("+i+")").text(),'color':$(".shoeColor:eq("+i+")").text(),'count':$(".shoeCount:eq("+i+")").val()};
                                /*count[i]=$(".shoeCount:eq("+i+")").val();*/
                            }
                            var shoeJson=JSON.stringify(json);
                            $.ajax({
                                url:"updateSpu",
                                type:"POST",
                                data:"id="+id+"&title="+title+"&price="+price+"&shoeJson="+shoeJson,
                                async: false,
                                success:function (data) {
                                    if (data=="true"){
                                        var index=$("#index").text();//获取这条数据的下标
                                        $(".title:eq("+index+")").html(title);
                                        $(".price:eq("+index+")").html(price);
                                        var sum=0
                                        for (var i=0;i<json.length;i++){
                                            sum+=json[i].count*1;
                                        }
                                        $(".count:eq("+index+")").html(sum);
                                        $("#countDiv").children().remove();//清除数据  防止叠加
                                        $("#login").hide();
                                        $("#login2").hide();
                                    }
                                }
                            })

                        })//单击修改框保存按钮

                        $("#Text1").change(function () { //修改文本框
                            changepage();
                        })
                        $("#spanFirst").click(function () {
                            first()
                        })
                        $("#spanPre").click(function () {
                            var  b=$("#Text1").val();
                            if (b>1){
                                pre()
                            } else {
                                preNoLink()
                            }

                        })
                        $("#spanNext").click(function () {//单击下一页
                            var a=$("#spanTotalPage").text();
                            var  b=$("#Text1").val();
                            if (b<a){
                                next();
                            }
                        })
                        $("#spanLast").click(function () { //尾页
                            last()
                        })

                        var theTable = document.getElementById("t_student");
                        var txtValue = document.getElementById("Text1").value;
                        function changepage() {
                            var txtValue2 = document.getElementById("Text1").value;
                            if (txtValue != txtValue2) {
                                if (txtValue2 > pageCount()) {

                                }
                                else if (txtValue2 <= 0) {

                                }
                                else if (txtValue2 == 1) {
                                    first();
                                }
                                else if (txtValue2 == pageCount()) {
                                    last();
                                }
                                else {
                                    hideTable();
                                    page = txtValue2;
                                    pageNum2.value = page;
                                    currentRow = pageSize * page;
                                    maxRow = currentRow - pageSize;
                                    if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
                                    for (var i = maxRow; i < currentRow; i++) {
                                        theTable.rows[i].style.display = '';
                                    }
                                    if (maxRow == 0) { preText(); firstText(); }
                                    showPage();
                                    nextLink();
                                    lastLink();
                                    preLink();
                                    firstLink();
                                }

                                txtValue = txtValue2;
                            }
                        }
                        //假分页

//获取对应控件
                        var totalPage = document.getElementById("spanTotalPage");//总页数
                        var pageNum = document.getElementById("spanPageNum");//当前页
                        var totalInfor = document.getElementById("spanTotalInfor");//记录总数
                        var pageNum2 = document.getElementById("Text1");//当前页文本框

                        var spanPre = document.getElementById("spanPre");//上一页
                        var spanNext = document.getElementById("spanNext");//下一页
                        var spanFirst = document.getElementById("spanFirst");//首页
                        var spanLast = document.getElementById("spanLast");//尾页
                        var pageSize = 8;//每页信息条数

                        var numberRowsInTable = theTable.rows.length-1;//表格最大行数

                        var page = 1;

//下一页
                        function next() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();
                                currentRow = pageSize * page + 1; //下一页的第一行
                                maxRow = currentRow + pageSize;    //下一页的一行
                                if (maxRow > numberRowsInTable) maxRow = numberRowsInTable+1;//如果计算中下一页最后一行大于实际最后一行行号

                                for (var i = currentRow; i < maxRow; i++) {
                                    theTable.rows[i].style.display = '';
                                }
                                page++;
                                pageNum2.value = page;
                                if (maxRow == numberRowsInTable) { //如果下一页的最后一行是表格的最后一行
                                    nextNoLink(); //下一页 和尾页 不点击
                                    lastNoLink();
                                }

                                showPage();//更新page显示
                                if (page == pageCount()) {//如果当前页是尾页
                                    nextNoLink();
                                    lastNoLink();
                                }

                                preLink();
                                firstLink();
                            }
                        }



//上一页
                        function pre() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();
                                page--;
                                pageNum2.value = page;
                                currentRow = pageSize * page + 1;//下一页的第一行
                                maxRow = currentRow - pageSize;//本页的第一行
                                if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;//如果计算中本页的第一行小于实际首页的第一行行号，则更正

                                for (var i = maxRow; i < currentRow; i++) {
                                    theTable.rows[i].style.display = '';
                                }
                                if (maxRow == 0) { preNoLink(); firstNoLink(); }
                                showPage();//更新page显示
                                if (page == 1) {
                                    firstNoLink();
                                    preNoLink();
                                }
                                nextLink();
                                lastLink();
                            }
                        }


//第一页
                        function first() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();//隐藏所有行
                                page = 1;
                                pageNum2.value = page;
                                for (var i = 1; i < pageSize+1; i++) {//显示第一页的信息
                                    theTable.rows[i].style.display = '';
                                }
                                showPage();//设置当前页

                                firstNoLink();
                                preNoLink();
                                nextLink();
                                lastLink();
                            }
                        }


//最后一页
                        function last() {

                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();//隐藏所有行
                                page = pageCount();//将当前页设置为最大页数
                                pageNum2.value = page;
                                currentRow = pageSize * (page - 1)+1;//获取最后一页的第一行行号
                                for (var i = currentRow; i < numberRowsInTable+1; i++) {//显示表格中最后一页信息
                                    theTable.rows[i].style.display = '';
                                }

                                showPage();
                                lastNoLink();
                                nextNoLink();
                                preLink();
                                firstLink();
                            }
                        }


                        function hideTable() {//隐藏表格内容
                            for (var i = 0; i < numberRowsInTable+1; i++) {
                                theTable.rows[i].style.display = 'none';
                            }
                            theTable.rows[0].style.display = '';//标题栏显示
                        }


                        function showPage() {//设置当前页数
                            pageNum.innerHTML = page;
                        }

                        function inforCount() {//设置总记录数
                            spanTotalInfor.innerHTML = numberRowsInTable;
                        }

//总共页数
                        function pageCount() {
                            var count = 0;
                            if (numberRowsInTable % pageSize != 0) count = 1;
                            return parseInt(numberRowsInTable / pageSize) + count;
                        }


//显示链接 link方法将相应的文字变成可点击翻页的  nolink方法将对应的文字变成不可点击的
                        function preLink() { spanPre.innerHTML = "<a href='javascript:void(0);'>上一页</a>"; }
                        function preNoLink(){ spanPre.innerHTML = "上一页"; }

                        function nextLink() {  spanNext.innerHTML = "<a href='javascript:void(0);'>下一页</a>"; }
                        function nextNoLink(){ spanNext.innerHTML = "下一页";}

                        function firstLink() { spanFirst.innerHTML = "<a href='javascript:void(0);'>首页</a>"; }
                        function firstNoLink(){ spanFirst.innerHTML = "首页";}

                        function lastLink() { spanLast.innerHTML = "<a href='javascript:void(0);'>尾页</a>"; }
                        function lastNoLink(){ spanLast.innerHTML = "尾页";}

//初始化表格
                        function hide() {
                            for (var i = pageSize + 1; i < numberRowsInTable+1 ; i++) {
                                theTable.rows[i].style.display = 'none';
                            }
                            theTable.rows[0].style.display = '';

                            inforCount();

                            totalPage.innerHTML = pageCount();
                            showPage();
                            pageNum2.value = page;

                            if (pageCount() > 1) {
                                nextLink();
                                lastLink();
                            }

                        }

                        hide();



                    }
                }
            })
        })//单击全在售中
        $("#sk").click(function ()  {                                               //单击在售罄
            var name = "sk";
            $("#sk").css("background-color","#f2dede").siblings().css("background-color", "#ececf2");
            $("#sk").attr("name","1").siblings().attr("name","0")
            $(".header").attr("class","layui-unselect header layui-form-checkbox");
            $.getJSON({
                url:"buttonSpu",
                data:"name="+name,
                success:function (data) {
                    $(".spu").remove();
                    $(".gridItem").remove()
                    $("#count").html(data.length)
                    if (data.length>0){

                        for (var i=0;i<data.length;i++){
                            var tr=$("<tr class=\"spu\">\n" +
                                "        <td>\n" +
                                "            <div class=\"layui-unselect layui-form-checkbox\" lay-skin=\"primary\" data-id='2'><i class=\"layui-icon\">&#xe605;</i></div>\n" +
                                "        </td>\n" +
                                "        <td class=\"listId\">"+data[i].id+"</td>\n" +
                                "        <td>\n" +
                                "            <div style=\"width: 80px;height: 50px;float: left\"><img src=\""+data[i].imgName+"\" alt=\"\"style=\"max-width:100%;max-height:100%;\"></div>\n" +
                                "            <div style=\"float: left;vertical-align:middle; padding-top: 20px\" class='title'>"+data[i].title+"</div>\n" +
                                "        </td>\n" +
                                "        <td><span class='brandName'>"+data[i].brandName+"</span></td>\n" +
                                "        <td><span class='classification'>"+data[i].classification+"</span></td>\n" +
                                "        <td><span class='price'>"+data[i].price+"</span></td>\n" +
                                "        <td><span class=\"count\">"+data[i].count+"</span><span style=\"color: red;display: none\">(需补货)</span></td>\n" +
                                "        <td><span class='sales'>"+data[i].sales+"</span></td>\n" +
                                "        <td><span class='date'>"+data[i].date+"</span></td>\n" +
                                "        <td class=\"td-status\">\n" +
                                "            <span class=\"layui-btn layui-btn-normal layui-btn-mini status\">已上架</span><span style=\"display: none\" class=\"StatusId\">"+data[i].status+"</span></td>\n" +
                                "        <td class=\"td-manage\">\n" +
                                "            <a href=\"javascript:void(0);\" class=\"button-status\" title=\"\">\n" +
                                "                <i class=\"sj\"></i> \n" +
                                "            </a>\n" +
                                "            <a title=\"编辑\" class=\"update\" href=\"javascript:;\">\n" +
                                "                <i class=\"layui-icon\">&#xe642;</i>\n" +
                                "            </a> \n" +
                                "        </td>\n" +
                                "    </tr>")
                            $("#tbody").append(tr);
                            if (i>=10){
                                $("#tbody tr:eq("+i+")").append(tr).hide();
                            }
                            var count=data[i].count;
                            if (count<50){
                                $(".count:eq("+i+")").css("color","red");
                                $(".count:eq("+i+")").next().show();
                            }
                            var status=data[i].status;
                            if (status==0){
                                $(".status:eq("+i+")").html("待上架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                $(".sj:eq("+i+")").parent().attr("title","上架")
                            } else if (status==1){
                                $(".status:eq("+i+")").html("已上架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-danger layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-down sj")
                                $(".sj:eq("+i+")").parent().attr("title","下架")
                            } else if(status==2){
                                $(".status:eq("+i+")").html("已下架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                $(".sj:eq("+i+")").parent().attr("title","上架")
                            }
                        }
                        $(".button-status").click(function () {
                            var index=$(".button-status").index(this);
                            var id=$(".listId:eq("+index+")").text();
                            var title=$(".button-status:eq("+index+")").attr("title");//获取是上架还是下架
                            if (title=="下架"){
                                var status=2;
                                $.ajax({
                                    url:"updateSpustatus",
                                    data:"id="+id+"&status="+status,
                                    async:false,
                                    success:function (data) {
                                        var name=$("input[name=1]").val();
                                        if (name=="全部"||name=="已售罄") {
                                            $(".StatusId:eq("+index+")").html(2);
                                            $(".status:eq("+index+")").html("已下架");
                                            $(".status:eq("+index+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                            $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-up sj")
                                            $(".sj:eq("+index+")").parent().attr("title","上架")
                                        }else {
                                            $(".spu:eq("+index+")").remove();
                                            var a=$("#count").text();
                                            $("#count").html(a-1)
                                        }
                                    }
                                })
                            } else if (title=="上架"){
                                var status=$(".button-status:eq("+index+")").parent().prev().find(".StatusId").text();
                                if (status==0){   //代表待上架  未有规格

                                } else if (status==2) {   //代表是下架的 准备上架
                                    var status=1;
                                    $.ajax({
                                        url:"updateSpustatus",
                                        data:"id="+id+"&status="+status,
                                        async:false,
                                        success:function (data) {
                                            var name=$("input[name=1]").val();
                                            if (name=="全部"||name=="已售罄") {
                                                $(".StatusId:eq("+index+")").html(1);
                                                $(".status:eq("+index+")").html("已上架");
                                                $(".status:eq("+index+")").attr("class","layui-btn layui-btn-danger  layui-btn-mini status")
                                                $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-down sj")
                                                $(".sj:eq("+index+")").parent().attr("title","下架")

                                            }else {
                                                $(".spu:eq("+index+")").remove();
                                                var a=$("#count").text();
                                                $("#count").html(a-1)
                                            }

                                        }
                                    })
                                }
                            }

                        })//单击下架图标
                        var div=$(" <div class=\"gridItem\" style=\"padding: 5px; width: 250px; float: left; text-align: left; height: 20px; font-size: 15px;margin-left: 100px\" >\n" +
                            "                            共有 <span id=\"spanTotalInfor\"></span> 条记录\n" +
                            "                        当前第<span id=\"spanPageNum\"></span>页\n" +
                            "                        共<span id=\"spanTotalPage\"></span>页\n" +
                            "                            </div>");
                        var  div2=$("<div class=\"gridItem\" style=\"margin-left:50px;  padding: 5px; width: 400px; float: left; text-align: center; height: 20px; vertical-align: middle; font-size: 15px;margin-left: 260px\">\n" +
                            "                            <span id=\"spanFirst\" >首页</span>\n" +
                            "                            <span id=\"spanPre\">上一页</span>\n" +
                            "                            <span id=\"spanInput\" style=\"margin: 0px; padding: 0px 0px 4px 0px; height:100%; \">\n" +
                            "                            第<input id=\"Text1\" type=\"text\" class=\"TextBox\" onkeyup=\"changepage()\"   style=\"height:20px; text-align: center;width:50px\" />页\n" +
                            "                            </span>\n" +
                            "                            <span id=\"spanNext\">下一页</span>\n" +
                            "                            <span  id=\"spanLast\">尾页</span>\n" +
                            "                            </div>");
                        $("#tbody").parent().after(div2);
                        $("#tbody").parent().after(div);

                        $(".update").click(function () {         //单击编制标签
                            var index=$(".update").index(this);
                            var id=$(".listId:eq("+index+")").text();//id
                            var title=$(".title:eq("+index+")").text();//标题
                            var price=$(".price:eq("+index+")").text();//价格
                            var sales=$(".sales:eq("+index+")").text();//销量
                            var date=$(".date:eq("+index+")").text();//创建时间

                            $.ajax({
                                url:"selectShoe",
                                type:"POST",
                                data:"id="+id,
                                async: false,
                                dataType:"JSON",
                                success: function (data) {
                                    if (data.length>0){
                                        $("#id").val(id);
                                        $("#title").val(title);
                                        $("#price").val(price);
                                        $("#sales").val(sales);
                                        $("#date").val(date);
                                        $("#index").html(index);//这条数据的下标
                                        for (var i=0;i<data.length;i++){
                                            var p=$("<p style=\"display: inline-block\"class='shoe'><span class='shoeSize'>"+data[i].size+"</span>码<span class='shoeColor'>"+data[i].color+"</span>:<input type=\"text\"value=\""+data[i].count+"\"style=\"width: 80px\" class='shoeCount'></p>")
                                            $("#countDiv").append(p)
                                        }
                                        $("#login").show();
                                        $("#login2").show();
                                    }

                                }
                            })
                        })  //单击编制标签
                        $("#cancel").click(function () {  //单击关闭修改盒子标签
                            $("#countDiv").children().remove();//清除数据  防止叠加
                            $("#login").hide();
                            $("#login2").hide();
                        }) //单击关闭修改盒子标签
                        $("#return").click(function () {  //单击返回按钮
                            $("#countDiv").children().remove();//清除数据  防止叠加
                            $("#login").hide();
                            $("#login2").hide();
                        })//单击返回按钮
                        $("#update").click(function () {  //单击修改框保存按钮
                            var title= $("#title").val();//标题
                            var id= $("#id").val()//id
                            var price= $("#price").val();//价格
                            var json=new Array();//鞋码
                            /* var count=new Array();//数量*/
                            for (var i=0;i<$(".shoe").length;i++){
                                json[i]={'size':$(".shoeSize:eq("+i+")").text(),'color':$(".shoeColor:eq("+i+")").text(),'count':$(".shoeCount:eq("+i+")").val()};
                                /*count[i]=$(".shoeCount:eq("+i+")").val();*/
                            }
                            var shoeJson=JSON.stringify(json);
                            $.ajax({
                                url:"updateSpu",
                                type:"POST",
                                data:"id="+id+"&title="+title+"&price="+price+"&shoeJson="+shoeJson,
                                async: false,
                                success:function (data) {
                                    if (data=="true"){
                                        var index=$("#index").text();//获取这条数据的下标
                                        $(".title:eq("+index+")").html(title);
                                        $(".price:eq("+index+")").html(price);
                                        var sum=0
                                        for (var i=0;i<json.length;i++){
                                            sum+=json[i].count*1;
                                        }
                                        $(".count:eq("+index+")").html(sum);
                                        $("#countDiv").children().remove();//清除数据  防止叠加
                                        $("#login").hide();
                                        $("#login2").hide();
                                    }
                                }
                            })

                        })//单击修改框保存按钮


                        $("#Text1").change(function () { //修改文本框
                            changepage();
                        })
                        $("#spanFirst").click(function () {
                            first()
                        })
                        $("#spanPre").click(function () {
                            var  b=$("#Text1").val();
                            if (b>1){
                                pre()
                            } else {
                                preNoLink()
                            }

                        })
                        $("#spanNext").click(function () {//单击下一页
                            var a=$("#spanTotalPage").text();
                            var  b=$("#Text1").val();
                            if (b<a){
                                next()
                            }
                        })
                        $("#spanLast").click(function () { //尾页
                            last()
                        })

                        var theTable = document.getElementById("t_student");
                        var txtValue = document.getElementById("Text1").value;
                        function changepage() {
                            var txtValue2 = document.getElementById("Text1").value;
                            if (txtValue != txtValue2) {
                                if (txtValue2 > pageCount()) {

                                }
                                else if (txtValue2 <= 0) {

                                }
                                else if (txtValue2 == 1) {
                                    first();
                                }
                                else if (txtValue2 == pageCount()) {
                                    last();
                                }
                                else {
                                    hideTable();
                                    page = txtValue2;
                                    pageNum2.value = page;
                                    currentRow = pageSize * page;
                                    maxRow = currentRow - pageSize;
                                    if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
                                    for (var i = maxRow; i < currentRow; i++) {
                                        theTable.rows[i].style.display = '';
                                    }
                                    if (maxRow == 0) { preText(); firstText(); }
                                    showPage();
                                    nextLink();
                                    lastLink();
                                    preLink();
                                    firstLink();
                                }

                                txtValue = txtValue2;
                            }
                        }
                        //假分页

//获取对应控件
                        var totalPage = document.getElementById("spanTotalPage");//总页数
                        var pageNum = document.getElementById("spanPageNum");//当前页
                        var totalInfor = document.getElementById("spanTotalInfor");//记录总数
                        var pageNum2 = document.getElementById("Text1");//当前页文本框

                        var spanPre = document.getElementById("spanPre");//上一页
                        var spanNext = document.getElementById("spanNext");//下一页
                        var spanFirst = document.getElementById("spanFirst");//首页
                        var spanLast = document.getElementById("spanLast");//尾页
                        var pageSize = 8;//每页信息条数

                        var numberRowsInTable = theTable.rows.length-1;//表格最大行数

                        var page = 1;

//下一页
                        function next() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();
                                currentRow = pageSize * page + 1; //下一页的第一行
                                maxRow = currentRow + pageSize;    //下一页的一行
                                if (maxRow > numberRowsInTable) maxRow = numberRowsInTable+1;//如果计算中下一页最后一行大于实际最后一行行号

                                for (var i = currentRow; i < maxRow; i++) {
                                    theTable.rows[i].style.display = '';
                                }
                                page++;
                                pageNum2.value = page;
                                if (maxRow == numberRowsInTable) { //如果下一页的最后一行是表格的最后一行
                                    nextNoLink(); //下一页 和尾页 不点击
                                    lastNoLink();
                                }

                                showPage();//更新page显示
                                if (page == pageCount()) {//如果当前页是尾页
                                    nextNoLink();
                                    lastNoLink();
                                }

                                preLink();
                                firstLink();
                            }
                        }



//上一页
                        function pre() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();
                                page--;
                                pageNum2.value = page;
                                currentRow = pageSize * page + 1;//下一页的第一行
                                maxRow = currentRow - pageSize;//本页的第一行
                                if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;//如果计算中本页的第一行小于实际首页的第一行行号，则更正

                                for (var i = maxRow; i < currentRow; i++) {
                                    theTable.rows[i].style.display = '';
                                }
                                if (maxRow == 0) { preNoLink(); firstNoLink(); }
                                showPage();//更新page显示
                                if (page == 1) {
                                    firstNoLink();
                                    preNoLink();
                                }
                                nextLink();
                                lastLink();
                            }
                        }


//第一页
                        function first() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();//隐藏所有行
                                page = 1;
                                pageNum2.value = page;
                                for (var i = 1; i < pageSize+1; i++) {//显示第一页的信息
                                    theTable.rows[i].style.display = '';
                                }
                                showPage();//设置当前页

                                firstNoLink();
                                preNoLink();
                                nextLink();
                                lastLink();
                            }
                        }


//最后一页
                        function last() {

                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();//隐藏所有行
                                page = pageCount();//将当前页设置为最大页数
                                pageNum2.value = page;
                                currentRow = pageSize * (page - 1)+1;//获取最后一页的第一行行号
                                for (var i = currentRow; i < numberRowsInTable+1; i++) {//显示表格中最后一页信息
                                    theTable.rows[i].style.display = '';
                                }

                                showPage();
                                lastNoLink();
                                nextNoLink();
                                preLink();
                                firstLink();
                            }
                        }


                        function hideTable() {//隐藏表格内容
                            for (var i = 0; i < numberRowsInTable+1; i++) {
                                theTable.rows[i].style.display = 'none';
                            }
                            theTable.rows[0].style.display = '';//标题栏显示
                        }


                        function showPage() {//设置当前页数
                            pageNum.innerHTML = page;
                        }

                        function inforCount() {//设置总记录数
                            spanTotalInfor.innerHTML = numberRowsInTable;
                        }

//总共页数
                        function pageCount() {
                            var count = 0;
                            if (numberRowsInTable % pageSize != 0) count = 1;
                            return parseInt(numberRowsInTable / pageSize) + count;
                        }


//显示链接 link方法将相应的文字变成可点击翻页的  nolink方法将对应的文字变成不可点击的
                        function preLink() { spanPre.innerHTML = "<a href='javascript:void(0);'>上一页</a>"; }
                        function preNoLink(){ spanPre.innerHTML = "上一页"; }

                        function nextLink() {  spanNext.innerHTML = "<a href='javascript:void(0);'>下一页</a>"; }
                        function nextNoLink(){ spanNext.innerHTML = "下一页";}

                        function firstLink() { spanFirst.innerHTML = "<a href='javascript:void(0);'>首页</a>"; }
                        function firstNoLink(){ spanFirst.innerHTML = "首页";}

                        function lastLink() { spanLast.innerHTML = "<a href='javascript:void(0);'>尾页</a>"; }
                        function lastNoLink(){ spanLast.innerHTML = "尾页";}

//初始化表格
                        function hide() {
                            for (var i = pageSize + 1; i < numberRowsInTable+1 ; i++) {
                                theTable.rows[i].style.display = 'none';
                            }
                            theTable.rows[0].style.display = '';

                            inforCount();

                            totalPage.innerHTML = pageCount();
                            showPage();
                            pageNum2.value = page;

                            if (pageCount() > 1) {
                                nextLink();
                                lastLink();
                            }

                        }

                        hide();
                    }
                }
            })
        })//单击已售罄
        $("#xj").click(function () {//单击下架
            var name = "xj";
            $("#xj").css("background-color","#f2dede").siblings().css("background-color", "#ececf2");
            $("#xj").attr("name","1").siblings().attr("name","0")
            $(".header").attr("class","layui-unselect header layui-form-checkbox");
            $.getJSON({
                url:"buttonSpu",
                data:"name="+name,
                success:function (data) {
                    $(".spu").remove();
              $(".gridItem").remove();
                    $(".js").remove()
                    $("#count").html(data.length)
                    if (data.length>0){
                        for (var i=0;i<data.length;i++){
                            var tr=$("<tr class=\"spu\">\n" +
                                "        <td>\n" +
                                "            <div class=\"layui-unselect layui-form-checkbox\" lay-skin=\"primary\" data-id='2'><i class=\"layui-icon\">&#xe605;</i></div>\n" +
                                "        </td>\n" +
                                "        <td class=\"listId\">"+data[i].id+"</td>\n" +
                                "        <td>\n" +
                                "            <div style=\"width: 80px;height: 50px;float: left\"><img src=\""+data[i].imgName+"\" alt=\"\"style=\"max-width:100%;max-height:100%;\"></div>\n" +
                                "            <div style=\"float: left;vertical-align:middle; padding-top: 20px\" class='title'>"+data[i].title+"</div>\n" +
                                "        </td>\n" +
                                "        <td><span class='brandName'>"+data[i].brandName+"</span></td>\n" +
                                "        <td><span class='classification'>"+data[i].classification+"</span></td>\n" +
                                "        <td><span class='price'>"+data[i].price+"</span></td>\n" +
                                "        <td><span class=\"count\">"+data[i].count+"</span><span style=\"color: red;display: none\">(需补货)</span></td>\n" +
                                "        <td><span class='sales'>"+data[i].sales+"</span></td>\n" +
                                "        <td><span class='date'>"+data[i].date+"</span></td>\n" +
                                "        <td class=\"td-status\">\n" +
                                "            <span class=\"layui-btn layui-btn-normal layui-btn-mini status\">已上架</span><span style=\"display: none\" class=\"StatusId\">"+data[i].status+"</span></td>\n" +
                                "        <td class=\"td-manage\">\n" +
                                "            <a href=\"javascript:void(0);\" class=\"button-status\" title=\"\">\n" +
                                "                <i class=\"sj\"></i> \n" +
                                "            </a>\n" +
                                "            <a title=\"编辑\" class=\"update\" href=\"javascript:;\">\n" +
                                "                <i class=\"layui-icon\">&#xe642;</i>\n" +
                                "            </a> \n" +
                                "        </td>\n" +
                                "    </tr>")

                            $("#tbody").append(tr);
                            var count=data[i].count;

                            if (count<50){
                                $(".count:eq("+i+")").css("color","red");
                                $(".count:eq("+i+")").next().show();
                            }
                            var status=data[i].status;
                            if (status==0){
                                $(".status:eq("+i+")").html("待上架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                $(".sj:eq("+i+")").parent().attr("title","上架")
                            } else if (status==1){
                                $(".status:eq("+i+")").html("已上架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-danger layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-down sj")
                                $(".sj:eq("+i+")").parent().attr("title","下架")
                            } else if(status==2){
                                $(".status:eq("+i+")").html("已下架");
                                $(".status:eq("+i+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                $(".sj:eq("+i+")").parent().attr("title","上架")
                            }

                        }
                        $(".button-status").click(function () {
                            var index=$(".button-status").index(this);
                            var id=$(".listId:eq("+index+")").text();
                            var title=$(".button-status:eq("+index+")").attr("title");//获取是上架还是下架
                            if (title=="下架"){
                                var status=2;
                                $.ajax({
                                    url:"updateSpustatus",
                                    data:"id="+id+"&status="+status,
                                    async:false,
                                    success:function (data) {
                                        var name=$("input[name=1]").val();
                                        if (name=="全部"||name=="已售罄") {
                                            $(".StatusId:eq("+index+")").html(2);
                                            $(".status:eq("+index+")").html("已下架");
                                            $(".status:eq("+index+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                            $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-up sj")
                                            $(".sj:eq("+index+")").parent().attr("title","上架")
                                        }else {
                                            $(".spu:eq("+index+")").remove();
                                            var a=$("#count").text();
                                            $("#count").html(a-1)
                                            window.location.reload()
                                        }
                                    }
                                })
                            } else if (title=="上架"){
                                var status=$(".button-status:eq("+index+")").parent().prev().find(".StatusId").text();
                                if (status==0){   //代表待上架  未有规格

                                } else if (status==2) {   //代表是下架的 准备上架
                                    var status=1;
                                    $.ajax({
                                        url:"updateSpustatus",
                                        data:"id="+id+"&status="+status,
                                        async:false,
                                        success:function (data) {
                                            var name=$("input[name=1]").val();
                                            if (name=="全部"||name=="已售罄") {
                                                $(".StatusId:eq("+index+")").html(1);
                                                $(".status:eq("+index+")").html("已上架");
                                                $(".status:eq("+index+")").attr("class","layui-btn layui-btn-danger  layui-btn-mini status")
                                                $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-down sj")
                                                $(".sj:eq("+index+")").parent().attr("title","下架")

                                            }else {
                                                $(".spu:eq("+index+")").remove();
                                                var a=$("#count").text();
                                                $("#count").html(a-1)
                                            }
                                            window.location.reload()
                                        }
                                    })
                                }
                            }

                        })//单击下架图标
                        var div=$(" <div class=\"gridItem\" style=\"padding: 5px; width: 250px; float: left; text-align: left; height: 20px; font-size: 15px;margin-left: 100px\" >\n" +
                            "                            共有 <span id=\"spanTotalInfor\"></span> 条记录\n" +
                            "                        当前第<span id=\"spanPageNum\"></span>页\n" +
                            "                        共<span id=\"spanTotalPage\"></span>页\n" +
                            "                            </div>");
                        var  div2=$("<div class=\"gridItem\" style=\"margin-left:50px;  padding: 5px; width: 400px; float: left; text-align: center; height: 20px; vertical-align: middle; font-size: 15px;margin-left: 260px\">\n" +
                            "                            <span id=\"spanFirst\" >首页</span>\n" +
                            "                            <span id=\"spanPre\">上一页</span>\n" +
                            "                            <span id=\"spanInput\" style=\"margin: 0px; padding: 0px 0px 4px 0px; height:100%; \">\n" +
                            "                            第<input id=\"Text1\" type=\"text\" class=\"TextBox\" onkeyup=\"changepage()\"   style=\"height:20px; text-align: center;width:50px\" />页\n" +
                            "                            </span>\n" +
                            "                            <span id=\"spanNext\">下一页</span>\n" +
                            "                            <span  id=\"spanLast\">尾页</span>\n" +
                            "                            </div>");
                        $("#tbody").parent().after(div2);
                        $("#tbody").parent().after(div);

                        $(".update").click(function () {         //单击编制标签
                            var index=$(".update").index(this);
                            var id=$(".listId:eq("+index+")").text();//id
                            var title=$(".title:eq("+index+")").text();//标题
                            var price=$(".price:eq("+index+")").text();//价格
                            var sales=$(".sales:eq("+index+")").text();//销量
                            var date=$(".date:eq("+index+")").text();//创建时间

                            $.ajax({
                                url:"selectShoe",
                                type:"POST",
                                data:"id="+id,
                                async: false,
                                dataType:"JSON",
                                success: function (data) {
                                    if (data.length>0){
                                        $("#id").val(id);
                                        $("#title").val(title);
                                        $("#price").val(price);
                                        $("#sales").val(sales);
                                        $("#date").val(date);
                                        $("#index").html(index);//这条数据的下标
                                        for (var i=0;i<data.length;i++){
                                            var p=$("<p style=\"display: inline-block\"class='shoe'><span class='shoeSize'>"+data[i].size+"</span>码<span class='shoeColor'>"+data[i].color+"</span>:<input type=\"text\"value=\""+data[i].count+"\"style=\"width: 80px\" class='shoeCount'></p>")
                                            $("#countDiv").append(p)
                                        }
                                        $("#login").show();
                                        $("#login2").show();
                                    }

                                }
                            })
                        })  //单击编制标签
                        $("#cancel").click(function () {  //单击关闭修改盒子标签
                            $("#countDiv").children().remove();//清除数据  防止叠加
                            $("#login").hide();
                            $("#login2").hide();
                        }) //单击关闭修改盒子标签
                        $("#return").click(function () {  //单击返回按钮
                            $("#countDiv").children().remove();//清除数据  防止叠加
                            $("#login").hide();
                            $("#login2").hide();
                        })//单击返回按钮
                        $("#update").click(function () {  //单击修改框保存按钮
                            var title= $("#title").val();//标题
                            var id= $("#id").val()//id
                            var price= $("#price").val();//价格
                            var json=new Array();//鞋码
                            /* var count=new Array();//数量*/
                            for (var i=0;i<$(".shoe").length;i++){
                                json[i]={'size':$(".shoeSize:eq("+i+")").text(),'color':$(".shoeColor:eq("+i+")").text(),'count':$(".shoeCount:eq("+i+")").val()};
                                /*count[i]=$(".shoeCount:eq("+i+")").val();*/
                            }
                            var shoeJson=JSON.stringify(json);
                            $.ajax({
                                url:"updateSpu",
                                type:"POST",
                                data:"id="+id+"&title="+title+"&price="+price+"&shoeJson="+shoeJson,
                                async: false,
                                success:function (data) {
                                    if (data=="true"){
                                        var index=$("#index").text();//获取这条数据的下标
                                        $(".title:eq("+index+")").html(title);
                                        $(".price:eq("+index+")").html(price);
                                        var sum=0
                                        for (var i=0;i<json.length;i++){
                                            sum+=json[i].count*1;
                                        }
                                        $(".count:eq("+index+")").html(sum);
                                        $("#countDiv").children().remove();//清除数据  防止叠加
                                        $("#login").hide();
                                        $("#login2").hide();
                                    }
                                }
                            })

                        })//单击修改框保存按钮


                        $("#Text1").change(function () { //修改文本框
                            changepage();
                        })
                        $("#spanFirst").click(function () {
                            first()
                        })
                        $("#spanPre").click(function () {
                            var  b=$("#Text1").val();
                            if (b>1){
                                pre()
                            } else {
                                preNoLink()
                            }

                        })
                        $("#spanNext").click(function () {//单击下一页
                            var a=$("#spanTotalPage").text();
                            var  b=$("#Text1").val();
                            if (b<a){
                                next()
                            }
                        })
                        $("#spanLast").click(function () { //尾页
                            last()
                        })

                        var theTable = document.getElementById("t_student");
                        var txtValue = document.getElementById("Text1").value;
                        function changepage() {
                            var txtValue2 = document.getElementById("Text1").value;
                            if (txtValue != txtValue2) {
                                if (txtValue2 > pageCount()) {

                                }
                                else if (txtValue2 <= 0) {

                                }
                                else if (txtValue2 == 1) {
                                    first();
                                }
                                else if (txtValue2 == pageCount()) {
                                    last();
                                }
                                else {
                                    hideTable();
                                    page = txtValue2;
                                    pageNum2.value = page;
                                    currentRow = pageSize * page;
                                    maxRow = currentRow - pageSize;
                                    if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
                                    for (var i = maxRow; i < currentRow; i++) {
                                        theTable.rows[i].style.display = '';
                                    }
                                    if (maxRow == 0) { preText(); firstText(); }
                                    showPage();
                                    nextLink();
                                    lastLink();
                                    preLink();
                                    firstLink();
                                }

                                txtValue = txtValue2;
                            }
                        }
                        //假分页

//获取对应控件
                        var totalPage = document.getElementById("spanTotalPage");//总页数
                        var pageNum = document.getElementById("spanPageNum");//当前页
                        var totalInfor = document.getElementById("spanTotalInfor");//记录总数
                        var pageNum2 = document.getElementById("Text1");//当前页文本框

                        var spanPre = document.getElementById("spanPre");//上一页
                        var spanNext = document.getElementById("spanNext");//下一页
                        var spanFirst = document.getElementById("spanFirst");//首页
                        var spanLast = document.getElementById("spanLast");//尾页
                        var pageSize = 8;//每页信息条数

                        var numberRowsInTable = theTable.rows.length-1;//表格最大行数

                        var page = 1;

//下一页
                        function next() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();
                                currentRow = pageSize * page + 1; //下一页的第一行
                                maxRow = currentRow + pageSize;    //下一页的一行
                                if (maxRow > numberRowsInTable) maxRow = numberRowsInTable+1;//如果计算中下一页最后一行大于实际最后一行行号

                                for (var i = currentRow; i < maxRow; i++) {
                                    theTable.rows[i].style.display = '';
                                }
                                page++;
                                pageNum2.value = page;
                                if (maxRow == numberRowsInTable) { //如果下一页的最后一行是表格的最后一行
                                    nextNoLink(); //下一页 和尾页 不点击
                                    lastNoLink();
                                }

                                showPage();//更新page显示
                                if (page == pageCount()) {//如果当前页是尾页
                                    nextNoLink();
                                    lastNoLink();
                                }

                                preLink();
                                firstLink();
                            }
                        }



//上一页
                        function pre() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();
                                page--;
                                pageNum2.value = page;
                                currentRow = pageSize * page + 1;//下一页的第一行
                                maxRow = currentRow - pageSize;//本页的第一行
                                if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;//如果计算中本页的第一行小于实际首页的第一行行号，则更正

                                for (var i = maxRow; i < currentRow; i++) {
                                    theTable.rows[i].style.display = '';
                                }
                                if (maxRow == 0) { preNoLink(); firstNoLink(); }
                                showPage();//更新page显示
                                if (page == 1) {
                                    firstNoLink();
                                    preNoLink();
                                }
                                nextLink();
                                lastLink();
                            }
                        }


//第一页
                        function first() {
                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();//隐藏所有行
                                page = 1;
                                pageNum2.value = page;
                                for (var i = 1; i < pageSize+1; i++) {//显示第一页的信息
                                    theTable.rows[i].style.display = '';
                                }
                                showPage();//设置当前页

                                firstNoLink();
                                preNoLink();
                                nextLink();
                                lastLink();
                            }
                        }


//最后一页
                        function last() {

                            if (pageCount() <= 1) {
                            }
                            else {
                                hideTable();//隐藏所有行
                                page = pageCount();//将当前页设置为最大页数
                                pageNum2.value = page;
                                currentRow = pageSize * (page - 1)+1;//获取最后一页的第一行行号
                                for (var i = currentRow; i < numberRowsInTable+1; i++) {//显示表格中最后一页信息
                                    theTable.rows[i].style.display = '';
                                }

                                showPage();
                                lastNoLink();
                                nextNoLink();
                                preLink();
                                firstLink();
                            }
                        }


                        function hideTable() {//隐藏表格内容
                            for (var i = 0; i < numberRowsInTable+1; i++) {
                                theTable.rows[i].style.display = 'none';
                            }
                            theTable.rows[0].style.display = '';//标题栏显示
                        }


                        function showPage() {//设置当前页数
                            pageNum.innerHTML = page;
                        }

                        function inforCount() {//设置总记录数
                            spanTotalInfor.innerHTML = numberRowsInTable;
                        }

//总共页数
                        function pageCount() {
                            var count = 0;
                            if (numberRowsInTable % pageSize != 0) count = 1;
                            return parseInt(numberRowsInTable / pageSize) + count;
                        }


//显示链接 link方法将相应的文字变成可点击翻页的  nolink方法将对应的文字变成不可点击的
                        function preLink() { spanPre.innerHTML = "<a href='javascript:void(0);'>上一页</a>"; }
                        function preNoLink(){ spanPre.innerHTML = "上一页"; }

                        function nextLink() {  spanNext.innerHTML = "<a href='javascript:void(0);'>下一页</a>"; }
                        function nextNoLink(){ spanNext.innerHTML = "下一页";}

                        function firstLink() { spanFirst.innerHTML = "<a href='javascript:void(0);'>首页</a>"; }
                        function firstNoLink(){ spanFirst.innerHTML = "首页";}

                        function lastLink() { spanLast.innerHTML = "<a href='javascript:void(0);'>尾页</a>"; }
                        function lastNoLink(){ spanLast.innerHTML = "尾页";}

//初始化表格
                        function hide() {
                            for (var i = pageSize + 1; i < numberRowsInTable+1 ; i++) {
                                theTable.rows[i].style.display = 'none';
                            }
                            theTable.rows[0].style.display = '';

                            inforCount();

                            totalPage.innerHTML = pageCount();
                            showPage();
                            pageNum2.value = page;

                            if (pageCount() > 1) {
                                nextLink();
                                lastLink();
                            }

                        }

                        hide();




                    }

                }
            })

        })//单击已下架
        $(".button-status").click(function () {
            var index=$(".button-status").index(this);
            var id=$(".listId:eq("+index+")").text();
            var title=$(".button-status:eq("+index+")").attr("title");//获取是上架还是下架
            if (title=="下架"){
                var status=2;
                $.ajax({
                    url:"updateSpustatus",
                    data:"id="+id+"&status="+status,
                    async:false,
                    success:function (data) {
                        var name=$("input[name=1]").val();
                        if (name=="全部"||name=="已售罄") {
                            $(".StatusId:eq("+index+")").html(2);
                            $(".status:eq("+index+")").html("已下架");
                            $(".status:eq("+index+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                            $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-up sj")
                            $(".sj:eq("+index+")").parent().attr("title","上架")
                        }else {
                            $(".spu:eq("+index+")").remove();
                            var a=$("#count").text();
                            $("#count").html(a-1)
                        }
                    }
                })
            } else if (title=="上架"){
                var status=$(".button-status:eq("+index+")").parent().prev().find(".StatusId").text();
                if (status==0){   //代表待上架  未有规格

                } else if (status==2) {   //代表是下架的 准备上架
                    var status=1;
                    $.ajax({
                        url:"updateSpustatus",
                        data:"id="+id+"&status="+status,
                        async:false,
                        success:function (data) {
                            var name=$("input[name=1]").val();
                            if (name=="全部"||name=="已售罄") {
                                $(".StatusId:eq("+index+")").html(1);
                                $(".status:eq("+index+")").html("已上架");
                                $(".status:eq("+index+")").attr("class","layui-btn layui-btn-danger  layui-btn-mini status")
                                $(".sj:eq("+index+")").attr("class","fa fa-arrow-circle-down sj")
                                $(".sj:eq("+index+")").parent().attr("title","下架")

                            }else {
                                $(".spu:eq("+index+")").remove()
                                var a=$("#count").text();
                                $("#count").html(a-1)
                            }

                        }
                    })
                }
            }

        })//单击下架图标
        $("#up").click(function () {    //单击批量上架
            var ids=new Array();
            var sum=$(".spu .layui-form-checked").not(".header").length; //获得选中数量
            /**
             * 获取选中的用户的id
             */
            for (var i=0;i<$(".spu .layui-form-checked").not(".header").length;i++){
                ids[i]=$(".spu .layui-form-checked:eq("+i+")").not(".header").parent().parent().find(".listId").text();
                var a=$(".spu .layui-form-checked:eq("+i+")").not(".header")
            }
            var statue=1;
            var json=JSON.stringify(ids);
            var leng=json.length;
            if (leng>0){
                $.ajax({
                    url: "allUpdateSpuStatus",
                    type: "POST",
                    data: "json=" + json+"&statue="+statue,
                    traditional: true,
                    async: false,
                    success: function (date) {
                        if (date>0){
                            var name=$("input[name=1]").val();
                            if (name=="全部"||name=="已售罄") {
                                for (var i=0;i<$(".spu .layui-form-checked").not(".header").length;i++){
                                    $(".StatusId:eq("+i+")").html(1);
                                    $(".status:eq("+i+")").html("已上架");
                                    $(".status:eq("+i+")").attr("class","layui-btn layui-btn-danger  layui-btn-mini status")
                                    $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-down sj")
                                    $(".sj:eq("+i+")").parent().attr("title","下架")
                                }
                                $(".spu .layui-form-checked").attr("class","layui-unselect layui-form-checkbox");
                                $(".header").attr("class","layui-unselect header layui-form-checkbox");
                            }else if (name=="在售中"||name=="已下架"){
                                var count=$("#count").text();
                                var a = $("#count").text();
                                if (date==count){
                                    $(".spu").remove();
                                    $(".gridItem").remove();
                                    $(".header").attr("class","layui-unselect header layui-form-checkbox");
                                    $("#count").html(a - date)
                                } else {
                                    for (var i = 0; i < $(".spu .layui-form-checked").not(".header").length; i++) {
                                        $(".spu:eq(" + i + ")").remove()
                                    }
                                    $(".spu .layui-form-checked").attr("class","layui-unselect layui-form-checkbox");
                                    $(".header").attr("class","layui-unselect header layui-form-checkbox");
                                    $("#count").html(a - date)
                                }
                            }
                        }
                    }
                })
            }
        })//单击批量上架
        $("#below").click(function () {    //单击批量下架架
            var ids=new Array();
            var sum=$(".spu .layui-form-checked").not(".header").length; //获得选中数量
            /**
             * 获取选中的用户的id
             */
            for (var i=0;i<$(".spu .layui-form-checked").not(".header").length;i++){
                ids[i]=$(".spu .layui-form-checked:eq("+i+")").not(".header").parent().parent().find(".listId").text();

            }
            var statue=2;
            var json=JSON.stringify(ids);
            var leng=json.length;
            if (leng>0){
                $.ajax({
                    url: "allUpdateSpuStatus",
                    type: "POST",
                    data: "json=" + json+"&statue="+statue,
                    traditional: true,
                    async: false,
                    success: function (date) {
                        if (date>0){
                            var name=$("input[name=1]").val();
                            if (name=="全部"||name=="已售罄"){
                                for (var i=0;i<$(".spu .layui-form-checked").not(".header").length;i++){
                                    $(".StatusId:eq("+i+")").html(2);
                                    $(".status:eq("+i+")").html("已下架");
                                    $(".status:eq("+i+")").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                                    $(".sj:eq("+i+")").attr("class","fa fa-arrow-circle-up sj")
                                    $(".sj:eq("+i+")").parent().attr("title","上架")
                                }
                                $(".spu .layui-form-checked").attr("class","layui-unselect layui-form-checkbox");
                                $(".header").attr("class","layui-unselect header layui-form-checkbox");
                                /* layui-unselect header layui-form-checkbox*/

                            }else if (name=="在售中"||name=="已下架"){
                                var count=$("#count").text();
                                var a = $("#count").text();
                                if (date==count){
                                    $(".spu").remove();
                                    $(".gridItem").remove();
                                    $(".header").attr("class","layui-unselect header layui-form-checkbox");
                                    $("#count").html(a - date)
                                } else {
                                    for (var i = 0; i < $(".spu .layui-form-checked").not(".header").length; i++) {
                                        $(".spu:eq(" + i + ")").remove()
                                    }
                                    $(".spu .layui-form-checked").attr("class","layui-unselect layui-form-checkbox");
                                    $(".header").attr("class","layui-unselect header layui-form-checkbox");
                                    $("#count").html(a - date)
                                }
                            }
                        }
                    }
                })
            }
        }) //单击批量下架架
        $(".update").click(function () {         //单击编制标签
            var index=$(".update").index(this);
            var id=$(".listId:eq("+index+")").text();//id
            var title=$(".title:eq("+index+")").text();//标题
            var price=$(".price:eq("+index+")").text();//价格
            var sales=$(".sales:eq("+index+")").text();//销量
            var date=$(".date:eq("+index+")").text();//创建时间

            $.ajax({
                url:"selectShoe",
                type:"POST",
                data:"id="+id,
                async: false,
                dataType:"JSON",
                success: function (data) {
                    if (data.length>0){
                        $("#id").val(id);
                        $("#title").val(title);
                        $("#price").val(price);
                        $("#sales").val(sales);
                        $("#date").val(date);
                        $("#index").html(index);//这条数据的下标
                        for (var i=0;i<data.length;i++){
                            var p=$("<p style=\"display: inline-block\"class='shoe'><span class='shoeSize'>"+data[i].size+"</span>码<span class='shoeColor'>"+data[i].color+"</span>:<input type=\"text\"value=\""+data[i].count+"\"style=\"width: 80px\" class='shoeCount'></p>")
                            $("#countDiv").append(p)
                        }
                        $("#login").show();
                        $("#login2").show();
                    }

                }
            })
        })  //单击编制标签
        $("#cancel").click(function () {  //单击关闭修改盒子标签
            $("#countDiv").children().remove();//清除数据  防止叠加
            $("#login").hide();
            $("#login2").hide();
        }) //单击关闭修改盒子标签
        $("#return").click(function () {  //单击返回按钮
            $("#countDiv").children().remove();//清除数据  防止叠加
            $("#login").hide();
            $("#login2").hide();
        })//单击返回按钮
        $("#update").click(function () {  //单击修改框保存按钮
            var title= $("#title").val();//标题
            var id= $("#id").val()//id
            var price= $("#price").val();//价格
            var json=new Array();//鞋码
            /* var count=new Array();//数量*/
            for (var i=0;i<$(".shoe").length;i++){
                json[i]={'size':$(".shoeSize:eq("+i+")").text(),'color':$(".shoeColor:eq("+i+")").text(),'count':$(".shoeCount:eq("+i+")").val()};
                /*count[i]=$(".shoeCount:eq("+i+")").val();*/
            }
            var shoeJson=JSON.stringify(json);
            $.ajax({
                url:"updateSpu",
                type:"POST",
                data:"id="+id+"&title="+title+"&price="+price+"&shoeJson="+shoeJson,
                async: false,
                success:function (data) {
                    if (data=="true"){
                        var index=$("#index").text();//获取这条数据的下标
                        $(".title:eq("+index+")").html(title);
                        $(".price:eq("+index+")").html(price);
                        var sum=0
                        for (var i=0;i<json.length;i++){
                            sum+=json[i].count*1;
                        }
                        $(".count:eq("+index+")").html(sum);
                        $("#countDiv").children().remove();//清除数据  防止叠加
                        $("#login").hide();
                        $("#login2").hide();
                    }
                }
            })

        })//单击修改框保存按钮
        $("#add").click(function () {
            location.href="html/upload2.jsp"
        })
        /*var url=document.referrer;
        alert(url)*/
    })
</script>

<div style="width: 90%;margin-left: 5%;margin-top: 0px">

    <xblock>
        <div style="display: inline-block"><input type="button" value="全部" style="height: 35px;width: 80px;background-color:#f2dede" id="all" name="1"><input type="button" value="在售中" style="height: 35px;width: 80px" id="sj" name="0"><input type="button" value="已售罄" style="height: 35px;width: 80px" id="sk"name="0"><input type="button" value="已下架" style="height: 35px;width: 80px" id="xj"name="0"></div>
        <%--  <button class="layui-btn layui-btn-danger"><i class="layui-icon"></i>批量删除</button>--%>
        <button class="layui-btn" id="up"><i class="fa fa-arrow-circle-up"></i>上架</button>
        <button class="layui-btn" id="below"><i class="fa fa-arrow-circle-down"></i>下架</button>
        <button class="layui-btn" id="add"><i class="layui-icon" ></i>新增商品</button>
        <span class="x-right" style="line-height:40px">共有数据：<span id="count">${list.size()}</span> 条</span>
    </xblock>

    <table class="layui-table" id="t_student">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>商品编号</th>
            <th>商品信息</th>
            <th>类型</th>
            <th>品牌</th>
            <th>价格</th>
            <th>库存</th>
            <th>销量</th>
            <th>创建时间</th>
            <th>状态</th>
            <th>操作</th>
        </thead>
        <tbody id="tbody">
      <%--  <c:forEach items="${list}" var="list" begin="0" end="${list.size()}" varStatus="status">
            <tr class="spu">
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
                </td>
                <td class="listId">${list.id}</td>
                <td>
                    <div style="width: 80px;height: 50px;float: left"><img src="${list.imgName}" alt=""style="max-width:100%;max-height:100%;"></div>
                    <div style="float: left;vertical-align:middle; padding-top: 20px" class='title'>${list.title}</div>
                </td>
                <td><span class="brandName">${list.brandName}</span></td>
                <td><span class="classification">${list.classification}</span></td>
                <td><span class="price">${list.price}</span></td>
                <td><span class="count">${list.count}</span><span style="color: red;display: none">(需补货)</span></td>
                <td><spam class="sales">${list.sales}</spam></td>
                <td ><span class="date">${list.date}</span></td>
                <td class="td-status">
                    <span class="layui-btn layui-btn-normal layui-btn-mini status">已上架</span><span style="display: none" class="StatusId">${list.status}</span></td>
                <td class="td-manage">
                    <a href="javascript:void(0);" class="button-status" title="">
                        <i class="sj"></i> &lt;%&ndash;arrow-circle-down下架&ndash;%&gt;
                    </a>
                    <a title="编辑"  class="update" href="javascript:;">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                        &lt;%&ndash;  <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">
                              <i class="layui-icon">&#xe640;</i>
                          </a>&ndash;%&gt;
                </td>
            </tr>
            <script>
                $(function () {
                    var count='${list.count}';
                    if (count<50){
                        $(".count:eq(${status.index})").css("color","red");
                        $(".count:eq(${status.index})").next().show();
                    }
                    var status=${list.status};
                    if (status==0){
                        $(".status:eq(${status.index})").html("待上架");
                        $(".status:eq(${status.index})").attr("class","layui-btn layui-btn-mini status")
                        $(".sj:eq(${status.index})").attr("class","fa fa-arrow-circle-up sj")
                        $(".sj:eq(${status.index})").parent().attr("title","上架")
                    } else if (status==1){
                        $(".status:eq(${status.index})").html("已上架");
                        $(".status:eq(${status.index})").attr("class","layui-btn layui-btn-danger layui-btn-mini status")
                        $(".sj:eq(${status.index})").attr("class","fa fa-arrow-circle-down sj")
                        $(".sj:eq(${status.index})").parent().attr("title","下架")
                    } else if(status==2){
                        $(".status:eq(${status.index})").html("已下架");
                        $(".status:eq(${status.index})").attr("class","layui-btn layui-btn-normal  layui-btn-mini status")
                        $(".sj:eq(${status.index})").attr("class","fa fa-arrow-circle-up sj")
                        $(".sj:eq(${status.index})").parent().attr("title","上架")
                    }
                })
            </script>
        </c:forEach>--%>
        </tbody>
    </table>
</div>
<%--<div class="page">
    <div>
        <a class="prev" href="selectPutaway?page=${pages-1}"><<</a>
        <a class="num" href="selectPutaway?page=1">首页</a>
        <span class="current">${pages}</span>
        <a class="num" href="selectPutaway?page=${sum}">末页</a>
        <a class="next" href="selectPutaway?page=${pages+1}">&gt;&gt;</a>
    </div>
</div>--%>
<%--<div class="gridItem" style="padding: 5px; width: 250px; float: left; text-align: left; height: 20px; font-size: 15px;margin-left: 100px" >
    共有 <span id="spanTotalInfor"></span> 条记录
    当前第<span id="spanPageNum"></span>页
    共<span id="spanTotalPage"></span>页
</div>
<div class="gridItem" style="margin-left:50px;  padding: 5px; width: 400px; float: left; text-align: center; height: 20px; vertical-align: middle; font-size: 15px;margin-left: 260px">
    <span id="spanFirst" >首页</span>
    <span id="spanPre">上一页</span>
    <span id="spanInput" style="margin: 0px; padding: 0px 0px 4px 0px; height:100%; ">
                第<input id="Text1" type="text" class="TextBox" onkeyup="changepage()"   style="height:20px; text-align: center;width:50px" />页
            </span>
    <span id="spanNext">下一页</span>
    <span  id="spanLast">尾页</span>
</div>

<script type="text/javascript" class="js">
    var theTable = document.getElementById("t_student");
    var txtValue = document.getElementById("Text1").value;
    function changepage() {
        var txtValue2 = document.getElementById("Text1").value;
        if (txtValue != txtValue2) {
            if (txtValue2 > pageCount()) {

            }
            else if (txtValue2 <= 0) {

            }
            else if (txtValue2 == 1) {
                first();
            }
            else if (txtValue2 == pageCount()) {
                last();
            }
            else {
                hideTable();
                page = txtValue2;
                pageNum2.value = page;

                currentRow = pageSize * page;
                maxRow = currentRow - pageSize;
                if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
                for (var i = maxRow; i < currentRow; i++) {
                    theTable.rows[i].style.display = '';
                }
                if (maxRow == 0) { preText(); firstText(); }
                showPage();
                nextLink();
                lastLink();
                preLink();
                firstLink();
            }

            txtValue = txtValue2;
        }
    }

</script>
<script type="text/javascript" src="../js/Pagging.js" class="js"></script>--%>
</body>
</html>
