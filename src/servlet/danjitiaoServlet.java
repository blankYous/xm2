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
import java.io.PipedWriter;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/img")
public class danjitiaoServlet extends HttpServlet {//获取图片路径跳商品介绍页面
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String account=(String) request.getServletContext().getAttribute("user"); //获取账号
        BlankServe blankServe=new BlankServeImp();
        //路进
        String src=request.getParameter("src");

        //查询全部
        List<Blank>listAll=blankServe.listAll(src);
        //查询图片
        List<Blank>list= blankServe.listImg(src);
        //查询鞋码
        int spuId=listAll.get(0).getId(); //鞋子id

        List<Blank>listSize=blankServe.listSize(spuId);//根据鞋子id找出鞋子鞋码
        request.setAttribute("listSize",listSize);
        //查询颜色

        List<Blank>listColor=blankServe.listColor(spuId);//根据鞋子id找出鞋子颜色
        request.setAttribute("listColor",listColor);

        PrintWriter out=response.getWriter();
        request.setAttribute("list",list);
        request.setAttribute("listAll",listAll);
        request.getServletContext().getAttribute("user");
       /* out.print(list);*/
        request.getRequestDispatcher("jieshao.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }
}
