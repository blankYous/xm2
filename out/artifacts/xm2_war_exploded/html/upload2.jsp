<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品</title>
</head>
<style type="text/css">
    /**绿色勾*/
    .myicon-tick-checked {
        display: inline-block;
        position: relative;
        width: 15px;
        height: 15px;
        border-radius: 50%;
        background-color: #2ac845;
    }



    .myicon-tick-checked:before, .myicon-tick-checked:after{
        content: '';
        pointer-events: none;
        position: absolute;
        color: white;
        border: 1px solid;
        background-color: white;
    }


    .myicon-tick-checked:before {
        width: 1px;
        height: 1px;
        left: 25%;
        top: 50%;
        transform: skew(0deg,50deg);
    }


    .myicon-tick-checked:after{
        width: 3px;
        height: 1px;
        left: 45%;
        top: 42%;
        transform: skew(0deg,-50deg);
    }


</style>
<body>
<table width="100%">
    <tr style="background-color: silver"><td><div style="height: 60px;width: 100%;"><h1>添加商品</h1></div></td></tr>
    <tr style="">
        <td>
        </td>
    </tr>
</table>

<table align="center" style="background-color: rgba(236,236,242,0.76)">
    <tr style="width: 1200px">
        <td style="border: 1px lightgrey solid;"><div style="width: 200px;" ><h3 style="margin-left: 60px" id="jd">基本信息</h3></div></td>
        <td style="border: 1px lightgrey solid; ">
            <%--进度--%>
            <div style="background-color: rgba(236,236,242,0.76);height: 60px;width: 1090px;margin-left: 110px">
                <div style="height: 50px; width: 200px;background-color: white;margin-top: 10px;margin-left: 50px;float: left" id="basic">
                    <span style="padding-left: 10px;font-size: 22px;"><span style="font-size: 30px">1.</span>商品基本信息</span>
                </div>

                <div style="float: left;margin-top: 15px;font-size: 30px">————></div>

                <div style="height: 50px; width: 200px;background-color: rgba(236,236,242,0.76);margin-top: 10px;float: left" id="specification">
                    <span style="padding-left: 45px;font-size: 22px;"><span style="font-size: 30px">2.</span>商品规格</span>
                </div>
                <div style="float: left;margin-top: 15px;font-size: 30px">————></div>
                <div style="height: 45px; width: 200px;background-color: rgba(236,236,242,0.76);margin-top: 10px;float: left" id="succeed">
                    <span style="padding-left: 50px;font-size: 22px;"><span style="font-size: 30px">3.</span>添加成功</span>
                </div>
            </div>
            <form method="post" enctype="multipart/form-data" id="formadd">
                <%--商品基本信息--%>
                <div style="width: 1000px;margin-top: 20px;" id="jbxx">
                    <table align="center">
                        <tr style="height: 30px">
                            <td>商品名称<span style="color: red">*</span></td>
                            <td><input type="text" name="title" style="width: 800px;height: 30px"></td>
                        </tr>
                        <tr style="height: 20px">
                            <td></td>
                        </tr>
                        <tr style="height: 30px">
                            <td>适应性<span style="color: red">*</span></td>
                            <td>
                                <input type="radio" name="sex" value="男子" checked>男子
                                <input type="radio" name="sex" value="女子">女子
                                <input type="radio" name="sex" value="男童">男童
                                <input type="radio" name="sex" value="女童">女童
                            </td>
                        </tr>
                        <tr style="height: 20px">
                            <td></td>
                        </tr>
                        <tr style="height: 30px">
                            <td>品牌/类型<span style="color: red">*</span></td>
                            <td>
                                <select name="brand" id="brand" style="width: 200px;height: 30px" ></select>
                                <select name="type" id="type" style="width: 200px;height: 30px"></select>
                            </td>
                        </tr>
                        <tr style="height: 20px">
                            <td></td>
                        </tr>
                        <tr style="height: 30px">
                            <td>商品价格<span style="color: red">*</span></td>
                            <td>
                                <span style="text-align: revert;background-color: white;border: silver 1px solid;padding: 4px 5px 5px 5px;font-size: 14px;color: silver;float: left">&nbsp;市场价&nbsp;</span>
                                <span style="float: left"><input type="text" name="originalPrice" style="width: 200px;height: 30px"></span>
                                <span style="text-align: revert;background-color: white;border: silver 1px solid;padding: 4px 5px 5px 5px;font-size: 14px;color: silver;float: left">元&nbsp;鞋库价</span>
                                <span style="float: left"><input type="text" name="price" style="width: 200px;height: 30px"></span>
                                <span style="text-align: revert;background-color: white;border: silver 1px solid;padding: 4px 5px 5px 5px;font-size: 14px;color: silver;float: left">&nbsp;&nbsp;元&nbsp;&nbsp;</span>
                            </td>
                        </tr>
                        <tr style="height: 20px">
                            <td></td>
                        </tr>
                        <tr style="height: 30px">
                            <td>商品图片<span style="color: red">*</span></td>
                            <td>
                                <input type="file" name="img" value="" class="imgInput" style=" width:250px" multiple="multiple"><span id="ts" style="display: none;color: red"></span>
                                <div style="height: 170px;background-color: white"><span id="showimg"></span></div>
                            </td>
                        </tr>
                        <tr style="height: 20px">
                            <td></td>
                        </tr>
                        <tr style="height: 30px">
                            <td colspan="2"><input style="margin-left: 650px;height: 30px;width: 100px" id="next" type="button" value="下一步"> <span id="xybtj"style="margin-left: 10px;color:red;display: none">信息有误</span></td>

                        </tr>
                    </table>
                </div>
            </form>
            <%--商品规格--%>
            <div style="width: 1000px;margin-top: 20px;margin-left: 180px;display: none" id="gg">
                <table>
                    <tr style="height: 30px">
                        <td colspan="3">
                            <p style="display: inline-block;height: 10px;width: 300px">鞋码<span style="color: red">*</span></p>
                            <p style="display: inline-block;height: 10px;width: 300px">颜色<span style="color: red">*</span></p>
                            <p style="display: inline-block;height: 10px;width: 300px">数量<span style="color: red">*</span></p></td>
                    </tr>

                    <tr style="height: 30px;">

                        <td>
                            <input type="checkbox" value="34"style="margin-left: 20px" name="shoe">34
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left: 20px;display: inline-block"class="color34" >
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>

                    </tr>

                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox" value="35"style="margin-left: 20px" name="shoe">35
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left: 20px;display: inline-block"class="shoe35" >
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>
                    </tr>

                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox" value="36"style="margin-left: 20px" name="shoe">36
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left: 20px;display: inline-block"class="shoe36" >
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>
                    </tr>

                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox" value="37"style="margin-left: 20px" name="shoe">37
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left: 20px;display: inline-block"class="shoe37" >
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>
                    </tr>

                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox" value="38"style="margin-left: 20px" name="shoe">38
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left: 20px;display: inline-block"class="shoe38">
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>
                    </tr>

                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox" value="39"style="margin-left: 20px" name="shoe">39
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left: 20px;display: inline-block"class="shoe39" >
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>
                    </tr>

                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox" value="40"style="margin-left: 20px" name="shoe">40
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left:20px;display: inline-block"class="shoe40" >
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>
                    </tr>

                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox" value="41"style="margin-left: 20px" name="shoe">41
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left: 20px;display: inline-block"class="shoe41" >
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>
                    </tr>

                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox" value="42"style="margin-left: 20px" name="shoe">42
                        </td>
                        <td style=" line-height: 25px"align="center">
                            <div style="margin-left: 20px;display: inline-block"class="shoe42" >
                                <input type="checkbox" value="黑色"style="margin-left: 30px;display: inline-block"class="color" disabled>黑色<br>
                                <input type="checkbox" value="白色"style="margin-left: 30px;display: inline-block"class="color" disabled>白色<br>
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" value="黑白条纹"style="margin-left: 30px;display:inline-block"class="color" disabled>黑白条纹<br>
                                <input type="checkbox" value="红色"style="margin-left: 30px;display: inline-block"class="color"disabled>红色<br>
                                <input type="checkbox" value="蓝色"style="margin-left: 30px;display: inline-block"class="color" disabled>蓝色<br>
                                <input type="checkbox" value="绿色"style="margin-left: 30px;display: inline-block"class="color"disabled>绿色<br>
                                <input type="checkbox" value="灰色"style="margin-left: 30px;display:inline-block"class="color"disabled>灰色<br>
                                <input type="checkbox" value="黄色"style="margin-left: 30px;display: inline-block"class="color"disabled>黄色<br>
                                <input type="checkbox" value="粉色"style="margin-left: 30px;display: inline-block"class="color"disabled>粉色
                            </div>
                        </td>
                        <td align="center">
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count" disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled><br>
                            <input type="text"style="width: 200px;height: 25px;display: inline-block;"class="count"disabled>
                        </td>
                    </tr>
                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>
                    <tr >
                        <td colspan="3" style=""><input style="margin-left: 560px ;width: 100px;height: 30px" id="tj" type="button"  value="提交"><span id="tjts"style="margin-left: 30px;color:red;display: none">规格不完整或数量必须是数字</span></td>
                    </tr>
                    <tr style="height: 20px">
                        <td colspan="3" style=""></td>
                    </tr>
                </table>

            </div>
            <%-- 添加成功--%>
            <div style="width: 1000px;margin-top: 20px;height: 500px;margin-left: 100px;display: none" id="cg">
                <p style="font-size: 20px;margin-left: 420px;padding-top: 220px">
                    <span class="myicon-tick-checked" style="text-align: revert"></span>商品添加成功
                </p>
                <p style="padding-top: 100px"><a href="javascript:void(0)"style="font-size: 20px;margin-left: 820px;"id="fh">返回商品列表</a></p>
            </div>
        </td>
    </tr>
