package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import entity.Blank;
import entity.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * 后台查询所有用户
 */
@WebServlet("/allUser")
public class allUser extends HttpServlet { //查询全部  加模糊查询
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe = new BlankServeImp();
        List<Blank> list = new ArrayList<Blank>();
        Page pages=new Page();
        int pageMax=5;  //每页显示数量
        String a=request.getParameter("page");//当前页数

        int page=-1;
        if (a==null){
            page=1;
        }else {
            int b=Integer.parseInt(a);
            if (b<=0){
                b=1;
            }
            page=b;
        }


        String userName = request.getParameter("userName");//模糊查询文本
        if (userName==null){
            userName="";
        }
        pages=blankServe.page(userName,page,pageMax);
        list = pages.getList();
        request.setAttribute("list", list);//返回当前数据
        request.setAttribute("page",page);//返回当前页数
        request.setAttribute("count",pages.getPageSum());//返回总页数
        request.getRequestDispatcher("html/member-list.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request, response);
    }
}
