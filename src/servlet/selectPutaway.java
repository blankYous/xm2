package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
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
@SuppressWarnings("all")
@WebServlet("/selectPutaway")
public class selectPutaway extends HttpServlet {  //模糊查询
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out=response.getWriter();
        BlankServe blankServe = new BlankServeImp();
        String bh=request.getParameter("id");//商品编码
        String title=request.getParameter("title");//商品标题
        String brand=request.getParameter("brand");//商品品牌
        String classify=request.getParameter("classify");//商品类型
        String jg=request.getParameter("price");//价格1 范围
        String jg2=request.getParameter("price2");
        String status=request.getParameter("status");
        String xz=request.getParameter("count");
        int shoe=-1;
        int id=-1;
        int price=-1;
        int price2=-1;
        if (status==null){
            status="";
        }
        if (xz==""||xz==null){
            shoe=999999999;
        }else {
            shoe=Integer.parseInt(xz);
        }
        if (bh==""||bh==null){
            id=0;
        }else {
            id=Integer.parseInt(bh);
        }

        if (jg==""||jg==null){
         price=0;
        }else {
            price=Integer.parseInt(jg);
        }
        if (jg2==""||jg2==null) {
            price2 = 999999999;
        }else {
            price2=Integer.parseInt(jg2);
        }
        if (title==null){
            title="";
        }
        if (brand==null){
            brand="";
        }
        if (classify==null){
            classify="";
        }


        Blank blank=new Blank();
        blank.setId(id);
        blank.setTitle(title);
        blank.setBrandName(brand);
        blank.setClassification(classify);
        blank.setPrice(price);
        blank.setOriginalPrice(price2);




      /*  pages.setConutSum();*/

        List<Blank>list=blankServe.listSpu(blank);

      /*  List<Integer>listCount=new ArrayList<Integer>();

        for (int i=0;i<list.size();i++){
            listCount.add(blankServe.selectCount(list.get(i).getId()));
        }

        request.setAttribute("listCount",listCount);//数量
*/
      request.setAttribute("list",list);
        request.getRequestDispatcher("html/upload.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