</table>
<script src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    $(function () {
        //多图预览
        $(".imgInput").change(function(){
            $("#showimg").children().remove();
            $("#ts").hide();
            var imgNum = $(this)[0].files.length; //图片数量
            if (imgNum>4){
                $(this).val("");
                $("#ts").html("最多传四张");
                $("#ts").show();
            }else if (imgNum<3){
                $(this).val("");
                $("#ts").html("最少传三张");
                $("#ts").show();
            } else {

                for(var i=0; i<imgNum; i++){
                    $("#showimg").append("<img src='"+URL.createObjectURL($(".imgInput")[0].files[i])+"' width=150px height='150px'>");
                }
            }
        });
        var brand=["--请选择--","adidas","耐克","彪马","亚瑟士","匡威","斯凯奇","新百伦","网球鞋","李宁","卡米","NB"];
        brand["--请选择--"]=["--请选择--"];
        brand["adidas"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["耐克"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["彪马"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["亚瑟士"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["匡威"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["斯凯奇"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["新百伦"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["网球鞋"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["李宁"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["卡米"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        brand["NB"]=["休闲鞋","板鞋","运动鞋","帆布鞋","篮球鞋","足球鞋","赛车鞋","网球鞋","溯溪鞋","跑步鞋","拖鞋"];
        for (var i=0;i<brand.length;i++){
            var option=$("<option value='"+brand[i]+"'>"+brand[i]+"</option>");
            $("#brand").append(option);
        }
        if ($("#brand").val()=="--请选择--") {
            $("#type").children().remove();
            for (var i in brand['--请选择--'] ){
                var option=$("<option value='"+brand['--请选择--'][i]+"'>"+brand['--请选择--'][i]+"</option>");
                $("#type").append(option);
            }
        }
        //二级联动
        $("#brand").change(function () {
            var a= $("#brand").val();
            $("#type").children().remove();
            for (var i in brand[a] ){
                var option=$("<option value='"+brand[a][i]+"'>"+brand[a][i]+"</option>");
                $("#type").append(option);
            }

        })
        //下一步
        $("#next").click(function () {
            var title=$("input[name=title]").val();
            var price=$("input[name=price]").val();
            var brand=$("#brand option:selected").val();
            var leng=$(".imgInput")[0].files.length;
    if (title!=""&&price!=""&&isNaN(price)==false&&brand!="--请选择--"&&leng>=3 && leng<=4) {
            $.ajax({
                cache: false,
                contentType: false,
                url: "/putaway", //发送请求到后台的地址
                type: "post",
                dataType: "text",//返回的数据类型为纯文本字符串
                data: new FormData(document.getElementById("formadd")), //发送的数据是id="for"的表单中的数据,其中document.getElementById()函数的功能是根据对象的名称获取对象
                processData: false,//不希望自动转换
                async: false,//请求设为同步步
                success: function (data) {
                    //发送请求成功执行的函数
                    if (data == "true") {
                        alert("添加成功");
                        $("#jd").html("商品规格");
                        $("#succeed").css("background-color","#ECECF2");
                        $("#basic").css("background-color","#ECECF2");
                        $("#specification").css("background-color","white");
                        $("#formadd").hide();
                        $("#gg").show();
                        $("#cg").hide();

                    } else {
                        alert("添加失败,请确认信息是否正确")
                    }
                }
            });
    }else {
        $("#xybtj").fadeIn(600);
        $("#xybtj").fadeOut(6000);
    }
        })
        //选中鞋码时打开相应颜色
        $("input[name=shoe]").click(function () {
            var  index= $("input[name=shoe]").index(this);
            /* var a=$("input[name=shoe]:eq("+index+")").val();*/
            if ($("input[name=shoe]:eq("+index+")").is(":checked")){
                $("input[name=shoe]:eq("+index+")").parent().next().children().find(".color").attr("disabled",false)
            } else {
                $("input[name=shoe]:eq("+index+")").parent().next().children().find(".color").attr("checked",false)
                $("input[name=shoe]:eq("+index+")").parent().next().children().find(".color").attr("disabled",true)
                $(".count:eq("+index+")").attr("disabled", true);

            }
        })
        //选中颜色时打开相应文本框
        $(".color").click(function () {
            var index=$(".color").index(this);
            if ($(".color:eq("+index+")").is(":checked")) {
                $(".count:eq("+index+")").attr("disabled", false);
            }else {
                $(".count:eq("+index+")").val("");
                $(".count:eq("+index+")").attr("disabled", true);
            }
        })
        //单击提交按钮
        $("#tj").click(function () {
            var json=[];
            var shoe=new Array();
            var i=0;
            var title=$("input[name]").val();
            $("input[name=shoe]").each(function () {
                if ($("input[name=shoe]:eq("+i+")").is(":checked")){
                    shoe[i]=$("input[name=shoe]:eq("+i+")").val();
                    var index=$("input[name=shoe]:eq("+i+")").parents("tr").index();
                    var color="";
                    var count="";
                    var a=0;
                    var colors=[];
                    var len=0;
                    $("#gg tr:eq("+index+") input[class=color]").each(function () {
                        if ($("#gg tr:eq("+index+") input[class=color]:eq("+a+")").is(":checked")) {
                            color=$("#gg tr:eq("+index+") input[class=color]:eq("+a+")").val();
                            count=$("#gg tr:eq("+index+") input[class=count]:eq("+a+")").val();

                            var colorto={};
                            colorto[color]=count;
                            colors.push(colorto);
                        }else {
                            len++;
                        }
                        a++;
                    })
                    var json2={};
                    json2[shoe[i]]=colors;
                    json.push(json2);
                    /*alert(json)*/
                    if (isNaN(count)){
                        count="";
                    }
                }
                if (count==""||count=="0"||count==0){
                    $("#tjts").fadeIn(600);
                    $("#tjts").fadeOut(6000);
                    json=[];
                    return false;
                }
                if (len == $("#gg tr:eq("+index+") input[class=color]").length){
                    $("#tjts").fadeIn(600);
                    $("#tjts").fadeOut(6000);
                    json=[];
                    return false;
                }
                i++;
            })
            if (json.length>0){
                $.ajax({
                    url:"/putawayCondition",
                    data: {"json":JSON.stringify(json),"title":title},
                    type: "POST",
                    async: false,
                    success:function (data) {
                       if (data=="true"){
                           $("#jd").html("商品添加成");
                           $("#basic").css("background-color","#ECECF2");
                           $("#specification").css("background-color","#ECECF2");
                           $("#basic").css("background-color","white");
                           $("#formadd").hide();
                           $("#gg").hide();
                           $("#cg").show()
                       }
                    }
                })
            }
        })
        $("#fh").click(function () {
            location.href="/selectPutaway";
        })
/*       var name=document.referrer;
        if (name=="http://localhost:8080/selectPutaway"){
            alert(1)
        }*/

    })


</script>

</body>
</html>