package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/updateSpu")
public class updateSpu extends HttpServlet {                //修改商品查询页面弹窗修改
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        int id=Integer.parseInt(request.getParameter("id"));//id
        String title=request.getParameter("title");//标题
        int price=Integer.parseInt(request.getParameter("price"));//价格
        String json=request.getParameter("shoeJson");
        System.out.println(json);
        JSONArray shoeJson= JSON.parseArray(json);

        if (id!=0){
            int sum=-1;
            int sum2=0;
            System.out.println(shoeJson);
            for (int i=0;i<shoeJson.size();i++){
                JSONObject object= (JSONObject) shoeJson.get(i);
                System.out.println(object.getString("count"));
                int shoeCount = Integer.parseInt(object.getString("count"));
                int shoeSize=Integer.parseInt(object.getString("size"));
                String color=object.getString("color");
               sum=blankServe.updateShoe(shoeCount,shoeSize,id,color);
            }
            System.out.println(sum);
            if (sum>=0){
              sum2=blankServe.updateSpu(title,price,id);
                if (sum2>0){
                    out.print("true");
                }else {
                    out.print("false");
                }
            }

        }else {
            out.print("false");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
