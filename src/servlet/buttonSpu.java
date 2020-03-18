package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
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
import java.util.Map;
@SuppressWarnings("all")
@WebServlet("/buttonSpu")
public class buttonSpu extends HttpServlet {//按钮查询商品
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out=response.getWriter();
        BlankServe blankServe = new BlankServeImp();
        String name=request.getParameter("name");
        List<Blank>list=new ArrayList<Blank>();//装基本数据

        if (name.equals("qb")){
            list=blankServe.listSpu();
              String json=JSON.toJSONString(list);
              out.print(json);

        }else if (name.equals("sj")){

            int a=1;
            list=blankServe.listStatus(a);
                String json=JSON.toJSONString(list);
                out.print(json);

        }else if (name.equals("sk")){
            list=blankServe.listSk();
                String json=JSON.toJSONString(list);
                out.print(json);

        }else if (name.equals("xj")){
            int a=2;
            list=blankServe.listStatus(a);
                String json=JSON.toJSONString(list);
                out.print(json);
        }
        /*request.getRequestDispatcher("html/upload.jsp").forward(request,response);*/

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request, response);
    }
}
