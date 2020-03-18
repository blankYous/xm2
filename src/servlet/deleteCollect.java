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

@WebServlet("/deleteCollect")
public class deleteCollect extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account=(String) request.getServletContext().getAttribute("user");//账户
        int id=Integer.parseInt(request.getParameter("id"));
        int count=blankServe.deleteCollect(id,account);
        if (count>0){
            out.print("true");
        }else {
            out.print("false");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request, response);
    }
}
