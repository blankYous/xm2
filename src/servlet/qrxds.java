package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
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

@WebServlet("/qrxds")
public class qrxds extends HttpServlet {
       @SuppressWarnings("all")
       public void  doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           request.setCharacterEncoding("UTF-8");
           response.setContentType("html/text;charset=UTF-8");
           PrintWriter out = response.getWriter();
           BlankServe se = new BlankServeImp();
           int countm=Integer.parseInt(request.getParameter("countm"));
           String ddhao = request.getParameter("ddhao");
           System.out.println(ddhao);
           String ddname = request.getParameter("ddname");
           System.out.println(ddname);
           int ddprice = Integer.parseInt(request.getParameter("ddprice"));
           System.out.println(ddprice);
           String ddphone = request.getParameter("ddphone");
           System.out.println(ddphone);
           String ddzhi = request.getParameter("ddzhi");
           System.out.println(ddzhi);
           String jsons = request.getParameter("jsons");
           System.out.println(jsons);
           List<Blank> list = new ArrayList<Blank>();
           JSONArray ar = JSON.parseArray(jsons);  //将传过来的json格式数组字符串转换为jsonArry数组对象
           String jsoncolor=request.getParameter("colors");
           String jsonshoe=request.getParameter("shoes");
           JSONArray co= JSON.parseArray(jsoncolor);
           JSONArray sh= JSON.parseArray(jsonshoe);
           String user=(String)request.getServletContext().getAttribute("user");
           //先增主表再增子表
           Blank nk = new Blank();
           nk.setDdhao(ddhao);
           nk.setDdprice(ddprice);
           nk.setDdname(ddname);
           nk.setDdzhi(ddzhi);
           nk.setZt("未支付");
           nk.setPhones(ddphone);
           nk.setAccount(user);
           nk.setCount(countm);
           int cu = se.insertDDxxi(nk);
           String account=(String) request.getServletContext().getAttribute("user"); //获取账号
           for (int i = 0; i < ar.size(); i++) {
               String name = ar.getString(i);    //循环取出每个jsonarry的值
               String color=co.getString(i);
               int shoe=sh.getInteger(i);
               Blank bk = new Blank();
               bk = se.listName(name,account,color,shoe);
               Blank bks = new Blank();
               bks.setDdhao(ddhao);
               bks.setTradeName(bk.getTradeName());
               bks.setTradePrice(bk.getTradePrice());
               bks.setTradeShoe(bk.getTradeShoe());
               bks.setTradeColor(bk.getTradeColor());
               bks.setTradeCounts(bk.getTradeCounts());
               bks.setTradeImg(bk.getTradeImg());
               list.add(bks);

           }
           if (cu > 0) {
               out.print(1);
               for (int j = 0; j < list.size(); j++) {
                   int cou = se.insertDDbiao(list.get(j));
                   Blank bks=new Blank();
                   bks=se.selectkucun(list.get(j).getTradeShoe(),list.get(j).getTradeColor(),list.get(j).getTradeName()
                   ,list.get(j).getTradePrice());
                   int kucun=bks.getTradeCounts();
                   System.out.println("库存1"+kucun);
                   kucun=kucun-list.get(j).getTradeCounts();
                   System.out.println("库存2"+kucun);
                   Blank km=new Blank();
                   km.setTradeCounts(kucun);
                   km.setTradeShoe(bks.getTradeShoe());
                   km.setTradeColor(bks.getTradeColor());
                   km.setTradeId(bks.getTradeId());
                    int gh=se.updatekucun(km);
                   System.out.println("测试"+gh);
               }
               for (int i = 0; i < ar.size(); i++) {
                   String name = ar.getString(i);    //循环取出每个jsonarry的值
                   int size=Integer.parseInt(sh.getString(i));
                   String color=co.getString(i);
                   se.deletegwcs(name,size,color,account);
               }
           }
       }
}
