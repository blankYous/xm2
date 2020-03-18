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

@WebServlet("/updatePwd")
public class updatePwd extends HttpServlet { //修改密码
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account =(String) request.getServletContext().getAttribute("user");//获取用户名
        System.out.println(account);
        String pwd =request.getParameter("pwd");
        int count=blankServe.updatePwd(pwd,account);
        System.out.println(count);
        if (count>0){
            out.print("true");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
