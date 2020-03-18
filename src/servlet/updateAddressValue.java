package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/updateAddressValue")
public class updateAddressValue extends HttpServlet { //修改是否默认地址
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account =(String) request.getServletContext().getAttribute("user");//获取用户名
        int id=Integer.parseInt(request.getParameter("id"));
        int oneId=Integer.parseInt(request.getParameter("oneId"));
        int sum=blankServe.updateAddress(1,oneId);
        int sum2=blankServe.updateAddress(0,id);
        if (sum>0&&sum2>0){
                out.print("true");
            }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
