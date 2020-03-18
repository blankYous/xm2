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
    <script src="js/jquery-1.12.4.js"></script>

                <script src="js/jquery-1.12.4.js?rd=<%=Math.random()%>"></script>
                <script type="text/javascript">
                    $(function () {
                        $("#myaccountr-navbar li").click(function () {
                            var index= $("#myaccountr-navbar li").index(this);
                            $("#myaccountr-navbar li:eq("+index+")").attr("class","is-active").siblings().attr("class"," ");
                        })
                    })
                </script>
<%--            </div>--%>
<%--            <div class="myaccount-right">--%>
                <div class="myaccount-rig-left float-clearfix" style="width: 100%;height: 100%">
                    <div class="myaccount-box personal-info">
                        <div class="memeber-box">
                            <div class="myaccount-tit float-clearfix">
                                <h3 class="myaccount-tit-con">账户信息</h3>
                            </div>
                            <div class="myaccount-data">
                                <div style="line-height: 3em">
                                    <p><span>账号：<span id="account">${user}</span></span></p>
                                    <a class="modify e-modify-password-setting" id="pwd">修改密码<i class="icon modify-icon"></i></a>  &nbsp;
                                    &nbsp; <a id="quit">退出</a>
                                </div>
                                <script src="js/jquery-1.12.4.js"type="text/javascript"></script>
                                <script>
                                    $(function () {

                                        $("#pwd").click(function () {
                                            $("#pwds").show();
                                        })
                                        //取消修改
                                        $(".btn-cancel").click(function () {
                                            var index = $(".btn-cancel").index(this);
                                            $(".personal-data-modify:eq(" + index + ")").hide();

                                        })

                                        /*$.fn.toggle = function (fn, fn2) {
                                            var args = arguments, guid = fn.guid || $.guid++, i = 0,
                                                toggle = function (event) {
                                                    var lastToggle = ($._data(this, "lastToggle" + fn.guid) || 0) % i;
                                                    $._data(this, "lastToggle" + fn.guid, lastToggle + 1);
                                                    event.preventDefault();
                                                    return args[lastToggle].apply(this, arguments) || false;
                                                };
                                            toggle.guid = guid;
                                            while (i < args.length) {
                                                args[i++].guid = guid;
                                            }
                                            return this.click(toggle);
                                        };*/
                                        var a=0;
                                        //文本框切换密码框
                                        $(".eye-view").click(function () {
                                            if (a%2==0){
                                                var index = $(".eye-view").index(this);
                                                $(".eye-view:eq(" + index + ")").attr("class", "eye-view events-eye")
                                                $(".eye-view:eq(" + index + ")").prev().attr("type", "text")
                                            }else {
                                                var index = $(".eye-view ").index(this);
                                                $(".eye-view:eq(" + index + ")").attr("class", "eye-view eye-hide events-eye")
                                                $(".eye-view:eq(" + index + ")").prev().attr("type", "password")
                                            }
                                            a++;

                                        })

                                        $("#quit").click(function () {  //退出
                                            var user = "";
                                            var tj = null;
                                            $("#cg").show(300)
                                            $("#cgs").show()
                                            $(".bs").click(function () {
                                                if ($(this).html() == "确定") {
                                                    $.ajax({
                                                        url: "quit",
                                                        type: "POST",
                                                        data: "user=" + user,
                                                        async: false,
                                                        success: function (date) {
                                                            tj = date
                                                        }
                                                    })
                                                    if (tj == 1) {
                                                        window.parent.location.href = "logins.jsp";
                                                    }
                                                } else {
                                                    $("#cg").hide()
                                                    $("#cgs").hide()
                                                }
                                            })
                                        })
                                    })
                                </script>
                                <div class="personal-data-modify" id="pwds">
                                    <div class="form-group">
                                        <label class="control-label">旧密码</label>
                                        <div class="form-input">
                                            <input  type="password" id="oldpassword">
                                            <div class="eye-view eye-hide events-eye"><i class="icon fa-eye-slash"></i></div>
                                            <div class="msg-block">
                                                <i class="icon msg-icon"></i>
                                                <span>旧密码错误，请重新输入</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">新密码</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <div class="form-input placeholder-place">
                                            <input placeholder="至少6个字符" type="password" id="password">
                                            <div class="eye-view eye-hide events-eye"><i class="icon fa-eye-slash"></i></div>
                                            <div class="msg-block">
                                                <i class="icon msg-icon"></i>
                                                <span>至少6个字符</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">确认新密码</label>
                                        <div class="form-input">
                                            <input placeholder="" type="password" id="repassword">
                                            <div class="eye-view eye-hide events-eye"><i class="icon fa-eye-slash"></i></div>
                                            <div class="msg-block">
                                                <i class="icon msg-icon"></i>
                                                <span>俩次输入不一致</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-group-btn account-btn  float-clearfix">
                                        <a class="btn btn-blue " id="editPassword"><p style="margin-top: -5px;font-size: 18px">保存</p></a>
                                        <a class="gl-cta gl-cta--primary gl-cta--secondary btn-cancel" id="cancelEdit"><span>取消修改</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script>
                            $(function () {
                                var former=null;//接收旧密码返回的值 true/false
                                var fresh=null;//新密码返回的值
                                var refresh=null;//确认密码返回的值
                                //旧密码
                                $("#oldpassword").blur(function () {
                                    var tj=null;
                                    var oldpassword=$("#oldpassword").val();
                                    var account=$("#account").text();
                                    $.ajax({
                                        url:"selectpwd",
                                        type:"POST",
                                        /*  data:"account="+account,*/
                                        async: false,
                                        success: function (date) {
                                            tj=date
                                        }
                                    })

                                    if (tj==oldpassword){
                                        former=true;
                                        $("#oldpassword").next().next().hide();
                                    } else {
                                        former=false;
                                        $("#oldpassword").next().next().show();
                                    }
                                })
                                //新密码
                                var pwd=null;
                                $("#password").blur(function () {
                                    pwd=$(this).val();
                                    if (pwd==""||pwd.length<6){
                                        fresh=false;
                                        $("#password").next().next().show();
                                    }else {
                                        fresh=true;
                                        $("#password").next().next().hide();
                                    }

                                })
                                //确认密码
                                $("#repassword").blur(function () {
                                    var repwd=$(this).val();
                                    if (repwd==""||repwd!=pwd){
                                        refresh=false;
                                        $("#repassword").next().next().show();
                                    }else {
                                        refresh=true;
                                        $("#repassword").next().next().hide();
                                    }

                                })

                                //修改密码保存
                                $("#editPassword").click(function () {
                                    var  t=null;
                                    if (former==true&&fresh==true&&refresh==true){
                                        $.ajax({
                                            url:"updatePwd",
                                            type:"POST",
                                            data:"pwd="+pwd,
                                            async: false,
                                            success: function (date) {
                                                t=date
                                            }
                                        })

                                        if (t=="true"){
                                            $(".personal-data-modify:eq(0)").hide();
                                        }

                                    }
                                })

                            })
                        </script>
                        <div class="memeber-box">
                            <div class="myaccount-tit float-clearfix">
                                <h3>个人信息</h3>
                            </div>
                            <div class="myaccount-data">
                                <div style="line-height: 3em ">
                                    <p><span>姓名：${ message.get(0).getUserName()}</span></p>
                                    <p><span>性别：<samp id="sex">${ message.get(0).getUserSex()}</samp></span></p>
                                    <p><span>生日：<samp id="birthday">${ message.get(0).getBirthday()}</samp></span></p>
                                    <p><span>省市/城市：<samp id="address">${message.get(0).getAddress()}</samp></span><span id="provincesAndCities"></span></p>
                                    <a class="btn btn-blue gl-cta gl-cta--primary gl-cta--center color-bright-blue btn-modify" id="xg" ><div style="margin-top: -10px;">修改<span class="gl-icon icon-arrow-right-long gl-cta__icon icon--size-l"></span></div></a>
                                </div>
                                <script src="js/jquery-1.12.4.js"></script>
                                <script type="text/javascript">
                                    $(function () {
                                        $("#xg").click(function () {  //单机修改
                                            var sex=$("#sex").text();
                                            var birthday=$("#birthday").text();
                                            var birthday2=new Array();
                                            var addres=$("#address").text();
                                            var addres2=new Array();

                                            if (sex!=""&&sex=="男"){
                                                $(".sex:eq(0)").css({border:"2px #1A1115 solid",color:"1A1115"}).siblings("div").css({border:"2px  #A9A9A9 solid",color:" #A9A9A9"});
                                            } else if (sex!=""&&sex=="女") {
                                                $(".sex:eq(1)").css({border:"2px #1A1115 solid",color:"1A1115"}).siblings("div").css({border:"2px  #A9A9A9 solid",color:" #A9A9A9"});
                                            }
                                            if (birthday!=""){
                                                birthday2=birthday.split("-");
                                                $("#year").text(birthday2[0]);
                                                $("#month").text(birthday2[1]);
                                                $("#day").text(birthday2[2]);
                                            }
                                            if (addres!=""){
                                                addres2=addres.split("-");
                                                $("#province2").text(addres2[0]);
                                                $("#city2").text(addres2[1]);
                                            }
                                            $("#member-personal").show()
                                        })
                                    })
                                </script>

                                <div class="personal-data-modify" id="member-personal">
                                    <div class="form-group">
                                        <label class="control-label">姓名</label>
                                        <div class="form-input">
                                            <div id="blankValue" style="display:none;" value="&nbsp;">空&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格空&nbsp;格</div>
                                            <input placeholder="" type="text" value="${ message.get(0).getUserName()}" id="nickName">
                                            <div class="msg-block">
                                                <i class="icon msg-icon"></i>
                                                <span>密码不能为空</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div>
                                        <label >性别</label>
                                        <br>
                                        <div style="width: 150px;height: 35px ;border: 1px #A9A9A9 solid;padding-top: 8px; padding-left :70px;display:inline-block;color:#A9A9A9 " class="sex">男</div>&nbsp;<div style="width: 150px;height: 35px ;border: 1px #A9A9A9 solid;padding-top: 8px;text-align: center;display:inline-block;color:#A9A9A9"class="sex">女</div>
                                        <span style="display: none" id="span">${ message.get(0).getUserSex()}</span>
                                    </div>
                                    <script>
                                        $(function () {
                                            $(".sex").click(function () {
                                                var index=$(".sex").index(this);
                                                var sex=$(".sex:eq("+index+")").text();
                                                $("#span").html(sex);
                                                $(".sex:eq("+index+")").css({border:"2px #1A1115 solid",color:"1A1115"}).siblings("div").css({border:"2px  #A9A9A9 solid",color:" #A9A9A9"});
                                            })
                                        })
                                    </script>

                                    <div class="form-group">
                                        <label class="control-label"><span>生日</span></label>
                                        <form name="form">
                                            <select name="year" onChange="yearChange(this.value)" id="year2">
                                                <option value="0" selected id="year">-请选择-</option>
                                            </select>年
                                            <select name="month" onChange="monthChange(this.value)" id="month2">
                                                <option value="0" selected id="month">-请选择-</option>
                                            </select>月
                                            <select name="day" id="day2">
                                                <option value="0" selected id="day">-请选择-</option>
                                            </select>日
                                        </form>
                                    </div>
                                    <%--联动--%>
                                    <script>
                                        //网页加载时初始化年月

                                        /**
                                         * 年份发生变化时进行联动
                                         * @param year
                                         */
                                        function yearChange(year)
                                        {
                                            //获得下拉列表中月份
                                            var month = document.form.month.options[document.form.month.selectedIndex].value;
                                            if (month == "0") {
                                                var opt = document.form.day;
                                                dayOptionsClear(opt);
                                                return;
                                            }
                                            if (month == 2 && IsPrimYear(str)) {
                                                m[month - 1]=29;
                                            }
                                            writeDay(m[str - 1]);
                                        }

                                        /**
                                         *根据月份的更改对天数列表联动
                                         */
                                        function monthChange(month)
                                        {
                                            //获得年份，selectedIndex当前被选择的下标
                                            var Y= document.form.year.options[document.form.year.selectedIndex].value;
                                            if (Y== "0") {
                                                var opt = document.form.day;
                                                dayOptionsClear(opt);
                                            }
                                            if (month == 2 && IsPrimYear(Y)){
                                                m[month - 1]=29;
                                            }
                                            writeDay(m[month - 1]);
                                        }

                                        /**
                                         * 根据参数（当月的天数）添加天数的下拉列表
                                         * @param day_number
                                         */
                                        function writeDay(day_number) {
                                            var opt = document.form.day;
                                            dayOptionsClear(opt);
                                            for (var i = 1; i < (day_number + 1); i++)
                                                opt.options.add(new Option(i, i));
                                        }

                                        /**
                                         * 判断是否为闰年
                                         * @param year
                                         * @returns {boolean}
                                         * @constructor
                                         */
                                        function IsPrimYear(year)
                                        {
                                            return (0 == year % 4 && (year % 100 != 0 || year % 400 == 0));
                                        }

                                        //清空天数的下拉列表
                                        function dayOptionsClear(opt) {
                                            opt.options.length = 1;
                                        }

                                        //省级联动

                                        var jsonList=[
                                            {"provice":"北京市","city":["东城区", "西城区", "朝阳区", "丰台区", "石景山区", "海淀区", "门头沟区", "房山区", "通州区", "顺义区", "昌平区", "大兴区", "怀柔区", "平谷区", "密云区", "延庆区"]},
                                            {"provice":"天津市","city":["和平区", "河东区", "河西区", "南开区", "河北区", "红桥区", "东丽区", "西青区", "津南区", "北辰区", "武清区", "宝坻区", "滨海新区", "宁河区", "静海区", "蓟州区"]},
                                            {"provice":"河北省","city":["石家庄市", "唐山市", "秦皇岛市", "邯郸市", "邢台市", "保定市", "张家口市", "承德市", "沧州市", "廊坊市", "衡水市"]},
                                            {"provice":"山西省","city":["太原市", "大同市", "阳泉市", "长治市", "晋城市", "朔州市", "晋中市", "运城市", "忻州市", "临汾市", "吕梁市"]},
                                            {"provice":"内蒙古自治区","city":["呼和浩特市", "包头市", "乌海市", "赤峰市", "通辽市", "鄂尔多斯市", "呼伦贝尔市", "巴彦淖尔市", "乌兰察布市", "兴安盟", "锡林郭勒盟", "阿拉善盟"]},
                                            {"provice":"辽宁省","city":["沈阳市", "大连市", "鞍山市", "抚顺市", "本溪市", "丹东市", "锦州市", "营口市", "阜新市", "辽阳市", "盘锦市", "铁岭市", "朝阳市", "葫芦岛市"]},
                                            {"provice":"吉林省","city":["长春市", "吉林市", "四平市", "辽源市", "通化市", "白山市", "松原市", "白城市", "延边朝鲜族自治州"]},
                                            {"provice":"黑龙江省","city":["哈尔滨市", "齐齐哈尔市", "鸡西市", "鹤岗市", "双鸭山市", "大庆市", "伊春市", "佳木斯市", "七台河市", "牡丹江市", "黑河市", "绥化市", "大兴安岭地区"]},
                                            {"provice":"上海市","city":["黄浦区", "徐汇区", "长宁区", "静安区", "普陀区", "虹口区", "杨浦区", "闵行区", "宝山区", "嘉定区", "浦东新区", "金山区", "松江区", "青浦区", "奉贤区", "崇明区"]},
                                            {"provice":"江苏省","city":["南京市", "无锡市", "徐州市", "常州市", "苏州市", "南通市", "连云港市", "淮安市", "盐城市", "扬州市", "镇江市", "泰州市", "宿迁市"]},
                                            {"provice":"浙江省","city":["杭州市", "宁波市", "温州市", "嘉兴市", "湖州市", "绍兴市", "金华市", "衢州市", "舟山市", "台州市", "丽水市"]},
                                            {"provice":"安徽省","city":["合肥市", "芜湖市", "蚌埠市", "淮南市", "马鞍山市", "淮北市", "铜陵市", "安庆市", "黄山市", "滁州市", "阜阳市", "宿州市", "六安市", "亳州市", "池州市", "宣城市"]},
                                            {"provice":"福建省","city":["福州市", "厦门市", "莆田市", "三明市", "泉州市", "漳州市", "南平市", "龙岩市", "宁德市"]},
                                            {"provice":"江西省","city":["南昌市", "景德镇市", "萍乡市", "九江市", "新余市", "鹰潭市", "赣州市", "吉安市", "宜春市", "抚州市", "上饶市"]},
                                            {"provice":"山东省","city":["济南市", "青岛市", "淄博市", "枣庄市", "东营市", "烟台市", "潍坊市", "济宁市", "泰安市", "威海市", "日照市", "莱芜市", "临沂市", "德州市", "聊城市", "滨州市", "菏泽市"]},
                                            {"provice":"河南省","city":["郑州市", "开封市", "洛阳市", "平顶山市", "安阳市", "鹤壁市", "新乡市", "焦作市", "濮阳市", "许昌市", "漯河市", "三门峡市", "南阳市", "商丘市", "信阳市", "周口市", "驻马店市", "济源市"]},
                                            {"provice":"湖北省","city":["武汉市", "黄石市", "十堰市", "宜昌市", "襄阳市", "鄂州市", "荆门市", "孝感市", "荆州市", "黄冈市", "咸宁市", "随州市", "恩施土家族苗族自治州", "仙桃市", "潜江市", "天门市", "神农架林区"]},
                                            {"provice":"湖南省","city":["长沙市", "株洲市", "湘潭市", "衡阳市", "邵阳市", "岳阳市", "常德市", "张家界市", "益阳市", "郴州市", "永州市", "怀化市", "娄底市", "湘西土家族苗族自治州"]},
                                            {"provice":"广东省","city":["广州市", "韶关市", "深圳市", "珠海市", "汕头市", "佛山市", "江门市", "湛江市", "茂名市", "肇庆市", "惠州市", "梅州市", "汕尾市", "河源市", "阳江市", "清远市", "东莞市", "中山市", "潮州市", "揭阳市", "云浮市"]},
                                            {"provice":"广西壮族自治区","city":["南宁市", "柳州市", "桂林市", "梧州市", "北海市", "防城港市", "钦州市", "贵港市", "玉林市", "百色市", "贺州市", "河池市", "来宾市", "崇左市"]},
                                            {"provice":"海南省","city":["海口市", "三亚市", "三沙市", "儋州市", "五指山市", "琼海市", "文昌市", "万宁市", "东方市", "定安县", "屯昌县", "澄迈县", "临高县", "白沙黎族自治县", "昌江黎族自治县", "乐东黎族自治县", "陵水黎族自治县", "保亭黎族苗族自治县", "琼中黎族苗族自治县"]},
                                            {"provice":"重庆市","city":["万州区", "涪陵区", "渝中区", "大渡口区", "江北区", "沙坪坝区", "九龙坡区", "南岸区", "北碚区", "綦江区", "大足区", "渝北区", "巴南区", "黔江区", "长寿区", "江津区", "合川区", "永川区", "南川区", "璧山区", "铜梁区", "潼南区", "荣昌区", "开州区", "梁平区", "武隆区", "城口县", "丰都县", "垫江县", "忠县", "云阳县", "奉节县", "巫山县", "巫溪县", "石柱土家族自治县", "秀山土家族苗族自治县", "酉阳土家族苗族自治县", "彭水苗族土家族自治县"]},
                                            {"provice":"四川省","city":["成都市", "自贡市", "攀枝花市", "泸州市", "德阳市", "绵阳市", "广元市", "遂宁市", "内江市", "乐山市", "南充市", "眉山市", "宜宾市", "广安市", "达州市", "雅安市", "巴中市", "资阳市", "阿坝藏族羌族自治州", "甘孜藏族自治州", "凉山彝族自治州"]},
                                            {"provice":"贵州省","city":["贵阳市", "六盘水市", "遵义市", "安顺市", "毕节市", "铜仁市", "黔西南布依族苗族自治州", "黔东南苗族侗族自治州", "黔南布依族苗族自治州"]},
                                            {"provice":"云南省","city":["昆明市", "曲靖市", "玉溪市", "保山市", "昭通市", "丽江市", "普洱市", "临沧市", "楚雄彝族自治州", "红河哈尼族彝族自治州", "文山壮族苗族自治州", "西双版纳傣族自治州", "大理白族自治州", "德宏傣族景颇族自治州", "怒江傈僳族自治州", "迪庆藏族自治州"]},
                                            {"provice":"西藏自治区","city":["拉萨市", "日喀则市", "昌都市", "林芝市", "山南市", "那曲市", "阿里地区"]},
                                            {"provice":"陕西省","city":["西安市", "铜川市", "宝鸡市", "咸阳市", "渭南市", "延安市", "汉中市", "榆林市", "安康市", "商洛市"]},
                                            {"provice":"甘肃省","city":["兰州市", "嘉峪关市", "金昌市", "白银市", "天水市", "武威市", "张掖市", "平凉市", "酒泉市", "庆阳市", "定西市", "陇南市", "临夏回族自治州", "甘南藏族自治州"]},
                                            {"provice":"青海省","city":["西宁市", "海东市", "海北藏族自治州", "黄南藏族自治州", "海南藏族自治州", "果洛藏族自治州", "玉树藏族自治州", "海西蒙古族藏族自治州"]},
                                            {"provice":"宁夏回族自治区","city":["银川市", "石嘴山市", "吴忠市", "固原市", "中卫市"]},
                                            {"provice":"新疆维吾尔自治区","city":["乌鲁木齐市", "克拉玛依市", "吐鲁番市", "哈密市", "昌吉回族自治州", "博尔塔拉蒙古自治州", "巴音郭楞蒙古自治州", "阿克苏地区", "克孜勒苏柯尔克孜自治州", "喀什地区", "和田地区", "伊犁哈萨克自治州", "塔城地区", "阿勒泰地区", "石河子市", "阿拉尔市", "图木舒克市", "五家渠市", "铁门关市"]},
                                            {"provice":"香港","city":["香港"]},
                                            {"provice":"澳门","city":["澳门"]}];
                                        /*    资料添加*/
                                        var provice="";
                                        var city="";
                                        function loadCityData(){
                                            for(var i=0;i<jsonList.length;i++){
                                                provice="<option data-index="+i+" value='"+jsonList[i].provice+"'>"+jsonList[i].provice+"</option>";
                                                $(".provinceTarget").append(provice);
                                            }
                                            /*for(var j=0;j<jsonList[0].city.length;j++){
                                                city="<option data-index="+j+" value="+jsonList[0].city[j]+">"+jsonList[0].city[j]+"</option>";
                                                $(".cityTarget").append(city);
                                            }*/
                                        }
                                        $(function(){
                                            window.onload = function() {
                                                //初始的每月天数
                                                m = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
                                                //先给年下拉框赋内容
                                                for (var i =1970; i <2005; i++)
                                                    document.form.year.options.add(new Option(i , i));
                                                //赋月份的下拉框
                                                for (var i = 1; i < 13; i++)
                                                    document.form.month.options.add(new Option( i, i));
                                                loadCityData();
                                            }

                                            $(".provinceTarget").change(function(){
                                                $(".cityTarget").empty();
                                                var opt=$(".provinceTarget option:selected").attr("data-index");
//        console.log(opt);
                                                if(opt == "-1"){
                                                    city="<option data-index='-1' value='城市'>城市</option>";
                                                    $(".cityTarget").append(city);
                                                }else{

                                                    var length=jsonList[opt].city.length;

                                                    for(var j=0;j<length;j++){
                                                        city="<option data-index="+j+" value="+jsonList[opt].city[j]+">"+jsonList[opt].city[j]+"</option>";
                                                        $(".cityTarget").append(city);
                                                    }
                                                }


                                            });
                                        })
                                        function updateLocationInfo(proviceName,cityName) {

                                            var pIndex = -1;
                                            for (var i = 0; i < jsonList.length; i++) {
                                                if (jsonList[i].provice.indexOf(proviceName) != -1) {
                                                    pIndex = i;
                                                    $(".provinceTarget").empty();
                                                    for (var j = 0; j < jsonList.length; j++) {
                                                        provice = "<option data-index=" + j + " value='" + jsonList[j].provice + "'>" + jsonList[j].provice + "</option>";
                                                        if (j == pIndex) {
                                                            provice = "<option data-index=" + j + " selected value='" + jsonList[j].provice + "'>" + jsonList[j].provice + "</option>";
                                                        }
                                                        $(".provinceTarget").append(provice);
                                                    }

                                                    $(".cityTarget").empty();
                                                    var cLen = jsonList[pIndex].city.length;

                                                    for (var w = 0; w < cLen; w++) {
                                                        city = "<option data-index=" + w + " value=" + jsonList[pIndex].city[w] + ">" + jsonList[pIndex].city[w] + "</option>";
                                                        if (jsonList[pIndex].city[w] == cityName) {
                                                            city = "<option data-index=" + w + " selected value=" + jsonList[pIndex].city[w] + ">" + jsonList[pIndex].city[w] + "</option>";
                                                        }
                                                        $(".cityTarget").append(city);
                                                    }


                                                    break;
                                                }
                                            }
                                        }
                                    </script>

                                    <div>
                                        <label class="control-label"><span>省市/城市</span></label>
                                        <br>
                                        <!--省份选项列表-->
                                        <select class="provinceTarget inputEle selectTag" id="province">
                                            <option data-index="-1" value="省份" id="province2">省份</option>
                                        </select>

                                        <!--城市选项列表-->
                                        <select class="cityTarget inputEle selectTag" id="city">
                                            <option data-index="-1" value="城市" id="city2">城市</option>
                                        </select>
                                    </div>


                                    <div style="margin-top: 50px">
                                        <div id="savebtn_error_div">
                                            <a class="gl-cta gl-cta--primary color-bright-blue btn-preservation" id="savebtn"><span>保存</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a class="gl-cta gl-cta--primary gl-cta--secondary btn-cancel" id="cancel"><span>取消修改</span></a>&nbsp;    &nbsp;<span id="ts"></span>
                                            <div class="submit-error none" style="float: left;"><span style="color:#FF6D6D;"></span></div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<%--            </div>--%>
