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
import java.util.LinkedList;
import java.util.List;

@WebServlet("/seek")
public class seek extends HttpServlet {//搜索
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        BlankServe blankServe=new BlankServeImp();
        String account=(String) request.getServletContext().getAttribute("user"); //获取账号
        Blank blank=null;
        String name=request.getParameter("name");
        List<Blank>list=blankServe.listxk(name);
        List<String[]>listName=new ArrayList<String[]>();
        int count=list.size();
        request.setAttribute("count",count);
        for (int i=0;i<list.size();i++){
            int imgId=list.get(i).getImgId();
            listName.add(blankServe.listImg(imgId));
        }
        request.getServletContext().getAttribute("user");
        request.setAttribute("list",list);
        request.setAttribute("listName",listName);
        request.getRequestDispatcher("xieku.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
