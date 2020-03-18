<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/1 0001
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
<%--  <link rel="icon" type="image/x-icon" href="#" />--%>
  <link type="text/css" rel="styleSheet"  href="css/main.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>账号登录</title>
  <style>
    *{
      margin: 0;
      padding: 0;
    }

    html,
    body {
      height: 100%;
    }

    @font-face {
      font-family: 'neo';
      src: url("font/NEOTERICc.ttf");
    }
    input:focus{
      outline: none;
    }
    .form input{
      width: 300px;
      height: 30px;
      font-size: 18px;
      background: none;
      border: none;
      border-bottom: 1px solid #fff;
      color: #fff;
      margin-bottom: 20px;
    }
    .form input::placeholder{
      color: rgba(255,255,255,0.8);
      font-size: 18px;
      font-family: "neo";
    }
    .confirm{
      height: 0;
      overflow: hidden;
      transition: .25s;
    }
    .btn{
      width:140px;
      height: 40px;
      border: 1px solid #fff;
      background: none;
      font-size:20px;
      color: #fff;
      cursor: pointer;
      margin-top: 25px;
      font-family: "neo";
      transition: .25s;
    }
    .btn:hover{
      background: rgba(255,255,255,.25);
    }
    #login_wrap{
      width: 980px;
      min-height: 500px;
      border-radius: 10px;
      font-family: "neo";
      overflow: hidden;
      box-shadow: 0px 0px 120px rgba(0, 0, 0, 0.25);
      position: fixed;
      top: 50%;
      right: 50%;
      margin-top: -250px;
      margin-right: -490px;
    }
    #login{
      width: 50%;
      height: 100%;
      min-height: 500px;
      background: linear-gradient(45deg, #9a444e, #e06267);
      position: relative;
      float: right;
    }
    #login #status{
      width: 90px;
      height: 35px;
      margin: 40px auto;
      color: #fff;
      font-size: 30px;
      font-weight: 600;
      position: relative;
      overflow: hidden;
    }
    #login #status i{
      font-style: normal;
      position: absolute;
      transition: .5s
    }
    #login span{
      text-align: center;
      position: absolute;
      left: 50%;
      margin-left: -150px;
      top: 52%;
      margin-top: -140px;
    }
    #login span a{
      text-decoration: none;
      color: #fff;
      display: block;
      margin-top: 80px;
      font-size: 18px;
    }
    #bg{
      background: linear-gradient(45deg, #211136, #bf5853);
      height: 100%;
    }
    /*绘图*/
    #login_img{
      width: 50%;
      min-height: 500px;
      background: linear-gradient(45deg, #221334, #6c3049);
      float: left;
      position: relative;
    }
    #login_img span{
      position: absolute;
      display: block;
    }
    #login_img .circle{
      width: 200px;
      height: 200px;
      border-radius: 50%;
      background: linear-gradient(45deg, #df5555, #ef907a);
      top: 70px;
      left: 50%;
      margin-left: -100px;
      overflow: hidden;
    }
    #login_img .circle span{
      width: 150px;
      height: 40px;
      border-radius: 50px;
      position: absolute;
    }
    #login_img .circle span:nth-child(1){
      top: 30px;
      left: -38px;
      background: #c55c59;
    }
    #login_img .circle span:nth-child(2){
      bottom: 20px;
      right: -35px;
      background: #934555;
    }
    #login_img .star span{
      background: radial-gradient(#fff 10%,#fff 20%,rgba(72, 34, 64, 0));
      border-radius: 50%;
      box-shadow: 0 0 7px #fff;
    }
    #login_img .star span:nth-child(1){
      width: 15px;
      height: 15px;
      top: 50px;
      left: 30px;
    }
    #login_img .star span:nth-child(2){
      width: 10px;
      height: 10px;
      left: 360px;
      top: 80px;
    }
    #login_img .star span:nth-child(3){
      width: 5px;
      height: 5px;
      top: 400px;
      left: 80px;
    }
    #login_img .star span:nth-child(4){
      width: 8px;
      height: 8px;
      top: 240px;
      left: 60px;
    }
    #login_img .star span:nth-child(5){
      width: 4px;
      height: 4px;
      top: 20px;
      left: 200px;
    }
    #login_img .star span:nth-child(6){
      width: 4px;
      height: 4px;
      top: 460px;
      left: 410px;
    }
    #login_img .star span:nth-child(7){
      width: 6px;
      height: 6px;
      top: 250px;
      left: 350px;
    }
    #login_img .fly_star span{
      width: 90px;
      height: 3px;
      background: -webkit-linear-gradient(left, rgba(255, 255, 255, 0.67), rgba(255,255,255,0));
      background: -o-linear-gradient(left, rgba(255, 255, 255, 0.67), rgba(255,255,255,0));
      background: linear-gradient(to right, rgba(255, 255, 255, 0.67), rgba(255,255,255,0));
      transform: rotate(-45deg);
    }
    #login_img .fly_star span:nth-child(1){
      top:60px;
      left: 80px;
    }
    #login_img .fly_star span:nth-child(2){
      top: 210px;
      left: 332px;
      opacity: 0.6;
    }
    #login_img p{
      text-align: center;
      color: #af4b55;
      font-weight: 600;
      margin-top: 365px;
      font-size: 25px;
    }
    #login_img p i{
      font-style: normal;
      margin-right: 45px;
    }
    #login_img p i:nth-last-child(1){
      margin-right: 0;
    }
    /*提示*/
    #hint{
      width: 100%;
      line-height: 70px;
      background: linear-gradient(-90deg, #9b494d, #bf5853);
      text-align: center;
      font-size: 25px;
      color: #fff;
      box-shadow: 0 0 20px #733544;
      display: block;
      opacity: 0;
      transition: .5s;
      position: absolute;
      top: 0;
      z-index: 999;
    }
    /* 响应式 */
    @media screen and (max-width:1000px ) {
      #login_img{
        display: none;
      }
      #login_wrap{
        width: 490px;
        margin-right: -245px;
      }
      #login{
        width: 100%;

      }
    }
    @media screen and (max-width:560px ) {
      #login_wrap{
        width: 330px;
        margin-right: -165px;
      }
      #login span{
        margin-left: -125px;
      }
      .form input{
        width: 250px;
      }
      .btn{
        width: 113px;
      }
    }
    @media screen and (max-width:345px ) {
      #login_wrap {
        width: 290px;
        margin-right: -145px;
      }
    }
  </style>
