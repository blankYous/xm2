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

@WebServlet("/selectCollect")
public class selectCollect extends HttpServlet {//查询收藏
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account=(String) request.getServletContext().getAttribute("user");//账户
        List<Blank>listCollect=blankServe.listCollect(account);
        request.setAttribute("listCollect",listCollect);
        request.getRequestDispatcher("collect.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
