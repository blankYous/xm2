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

@WebServlet("/gwccount")
public class GWCcount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        BlankServe blankServe=new BlankServeImp();
        String user= (String) request.getServletContext().getAttribute("user");
        String account=(String) request.getServletContext().getAttribute("user"); //获取账号
        int count=blankServe.gwcCount(account);
        PrintWriter out=response.getWriter();
        if (count>0){
            out.println(count);
        }else{
            out.println(0);
        };
    }
}
