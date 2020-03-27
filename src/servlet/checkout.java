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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/checkout")
public class checkout extends HttpServlet {//查询购物车
   public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
       BlankServe blankServe=new BlankServeImp();
       String account=(String) req.getServletContext().getAttribute("user"); //获取账号
        List<Blank>  list = new ArrayList<Blank>();
        List<Blank>listCount=new ArrayList<Blank>();
        list=blankServe.listgwc(account);
       for (int i=0;i<list.size();i++){
           listCount.add(blankServe.selectkucun(list.get(i).getTradeShoe(),list.get(i).getTradeColor(),list.get(i).getTradeName(),list.get(i).getTradePrice()));
       }
        req.setAttribute("list",list);
       req.setAttribute("listCount",listCount);
        req.getRequestDispatcher("checkout.jsp").forward(req,resp);
    }
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       this.doPost(req, resp);
    }
}
