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

@WebServlet("/kucun")
public class kucun extends HttpServlet {  //查询鞋子库存
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("html/text;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String color=req.getParameter("color");
        int shoe=Integer.parseInt(req.getParameter("shoe"));
        String spmc=req.getParameter("spmc");
        String xb=req.getParameter("xb");
        int spjg=Integer.parseInt(req.getParameter("spjg"));
        BlankServe se=new BlankServeImp();
        Blank bk=new Blank();
        bk=se.selectkucun(shoe,color,spmc,spjg);
        int sum=bk.getTradeCounts();
        req.getServletContext().setAttribute("kucun",sum);
        if (sum>0){
            out.print(sum);
        }else{
            out.print(0);
        }

    }
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
