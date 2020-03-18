package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import entity.Blank;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet("/putawayCondition")
public class putawayCondition extends HttpServlet {  //商品规格
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe = new BlankServeImp();
        String title=request.getParameter("title");
        String json=request.getParameter("json");
        //遍历鞋码数组
        List<Map<String,List<Map<String,String>>>>list= (List<Map<String,List<Map<String,String>>>>) JSONArray.parse(json);
        //创建接收数据到数组方便传入三层做数据交互
        Blank blank=new Blank();
        int spuId=blankServe.selectSpuId();
        blank.setId(spuId);
        blank.setTitle(title);
        int sum=-1;
        for (Map<String,List<Map<String,String>>> listlaji:list) {
          for (Map.Entry entry:listlaji.entrySet()){
             blank.setSize(Integer.parseInt(entry.getKey().toString()));
                 //获取颜色跟数量
              List<Map<String,String>>color= (List<Map<String, String>>) JSONArray.parse(entry.getValue().toString());
              for (Map<String,String>count:color) {
                  for (Map.Entry countto: count.entrySet()) {
                        blank.setColor(countto.getKey().toString());
                        blank.setCount(Integer.parseInt(countto.getValue().toString()));

                    sum=blankServe.insertShoe(blank);
                    if (sum<=0){
                        break;
                    }
                  }
              }
          }

        }
        if (sum>0){
            int a=blankServe.updateSpuStatus(1,spuId);
            if (a>0){
                out.print("true");
            }

        }else {
            out.print("false");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
