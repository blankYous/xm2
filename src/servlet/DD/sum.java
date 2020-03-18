package servlet.DD;

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

@WebServlet("/sum")
public class sum extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe se=new BlankServeImp();
        String user=(String)getServletContext().getAttribute("user");
        //查询账号所有的订单号和支付状态
        List<Blank> list1 = null;
        list1=se.selectddhao(user);
        request.setAttribute("list1",list1);
        //查询未支付的订单号和支付状态
        List<Blank> list2=new ArrayList<Blank>();
        list2=se.selectwzf(user);
        request.setAttribute("list2",list2);
        //查询待收货的订单号和支付状态
        //查询待发货的订单号和支付状态
        //查询已支付的订单号和支付状态
        List<Blank> list5=new ArrayList<Blank>();
        list5=se.selectyzf(user);
        request.setAttribute("list5",list5);
        //查询商品信息全部
        List<Blank> list=new ArrayList<Blank>();
        list=se.selectsum();
        request.setAttribute("list",list);
        request.getRequestDispatcher("DDlb.jsp").forward(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
