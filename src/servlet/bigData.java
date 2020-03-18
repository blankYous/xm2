package servlet;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/bigData")
public class bigData extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setCharacterEncoding("UTF-8");
       response.setContentType("html/text;charset=UTF-8");
        BlankServe blankServe=new BlankServeImp();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        String date=df.format(new Date());// new Date()为获取当前系统时间

        SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM");//设置日期格式
        String month=df2.format(new Date());//为获取当月

        int dayCount=blankServe.deal(date);//获取日交易次数
        int monthCount=blankServe.deal(month);//获取月交易次数
        int daySum=blankServe.money(date);//获取日交易金额
        int monthSum=blankServe.money(month);//获取月交易金额

        int adidas=blankServe.shoeSales("adidas",date);//获取adidas的日销量
        int Nike=blankServe.shoeSales("耐克",date);//耐克
        int biaoma=blankServe.shoeSales("彪马",date);//彪马
        int yaseshi=blankServe.shoeSales("亚瑟士",date);//亚瑟士
        int kuangwei=blankServe.shoeSales("匡威",date);//匡威
        int lining=blankServe.shoeSales("李宁",date);//李宁
        int kami=blankServe.shoeSales("卡米",date);//卡米
        int NB=blankServe.shoeSales("NB",date);//NB
        request.setAttribute("dayCount",dayCount);
        request.setAttribute("monthCount",monthCount);
        request.setAttribute("daySum",daySum);
        request.setAttribute("monthSum",monthSum);
        request.setAttribute("adidas",adidas);
        request.setAttribute("Nike",Nike);
        request.setAttribute("biaoma",biaoma);
        request.setAttribute("yaseshi",yaseshi);
        request.setAttribute("kuangwei",kuangwei);
        request.setAttribute("lining",lining);
        request.setAttribute("kami",kami);
        request.setAttribute("NB",NB);
        request.getRequestDispatcher("html/welcome.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
