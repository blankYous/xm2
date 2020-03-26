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

@WebServlet("/delall")
public class delall extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        BlankServe serve=new BlankServeImp();
        String ddhao=req.getParameter("ddhao");
        JSONArray ddhaos= JSON.parseArray(ddhao);
        for (int i=0;i<ddhaos.size();i++){
            String dd=ddhaos.getString(i);
            serve.deletedd(dd);
            serve.deletezdd(dd);
        }
    }
}
