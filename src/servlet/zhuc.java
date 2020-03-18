package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/zhuc")
public class zhuc extends HttpServlet { //注册
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("html/text;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String user=req.getParameter("user");
        String pass=req.getParameter("pass");
        BlankServe blankServe=new BlankServeImp();
       int count=blankServe.selectName(user);
        System.out.println(count);
        if (count>0){
            out.println("false");
        }else if(count<=0){
            int nm=blankServe.userAdd(user,pass);
            System.out.println(nm);
            if (nm>0){
                out.println("true");
            }else{
                out.println("1");
            }
        }
    }
}
