package servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/quit")
public class quit extends HttpServlet {//退出登入
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        HttpSession session=request.getSession();
        ServletContext context=this.getServletContext();//退出登入
        PrintWriter out = response.getWriter();
        String name=request.getParameter("user");
        request.getServletContext().setAttribute("user",name);
        String name2= (String) request.getServletContext().getAttribute("user");
        if (name2==""|| name2==null){
            out.print(1);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            this.doPost(request,response);
    }
}
