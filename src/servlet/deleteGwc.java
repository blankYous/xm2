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

@WebServlet ("/deleteGwc")
public class deleteGwc extends HttpServlet {//取消购物车商品
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        BlankServe blankServe=new BlankServeImp();
        PrintWriter out=response.getWriter();
        String account=(String) request.getServletContext().getAttribute("user"); //获取账号
        String img=request.getParameter("img");
        int size=Integer.parseInt(request.getParameter("xiema"));
        String color=request.getParameter("color");
        int count=blankServe.deleteGwc(img,size,color,account);
        if (count>0){
            System.out.println("true");
            out.print("true");
        }else{
            out.print("false");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
