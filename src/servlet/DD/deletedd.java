package servlet.DD;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/deletedd")
public class deletedd extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String ddhao=request.getParameter("ddhao");
        BlankServe se=new BlankServeImp();
        int count=se.deletedd(ddhao);
        if (count>0){
            int cm=se.deletezdd(ddhao);
            if (cm>0){
                out.print(1);
            }
        }
    }
}
