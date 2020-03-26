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

@WebServlet("/gwc")
public class gwc extends HttpServlet {
   public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       req.setCharacterEncoding("UTF-8");
       resp.setContentType("html/text;charset=UTF-8");
       PrintWriter out=resp.getWriter();
       System.out.println("1111111111");
       String account=(String) req.getServletContext().getAttribute("user"); //获取账号
       int id=Integer.parseInt(req.getParameter("spuId"));

       System.out.println(id);
       String name=req.getParameter("name");//商品名字;
       int price=Integer.parseInt(req.getParameter("price"));//商品价格
       int count=Integer.parseInt(req.getParameter("count"));//商品个数
       int shoe=Integer.parseInt(req.getParameter("shoe"));//商品鞋码
       String color=req.getParameter("color");//商品颜色
       String img=req.getParameter("img");//商品路径
           Blank blank = new Blank();
           blank.setId(id);
           blank.setTradeName(name);
           blank.setTradePrice(price);
           blank.setTradeCount(count);
           blank.setTradeShoe(shoe);
           blank.setTradeColor(color);
           blank.setTradeImg(img);
           blank.setAccount(account);

           BlankServe blankServe = new BlankServeImp();
           int sum =0;
           Blank bks=new Blank();
           bks.setTradeName(name);
           bks.setTradeColor(color);
           bks.setTradeShoe(shoe);
           bks.setAccount(account);

           Blank bk=new Blank();
           bk.setAccount(account);
           bk.setTradeShoe(shoe);
           bk.setTradeColor(color);
           bk.setTradeName(name);
           int nm=blankServe.selectcount(bk);

           if (nm>0){
               sum=blankServe.updatecount(name,color,account,shoe);
               //每次进入只要大于0就相当于增加成功了，并加一
               if (sum > 0) {
                   out.print("true");
               }else{
                   out.print("false");
               }
           }else{
               int bm=blankServe.trade(blank);
               if (bm>0){
                   out.println("true");
               }else{
                   out.println("false");
               }
           }



    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

}
