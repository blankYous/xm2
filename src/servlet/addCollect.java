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

@WebServlet("/addCollect")
public class addCollect extends HttpServlet {//添加收藏
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String account=(String) request.getServletContext().getAttribute("user");//账户
        String name=request.getParameter("name");//商品名字;
        int price=Integer.parseInt(request.getParameter("price"));//商品价格
        int originalPrice=Integer.parseInt(request.getParameter("originalPrice"));//原价
        String img=request.getParameter("img");//商品路径
        int sum=blankServe.selectCollect(img,account);
        if (sum>0){
            out.print("ysc");
        }else {
            Blank blank = new Blank();
            blank.setImgName(img);
            blank.setTitle(name);
            blank.setPrice(price);
            blank.setOriginalPrice(originalPrice);
            blank.setAccount(account);
            int count=blankServe.addCollect(blank);
            if (count>0){
                out.print("true");
            }else {
                out.print("false");
            }
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
