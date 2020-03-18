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

/**
 * 后台 修改用户转态
 */
@WebServlet("/updateUserStatus")
public class updateUserStatus extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe=new BlankServeImp();
        int status=Integer.parseInt(request.getParameter("status"));
        int id=Integer.parseInt(request.getParameter("id"));
        System.out.println(status);
        if (status==0){
            System.out.println(11);
            int count=blankServe.updateStatus(status,id);
            if (count>0){
                out.print("qy");
            }
        }else if (status==1){
            System.out.println(22);
            int count=blankServe.updateStatus(status,id);
            if (count>0){
                out.print("dj");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
