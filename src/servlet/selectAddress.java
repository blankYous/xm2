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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/selectAddress")
public class selectAddress extends HttpServlet {//查询收货地址
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account=(String) request.getServletContext().getAttribute("user"); //获取账号
        int count=blankServe.selectAddress(account);
        request.setAttribute("count",count);
        List<Blank>listAddress=new ArrayList<Blank>();
        listAddress=blankServe.listAddress(account);
        request.setAttribute("listAddress",listAddress);
        request.getRequestDispatcher("Address.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
