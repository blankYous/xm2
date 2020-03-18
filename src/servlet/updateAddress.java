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
import java.util.List;

@WebServlet("/updateAddress")
public class updateAddress extends HttpServlet {//修改地址
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

        int id=Integer.parseInt(request.getParameter("id"));
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
        blank.setId(id);
        System.out.println(defaultValue);
        int count2=blankServe.listAddress(blank);//判断是否修改
        if (count2>0){
            out.print("true");//未修改
        }else {
            if (oneId!=0&&defaultValue==0){
                int sum=blankServe.updateAddress(1,oneId);
                if (sum>=0){
                    int count=blankServe.updateAddress(blank);
                    if (count>0){
                        out.print("true");
                    }

                }
            }else {
                int count=blankServe.updateAddress(blank);
                if (count>0){
                    out.print("true");
                }
            }
        }




    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
