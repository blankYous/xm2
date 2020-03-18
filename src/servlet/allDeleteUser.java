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
import java.sql.Array;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/allDeleteUser")
public class allDeleteUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        String json=request.getParameter("json");//批量删除id
        JSONArray a= JSON.parseArray(json);
        int count=-1;
        for (int i=0;i<a.size();i++){
            count=blankServe.deleteUser(Integer.parseInt(a.getString(i)));
            if (count==0){
                break;
            }
        }
        if (count>0){
            out.print("true");
        }else {
            out.print("false");
        }
       /* System.out.println(list.size());
        System.out.println(list.get(0));*/

       /* if (ids.length()>0){
            int []id=new int[ids.length()];
            int count=0;
            for (int i=0;i<ids.length();i++){
                 id[i]=Integer.parseInt(String.valueOf(ids.charAt(i)));
                System.out.println(id[i]);
               *//* count=blankServe.deleteUser(id[i]);*//*
                if (count<=0){
                    break;
                }

            }

        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }
}
