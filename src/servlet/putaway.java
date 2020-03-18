package servlet ;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import entity.Blank;
import entity.uploading;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static entity.uploading.getPhotoNewName;

@WebServlet("/putaway")
public class putaway extends HttpServlet {  //上传图片指定文件夹     上架
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        BlankServe blankServe=new BlankServeImp();
        PrintWriter out=response.getWriter();
        //设置接受新增数据的list
        List<String> list=new ArrayList<String>();
        ServletContext servletContext=null;
        servletContext=request.getSession().getServletContext();
        //数据库中存储格式:/webTest/imgs/***.jpg
        //第一步:获取页面上上传的图片资源
        List<FileItem> items= uploading.getRequsetFileItems(request,servletContext);
        boolean isLoadToSQL=false;
        for(FileItem item:items) {

            if(!item.isFormField()){
                //获取插入数据库的图片名称
                String filename =item.getName();
                //获取图片
                String image="images/"+filename;
                //判断后缀名是否是jpg、png、gif、jpg、jpeg
                if(uploading.isGif(item)) {
                    item.getString("UTF-8");//设置字符集
                    isLoadToSQL=uploading.saveFile(item,filename);//添加到指定文件夹
                    list.add(image);//把图片放入list

                }else {

                    //如果文件为空那么就不插入图片
                    image="";
                    System.out.println("后缀格式有误，保存文件失败");
                }
            }else {
                
                //获取表单中的非文件值
                list.add(item.getString("UTF-8"));
            }
           /* System.out.println(item.getString("UTF-8"));*/
        }
        for (String a:list){
            System.out.println(a);
        }
        //实体类赋值
        Blank blank=new Blank();
        blank.setTitle(list.get(0));
        blank.setSex(list.get(1));
        blank.setBrandName(list.get(2));
        blank.setClassification(list.get(3));
        blank.setOriginalPrice(Integer.parseInt(list.get(4)));
        blank.setPrice(Integer.parseInt(list.get(5)));
        String []img=new String[list.size()-6];
        if (list.size()==9){
            img[0]=list.get(6);
            img[1]=list.get(7);
            img[2]=list.get(8);
        }else {
            img[0]=list.get(6);
            img[1]=list.get(7);
            img[2]=list.get(8);
            img[3]=list.get(9);
        }
        int imgMax=blankServe.imgMax();
        int imgid=imgMax+1;
        int sum=-1;
       for (int i=0;i<img.length;i++){
            sum=blankServe.insetImg(img[i],imgid);
            if (sum==0){
                break;
            }
       }
        if (sum>=0){
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//设置日期格式
            String date=df.format(new Date());// new Date()为获取当前系统时间
            blank.setDate(date);
            int sum2=blankServe.insertSpu(blank,imgid);
            if (sum2>0){
                out.print("true");
            }
        }


    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

