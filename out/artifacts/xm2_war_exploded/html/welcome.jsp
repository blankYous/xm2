<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="../css/font.css">
        <link rel="stylesheet" href="../css/xadmin.css">
        <script src="../js/jquery.min.js"></script>
        <script src="../lib/layui/layui.js"></script>
        <script type="text/javascript" src="../js/xadmin.js"></script>
        <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
        <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

       <%-- <script src="../js/jquery-1.12.4.js"></script>
--%>
    </head>
    <script type="text/javascript">
        $(function () {
            setInterval("date.innerHTML=new Date().toLocaleString()",1000);
            var a=document.referrer;
            if (a=="http://localhost:8080/indexht.jsp"){
                window.location.href="/bigData";
            }
        })
    </script>
    <body>
    <div class="x-body layui-anim layui-anim-up">
        <blockquote class="layui-elem-quote">欢迎管理员：
            <%
                //String name=request.getParameter("name");
            String name=(String)application.getAttribute("name");
            %>
            <span class="x-red"><%=name%></span >！当前时间:<span id="date"></span>
        </blockquote>
        <style>
            /* 这段样式只是用于演示 */
            .layui-progress{margin: 20px 0;}
        </style>

        <fieldset class="layui-elem-field">
            <legend>数据统计</legend>
            <div class="layui-field-box">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body">
                            <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside" lay-arrow="none" style="width: 100%; height: 90px;">
                                <div carousel-item="">
                                    <ul class="layui-row layui-col-space10 layui-this">
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>交易次数</h3>
                                                <p>
                                                    <cite>${dayCount}</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>总交易次数(月)</h3>
                                                <p>
                                                    <cite>${monthCount}</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>交易金额</h3>
                                                <p>
                                                    <cite>${daySum}</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>总交易金额(月)</h3>
                                                <p>
                                                    <cite>${monthSum}</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>其他</h3>
                                                <p>
                                                    <cite>0</cite></p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>

        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">鞋日销量</div>
                <div class="layui-card-body">
                 <span>adidas:</span><div class="layui-progress layui-progress-big"style="width: 80%;left:60px;margin-top:-14px">
                     <div class="layui-progress-bar layui-bg-red" lay-percent="${adidas}%"><span style="display: none" class="span">${adidas}</span></div>
                    </div>
                    <span>耐克:</span> <div class="layui-progress layui-progress-big"style="width: 80%;left:60px;margin-top:-14px">
                        <div class="layui-progress-bar layui-bg-orange" lay-percent="${Nike}%"><span style="display: none" class="span" >${Nike}</span></div>
                    </div>

                    <span>彪马:</span><div class="layui-progress layui-progress-big"style="width: 80%;left:60px;margin-top:-14px">
                        <div class="layui-progress-bar layui-bg-green" lay-percent="${biaoma}%"><span style="display: none" class="span">${biaoma}</span></div>
                    </div>

                    <span>亚瑟士:</span><div class="layui-progress layui-progress-big"style="width: 80%;left:60px;margin-top:-14px">
                        <div class="layui-progress-bar layui-bg-blue" lay-percent="${yaseshi}%"><span style="display: none" class="span">${yaseshi}</span></div>
                    </div>

                    <span>匡威:</span> <div class="layui-progress layui-progress-big"style="width: 80%;left:60px;margin-top:-14px">
                        <div class="layui-progress-bar layui-bg-cyan" lay-percent="${kuangwei}%"><span style="display: none "class="span">${kuangwei}</span></div>
                    </div>

                    <span>李宁:</span> <div class="layui-progress layui-progress-big"style="width: 80%;left:60px;margin-top:-14px">
                        <div class="layui-progress-bar" lay-percent="${lining}%"><span style="display: none" class="span">${lining}</span></div>
                    </div>
                    <span>卡米:</span> <div class="layui-progress layui-progress-big"style="width: 80%;left:60px;margin-top:-14px">
                        <div class="layui-progress-bar layui-bg-green" lay-percent="${kami}%" style="display: none" class="span"><span>${kami}</span></div>
                    </div>
                    <span>NB:</span><div class="layui-progress layui-progress-big"style="width: 80%;left:60px;margin-top:-14px">
                        <div class="layui-progress-bar layui-bg-cyan" lay-percent="${NB}%"><span style="display: none" class="span">${NB}</span></div>
                    </div>

                </div>
            </div>
        </div>
    </body>
    <script src="../lib/layui/layui.js"></script>
    <script>
        $(function () {
            $(".layui-progress").hover(function () {
                var index=$(".layui-progress").index(this);
                $(".span:eq("+index+")").show()
            },function () {
                var index=$(".layui-progress").index(this);
                $(".span:eq("+index+")").hide()

            })
        })
        layui.config({
            base: '../../../../layuiadmin/' //静态资源所在路径
        }).extend({
            index: 'lib/index' //主入口模块
        }).use(['index'], function(){
            var $ = layui.$
                ,admin = layui.admin
                ,element = layui.element
                ,router = layui.router();

            element.render('progress');

            //触发事件
            var active = {
                setPercent: function(){
                    //设置50%进度
                    element.progress('component-progress-demo', '50%')
                }
                ,loading: function(othis){
                    var DISABLED = 'layui-btn-disabled';
                    if(othis.hasClass(DISABLED)) return;

                    //模拟loading
                    var n = 0, timer = setInterval(function(){
                        n = n + Math.random()*10|0;
                        if(n>100){
                            n = 100;
                            clearInterval(timer);
                            othis.removeClass(DISABLED);
                        }
                        element.progress('component-progress-demo', n+'%');
                    }, 300+Math.random()*1000);

                    othis.addClass(DISABLED);
                }
            };

            $('#LAY-component-progress .site-demo-active').on('click', function(){
                var othis = $(this), type = $(this).data('type');
                active[type] ? active[type].call(this, othis) : '';
            });

        });
    </script>
</html>