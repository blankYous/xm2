package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import entity.Blank;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet( "/addAddress")
public class addAddress extends HttpServlet {//添加地址
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account=(String) request.getServletContext().getAttribute("user");//账户
        String name=request.getParameter("name");//收货人
        String phone=request.getParameter("phone");//电话号码
        String province=request.getParameter("province");//省份
        String city=request.getParameter("city");
        String area=request.getParameter("area");
        String detailed=request.getParameter("detailed");
        int defaultValue=Integer.parseInt(request.getParameter("defaultValue"));//默认值
        int oneId=Integer.parseInt(request.getParameter("oneId"));
        Blank blank=new Blank();
        blank.setAccount(account);
        blank.setRecipients(name);
        blank.setProvince(province);
        blank.setCity(city);
        blank.setArea(area);
        blank.setDetailed(detailed);
        blank.setPhone(phone);
        blank.setDefaultValue(defaultValue);



        if (oneId!=0&&defaultValue==0){
            int sum=blankServe.updateAddress(1,oneId);
            if (sum>0){
                int count2=blankServe.insertAddress(blank);
                if (count2>0){
                    out.print("true");
                }
                }
            }else{
            int count=blankServe.insertAddress(blank);
            if (count>0){
                out.print("true");
            }
        }


       /* if (defaultValue==0){

            int count=blankServe.updateAddress(1,oneId);
        }

        int count2=blankServe.insertAddress(blank);
    if (count2>0){
        System.out.println(4);
        out.print("true");
    }
*/





    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
