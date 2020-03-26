package servlet.houtai;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import dao.BlankDao;
import dao.imp.BlankDaoImp;
import entity.Blank;
import entity.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/htselectdd")
@SuppressWarnings("all")
public class SelectDD extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        List<Blank> list = new ArrayList<Blank>();
        Blank bks=new Blank();
        String ids=req.getParameter("id");
        int id=-1;
        if (ids==null){
            id=0;
        }else{
            id=Integer.parseInt(ids);
        }
        BlankServe se = new BlankServeImp();
        Page page=new Page();
        String a=req.getParameter("page"); //当前页数
        BlankDao bk=new BlankDaoImp();
        if (id==0){
            bks=null;
        }else if(id==1){
            String ddhao = req.getParameter("ddhao");
            String start = req.getParameter("start");
            String end=req.getParameter("end");
            String zt=req.getParameter("zt");
            String fs=req.getParameter("fs");
            String dd=req.getParameter("dd");
            if (ddhao==""||ddhao==null){
                ddhao=null;
            }
            bks.setDdhao(ddhao);
            if (start==""||start==null){
                start=null;
            }
            bks.setTime(start);
            if (end==""||end==null){
                end=null;
            }
            bks.setTimes(end);
            if (zt==""||zt==null){
                zt=null;
            }
            bks.setZt(zt);
            if (fs==""||fs==null){
                fs=null;
            }
            bks.setFkmoney(fs);
            if (dd==""||dd==null){
                dd=null;
            }
            bks.setDdzt(dd);
        }
        int sum=bk.selectcount();
        int pageCount=sum%5==0?sum/5:sum/5+1;
        if (a==null){
           page.setPage(1);
        }else if (a!=null){
            int b=Integer.parseInt(a);
            if (b<=0) {
                b = 1;
                page.setPage(b);
            }else if(b>sum){
                page.setPage(page.getPageSum());
            }else {
                page.setPage(b);
            }
        }
        if (bks==null){
            System.out.println("为空哈哈");
        }else{
            System.out.println("不为空");
        }
        page=se.selecttj(bks,page.getPage(),5);
        list=page.getList();
        req.setAttribute("pagemax",page.getPageSum());
        req.setAttribute("page",page.getPage());
        req.setAttribute("pagecount",page.getConutSum());
        req.setAttribute("list",list);
        req.getRequestDispatcher("html/order-list.jsp").forward(req,resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          this.doGet(req, resp);
    }
}
