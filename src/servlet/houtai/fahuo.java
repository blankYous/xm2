package servlet.houtai;

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

@WebServlet("/Fahuo")
public class fahuo extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        System.out.println(1);
        PrintWriter out = resp.getWriter();
        BlankServe serve=new BlankServeImp();
        String fh=req.getParameter("checker");
        int cm=0;
        JSONArray aty= JSON.parseArray(fh);
        for (int i=0;i<aty.size();i++){
            String dd=aty.getString(i);
            cm=serve.updateFh(dd);
        }
        if (cm>0){
            out.println("true");
            System.out.println("true");
        }
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
              this.doGet(req, resp);
    }

}
