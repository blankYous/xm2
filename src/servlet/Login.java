package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import entity.Blank;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/login")
public class Login extends HttpServlet {//登入
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        HttpSession session=request.getSession();
        ServletContext context=this.getServletContext();
        PrintWriter out = response.getWriter();
        String user=request.getParameter("user");
        String pwd=request.getParameter("passwd");
        BlankServe blankServe=new BlankServeImp();
        int count=blankServe.user(user,pwd);
        if (count>0){
            Blank blank=new Blank();
            blank.setAccount(user);
            int sum=blankServe.status(user);
            if (sum==0){
                request.getServletContext().setAttribute("user",user);
                out.println(user);
            }else if (sum==1){
                out.print("dj");
            }
            /*context.setAttribute("user",user);//如过不等于空把名字全局共用*/
        }else {
            out.print("false");
        }


       /* list=se.all();
        for (int i=0;i<list.size();i++){
            if(list.get(i).getUser().equals(user)&&list.get(i).getPassword().equals(pwd)){
                      out.println("true");
              break;
            }
        }*/
    }
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
