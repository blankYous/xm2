package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import entity.Blank;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/userSeek")
public class userSeek extends HttpServlet {   //用户模糊查询   未用待删
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*        request.setCharacterEncoding("UTF-8");
        response.setContentType("html/text;charset=UTF-8");
        PrintWriter out = response.getWriter();
        BlankServe blankServe = new BlankServeImp();
        String userName = request.getParameter("userName");
        List<Blank> list = new ArrayList<Blank>();
       *//* list = blankServe.allUser(userName);*//*
        request.setAttribute("list", list);
        request.getRequestDispatcher("html/member-list.jsp").forward(request, response);*/
}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