<%--        </div>--%>
<script>
    $(function () {
        $("#savebtn").click(function () {
            var tj=null;
            var name=$("#nickName").val();//姓名
            var sex=$("#span").text();//性别
            var year=$("#year2 option:selected").text();//年
            var month=$("#month2 option:selected").text();//月
            var day=$("#day2 option:selected").text();//日
            var province=$("#province option:selected").text();//省
            var city=$("#city option:selected").text();//市

            if(name==""||year=="-请选择-"||month=="-请选择-"||day=="-请选择-"||province=="省份"||city=="城市"){
                $("#ts").html("信息有误，请重新确认");
            }else if(name!=""&&year!=0&&month!=0&&day!=0&&province!="省份"&&city!="城市"){
                var  date=year+"-"+month+"-"+day;
                var address=province+"-"+city;
                $.ajax({
                    url:"updateMessage",
                    type:"POST",
                    data:"userName="+name+"&sex="+sex+"&date="+date+"&address="+address,
                    async: false,
                    success: function (date) {
                        tj=date
                    }
                })
                if (tj=="true"){
                    $("#ts").html("");
                    window.location.reload();
                    $(".personal-data-modify:eq(1)").hide();
                }else {
                    $("#ts").html("信息有误，请重新确认");
                }
            }

        })
    })
</script>


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