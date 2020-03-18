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
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/gwcshanchu")
public class gwcshaux extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe serve = new BlankServeImp();
        String ddhao=request.getParameter("ddhao");
        String user= (String) request.getServletContext().getAttribute("user");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//设置日期格式
        String date=df.format(new Date());// new Date()为获取当前系统时间
        System.out.println(date);
     int count=serve.updateDD("已支付",ddhao,date,user);
     if (count>0){
         request.getRequestDispatcher("checkout").forward(request,response);
     }

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    this.doGet(request, response);
    }
}
