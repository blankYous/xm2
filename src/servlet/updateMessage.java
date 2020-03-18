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

@WebServlet( "/updateMessage")
public class updateMessage extends HttpServlet {//修改个人信息
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account =(String) request.getServletContext().getAttribute("user");/*request.getParameter("account");*///获取用户名
        String userName=request.getParameter("userName");
        String sex=request.getParameter("sex");
        String birthday=request.getParameter("date");
        String address=request.getParameter("address");

        Blank blank=new Blank();
        blank.setAccount(account);
        blank.setUserName(userName);
        blank.setSex(sex);
        blank.setBirthday(birthday);
        blank.setAddress(address);
        int count=blankServe.updateMessage(blank);
        if (count>0){
            out.print("true");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