</head>


<body>
<div id="bg">
  <div id="hint"><!-- 提示框 -->
    <p id="p">登录失败</p>
  </div>
  <div id="login_wrap">
    <div id="login"><!-- 登录注册切换动画 -->
      <div id="status">
        <i style="top: 0">登录</i>
        <i style="top: 35px">注册</i>
<%--        <i style="right: 5px">in</i>--%>
      </div>
      <span>
                    <form action="post">
                        <p class="form"><input type="text" id="user" placeholder="账号"></p>
                        <p class="form"><input type="password" id="passwd" placeholder="密码"></p>
                        <p class="form confirm"><input type="password" id="confirm-passwd" placeholder="确认密码"></p>
                        <input type="button" value="登录" class="btn" id="log"  style="margin-right: 20px;">
                        <input type="button" value="注册" class="btn" id="zhuc"  id="btn">
                    </form>
                    <a href="#" >忘记密码?</a>

                </span>
    </div>

    <div id="login_img"><!-- 图片绘制框 -->
      <span class="circle">
                    <span></span>
                    <span></span>
                </span>
      <span class="star">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </span>
      <span class="fly_star">
                    <span></span>
                    <span></span>
                </span>
      <p id="title">BLANK</p>
    </div>
  </div>
</div>
</body>
<script src="js/jquery-1.12.4.js"></script>
<script>
  var onoff = true;   //根据此值判断当前为注册状态还是登录状态
  var confirm = document.getElementsByClassName("confirm")[0];
  var user = document.getElementById("user");
  var passwd = document.getElementById("passwd");
  var con_pass = document.getElementById("confirm-passwd");

  //自动居中title
  var name_c = document.getElementById("title");
  var names = name_c.innerHTML.split("");
  name_c.innerHTML = "";
  for (var i = 0; i < names.length; i++) {
      if (names[i] != ",") {
          name_c.innerHTML += "<i>" + names[i] + "</i>";
      }
  }
  //引用hint()在最上方弹出提示
  function hint() {
    let hit = document.getElementById("hint");
    hit.style.display = "block";
    function his(){
        hit.style.opacity = 1;
    }
    function hms() {
        hit.style.opacity = 0
    }
    function hos(){
        hit.style.display = 'none';
    }
    setTimeout(his, 0);
    setTimeout(hms, 2000);
    setTimeout(hos, 3000);
  }

  //注册按钮
  $("#zhuc").click(function (){
    var status = document.getElementById("status").getElementsByTagName("i");
    var hit = document.getElementById("p");
      var nm="";
     if (onoff) {
      confirm.style.height = 51 + "px"
        status[0].style.top = 35 + "px"
        status[1].style.top = 0
        onoff = !onoff
     } else {
         if (user.value==""||passwd.value==""||con_pass.value==""){
             hit.innerHTML="不能为空"
       }else if (!/^[A-Za-z0-9]+$/.test(user.value)) {
          hit.innerHTML = "账号只能为英文和数字"
      }else if (user.value.length <2) {
          hit.innerHTML = "账号长度必须大于2位"
      }else if (passwd.value.length <5) {
          hit.innerHTML = "密码长度必须大于5位"
      }else if (passwd.value!== con_pass.value) {
          hit.innerHTML = "两次密码不相等"
      }else if (passwd.value===con_pass.value) {
           //  $.ajaxSettings.async=false;
          $.ajax({
              url:"zhuc",
              type:"POST",
              async:false,
              data:"user="+user.value+"&pass="+passwd.value+"&passd="+con_pass.value,
              success: function (data) {
                  nm = data;
            },
            error:function (textStatus) {
                   alert(textStatus)
            }
          });
             bm();
             function bm() {
                 if (nm.trim()=="false") {
                    hit.innerHTML="该账号已存在";
                 } else if (nm.trim()=="true") {
                     hit.innerHTML = "账号注册成功，两秒后自动刷新页面"
                     setTimeout("window.location.reload()", 2000)
                 } else if (nm.trim()=="1") {
                     hit.innerHTML = "账号注册失败"
                 }
             }
         // $.ajaxSettings.async=true;
      }
      hint()
     }
  });

  //登录按钮
  //function login() {
  $("#log").click(function () {
      var hit =document.getElementById("p");
      var km="";
    if (onoff) {
        $.ajax({
            url:"login",
            async:false,  //同步刷新
            type:"POST",
            data: "user="+user.value+"&passwd="+passwd.value,
            success: function (data) {
               km = data;
            },
          error:function (textStatus) {
            alert(textStatus);
        }
        });
        ls();
        function ls() {
            var user=$("#user").val();
            if (km.trim()==user){
                hit.innerHTML ="登录成功！";
                location.href="index.jsp?user="+user;
            }else if (km.trim()=="dj"){
                hit.innerHTML ="账户冻结！";
            } else if (km.trim()=="false") {
                hit.innerHTML = "密码或者账户名错误";
            }
        }
        hint();
    } else {
      var status = document.getElementById("status").getElementsByTagName("i");
      confirm.style.height = 0;
      status[0].style.top = 0;
      status[1].style.top = 35 + "px";
      onoff = !onoff
    }
  //}
  })
</script>
<script type="text/javascript">
    (function() {
        var s = "_" + Math.random().toString(36).slice(2);
    document.write('<div style="" id="' + s + '"></div>');
    (window.slotbydup = window.slotbydup || []).push({ id: "u4923786",container:  s }); })();
      </script>
<script type="text/javascript" src="//cpro.baidustatic.com/cpro/ui/c.js" async="async" defer="defer" >

</script>
</html>

