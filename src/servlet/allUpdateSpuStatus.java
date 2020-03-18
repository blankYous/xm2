package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/allUpdateSpuStatus")
public class allUpdateSpuStatus extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out=response.getWriter();
        BlankServe blankServe = new BlankServeImp();
        int statue=Integer.parseInt(request.getParameter("statue"));
       String a=request.getParameter("json");
        JSONArray json= JSON.parseArray(a);
        System.out.println(json);
        System.out.println(statue);
        int count=-1;
        for (int i=0;i<json.size();i++){
            count=blankServe.updateSpuStatus(statue,Integer.parseInt(json.getString(i)));
            if (count==0){
                break;
            }
        }
        System.out.println(count);
        if (count>0){
            out.print(json.size());
        }else {
            out.print("false");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
