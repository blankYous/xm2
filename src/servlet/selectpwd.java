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

@WebServlet("/selectpwd")
public class selectpwd extends HttpServlet {  //查询原密码     修改密码时用
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account =(String) request.getServletContext().getAttribute("user");/*request.getParameter("account");*///获取用户名
        String pwd=blankServe.selectPwd(account);
        out.print(pwd);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
