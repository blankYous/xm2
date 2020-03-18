<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="entity.Blank" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  
  <head>
    <meta charset="UTF-8">
    <title>欢迎页面-L-admin1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <style>
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
  </style>
  <body class="layui-anim layui-anim-up" style="position: relative;">

<%--  提示框--%>
  <div style="position:absolute;background-color: #000000;opacity: 0.5;z-index: 998;height: 100%;width: 100%;display: none" id="bj"></div>
  <div style="position:fixed;left:750px;top:300px;background-color: #ffffff;width: 300px;height:200px;z-index:999;text-align: center;border: 1px #0a0a0a solid;display:none;"id="tsk">
    <div style="padding-left: 280px;background-color: #A9A9A9;width: 20px"><button type="button"style="width: 20px;background-color: #A9A9A9;opacity: 0.5" id="gb"><span class="close"></span></button></div>
    <div style="margin-top:59px;font-size: 20px;color: red" id="tsy">确定要冻结吗？？</div>
    <div style="margin-top:58px;">
      <p>
      <input style="width: 150px;height: 40px;margin-right: 0px"type="button"value="确定"class="button"><input style="width: 150px;height: 40px;margin-left: 0px"type="button"value="取消" class="button"></p>
    </div>
  </div>



    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
      <a class="layui-btn layui-btn-primary layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:38px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so">
          <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
          <button class="layui-btn select" type="button"  <%--lay-submit="" lay-filter="sreach"--%>><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      <xblock>
        <button class="layui-btn layui-btn-danger allDelete" <%--onclick="delAll()"--%> type="button"><i class="layui-icon"></i>批量删除</button>
          <span class="x-right" style="line-height:40px">共有数据：<span id="size">${list.size()}</span>条</span>
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>ID</th>
            <th>用户账号</th>
            <th>用户名</th>
            <th>性别</th>
            <th>生日</th>
            <th>地址</th>
            <th>状态</th>
            <th>操作</th></tr>
        </thead>
        <tbody id="tbody">
        <%List<Blank>lists= (List<Blank>) request.getAttribute("lists");%>
        <c:forEach  items="${list}" var="list"  varStatus="status">
          <tr class="check">
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>${status.index+1}<span style="display:none;" class="userId">${list.id}</span></td>
            <td>${list.account}</td>
            <td>${list.userName}</td>
            <td>${list.userSex}</td>
            <td>${list.birthday}</td>
            <td>${list.address}</td>
            <td class="td-status">
              <span class="layui-btn layui-btn-normal layui-btn-sm status"></span><span class="statusid" style="display: none">${list.status}</span></td>
            <td class="td-manage">
              <a <%--onclick="member_stop(this,'10001')"--%> class="layui-btn layui-btn-sm layui-btn-primary state" href="javascript:;"  title="启用">
                启用
                </a>
                    <%--   <a title="编辑" class="layui-btn layui-btn-sm layui-btn-normal"  onclick="x_admin_show('编辑','html/member-edit.jsp',600,400)" href="javascript:;">
                         编辑
                       </a>
                       <a  class="layui-btn layui-btn-sm layui-btn-warm" onclick="x_admin_show('修改密码','member-password.jsp',600,400)" title="修改密码" href="javascript:;">
                         修改密码
                       </a>--%>
              <a title="删除" class="layui-btn layui-btn-sm layui-btn-danger delete" <%--onclick="member_del(this,'要删除的id')"--%> href="javascript:;">
                删除
              </a>
            </td>
          </tr>

          <script>
            $(function () {
              var index=${status.index};
              var statusid=$(".statusid:eq("+index+")").text();
              if (statusid==0){
                $(".status:eq("+index+")").html("已启用");
                $(".status:eq("+index+")").attr("class","layui-btn layui-btn-sm status")//绿色已启用
                $(".state:eq("+index+")").text("冻结");
                $(".state:eq("+index+")").attr({"class":"layui-btn layui-btn-sm layui-btn-primary state","title":"冻结"});//灰色冻结
              }else if (statusid==1){
                $(".status:eq("+index+")").html("已冻结");
                $(".status:eq("+index+")").attr("class","layui-btn layui-btn-sm layui-btn-normal  status");//蓝色已冻结
                $(".state:eq("+index+")").text("启用");
                $(".state:eq("+index+")").attr({"class":"layui-btn layui-btn-sm  state","title":"启用"});//绿色启用
              }
            })
          </script>
          </c:forEach>
        </tbody>
      </table>
      <script>
          $(function () {

            $(".state").click(function () {     //单击状态按钮
              var index=$(".state").index(this);
              var text=$(".state:eq("+index+")").text();
              var tj="";
              if (text=="启用"){
                $("#bj").show();
                $("#tsk").show();
                $("#tsy").html("确定要启动吗？？？");

                $(".button").click(function () {
                  var a=$(".button").index(this);
                  if ($(".button:eq("+a+")").val()=="确定") {
                    var status = 0;
                    var id=undefined;
                    id=$(".userId:eq("+index+")").text();
                    $.ajax({
                      url: "updateUserStatus",
                      type: "POST",
                      data: "id=" + id + "&status=" + status,
                      async: false,
                      success: function (date) {
                        tj = date
                      }
                    })
                    if (tj=="qy") {
                      $(".status:eq(" + index + ")").html("已启用");
                      $(".status:eq(" + index + ")").attr("class", "layui-btn layui-btn-sm status")//绿色已启用
                      $(".state:eq(" + index + ")").text("冻结");
                      $(".state:eq(" + index + ")").attr({"class": "layui-btn layui-btn-sm layui-btn-primary state", "title": "冻结"});//灰色冻结
                      $("#bj").hide();
                      $("#tsk").hide();
                    }
                  }else  if ($(".button:eq("+a+")").val()=="取消"){
                    index=undefined
                    id=undefined;
                    $("#bj").hide();
                    $("#tsk").hide();
                  }
                })

              }else if (text=="冻结") {
                $("#bj").show();
                $("#tsk").show();
                $("#tsy").html("确定要冻结吗？？？");
                $(".button").click(function () {
                  var a=$(".button").index(this);
                  if ($(".button:eq("+a+")").val()=="确定") {
                    var status = 1;
                    var id=undefined;
                    id=$(".userId:eq("+index+")").text();
                    $.ajax({
                      url: "updateUserStatus",
                      type: "POST",
                      data: "id=" + id + "&status=" + status,
                      async: false,
                      success: function (date) {
                        tj = date
                      }
                    })
                    if (tj=="dj") {
                      $(".status:eq("+index+")").html("已冻结");
                      $(".status:eq("+index+")").attr("class","layui-btn layui-btn-sm layui-btn-normal  status");//蓝色已冻结
                      $(".state:eq("+index+")").text("启用");
                      $(".state:eq("+index+")").attr({"class":"layui-btn layui-btn-sm  state","title":"启用"});//绿色启用
                      $("#bj").hide();
                      $("#tsk").hide();
                    }
                  }else  if ($(".button:eq("+a+")").val()=="取消"){
                    index=undefined
                    id=undefined;
                    $("#bj").hide();
                    $("#tsk").hide();
                  }
                })
              }
            })

            $(".delete").click(function () {  //删除
              var index=$(".delete").index(this);
              var tj="";
              $("#bj").show();
              $("#tsk").show();
              $("#tsy").html("确定要删除吗？？？");
              $(".button").click(function () {
                if ($(this).val()=="确定") {
                  var id=undefined;
                  id=$(".userId:eq("+index+")").text();
                  $.ajax({
                    url: "deleteUser",
                    type: "POST",
                    data: "id=" + id,
                    async: false,
                    success: function (date) {
                      tj = date
                    }
                  })
                  if (tj=="true") {
                    $(".delete:eq("+index+")").parent().parent().remove();
                    var size=$("#size").text();
                    $("#size").html(size-1);
                    $("#bj").hide();
                    $("#tsk").hide();
                  }
                }else  if ($(this).val()=="取消"){
                  index=undefined
                  id=undefined;
                  $("#bj").hide();
                  $("#tsk").hide();
                }
              })
            })


            $(".allDelete").click(function () {  //批量删除
              var tj="";
              var ids=new Array();
              var sum=$(".check .layui-form-checked").length; //获得选中数量
          /**
           * 获取选中的用户的id
           */
                for (var i=0;i<$(".check .layui-form-checked").not(".header").length;i++){
                    ids[i]=$(".check .layui-form-checked:eq("+i+")").not(".header").parents("tr").children("td").find(".userId").text();
                }
                var json=JSON.stringify(ids);
              if (json.length>0){
                $.ajax({
                  url: "allDeleteUser",
                  type: "POST",
                  data: "json=" + json,
                  traditional: true,
                  async: false,
                  success: function (date) {
                    tj = date
                  }
                })
                if (tj=="true"){
                    var size=$("#size").text();
                    $("#size").html(size-sum);
                  for (var i=0;i<json.length;i++){
                    $(".layui-form-checked").parents("tr").remove();
                  }
                }
              }
            })
              $("#gb").click(function () {   //提示框关闭按钮
                  $("#bj").hide();
                  $("#tsk").hide();
              })

              $(".select").click(function () {    //模糊搜索
                    var userName=$(".layui-input").val();
                /* location.href="userSeek?userName="+userName*/
                  location.href="allUser?userName="+userName

              })

        })
      </script>
      <div class="page">
        <div>
            <c:set var="min" value="${page<=1}"/>
            <c:set var="max" value="${page>=count}"/>
            <c:choose>
                <c:when test="${min}">
                    <a href="javascript:void(0)/*alert('已经是第一页了')*/" style="color: gray"><<<</a>
                    <a href="javascript:void(0)/*alert('已经是第一页了')*/" style="color: gray">首页</a>
                </c:when>
                <c:otherwise>
                    <a class="prev" href="allUser?page=${page-1}">&lt;&lt;</a>
                    <a class="num" href="allUser?page=1">首页</a>
                </c:otherwise>
            </c:choose>
            <span class="current">${page}</span>
            <c:choose>
                <c:when test="${max}">
                    <a href="javascript:void(0)/*alert('已经是最后一页了')*/" style="color: gray">末页</a>
                    <a href="javascript:void(0)/*alert('已经是最后一页了')*/" style="color: gray">>>></a>
                </c:when>
                <c:otherwise>
                    <a class="num" href="allUser?page=${count}">末页</a>
                    <a class="next" href="allUser?page=${page+1}">&gt;>></a>
                </c:otherwise>
            </c:choose>



        </div>
      </div>

    </div>




    <script>
     /* layui.use('laydate', function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });*/

       /*用户-停用*/
      /*function member_stop(obj,id){
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
*/
     /* /!*用户-删除*!/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }



      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }*/
    </script>

  </body>

</html>