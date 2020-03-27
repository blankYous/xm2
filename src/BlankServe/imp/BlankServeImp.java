package BlankServe.imp;

import BlankServe.BlankServe;
import dao.BlankDao;
import dao.imp.BlankDaoImp;
import entity.Blank;
import entity.Page;

import java.util.List;

public class BlankServeImp implements BlankServe{
    BlankDao blankDao=new BlankDaoImp();

    @Override
    public int user(String name, String pwd) {
        return blankDao.user(name,pwd);
    }

    @Override
    public int status(String account) {
        return blankDao.status(account);
    }

    @Override
    public int userAdd(String name,String pwd) {
        return blankDao.userAdd(name, pwd);
    }

    @Override
    public int selectName(String name) {
        return blankDao.selectName(name);
    }

    @Override
    public List<Blank> listImg(String name) {
        List<Blank>list=blankDao.listImg(name);
        return list;
    }

    @Override
    public String[] listImg(int id) {
        return blankDao.listImg(id);
    }

    @Override
    public List<Blank> listAll(String name) {
        List<Blank>list=blankDao.listAll(name);
        return list;
    }

    @Override
    public List<Blank> listSize(int id) {
        List<Blank>list=blankDao.listSize(id);
        return list;
    }

    @Override
    public List<Blank> listColor(int id) {
        List<Blank>list=blankDao.listColor(id);
        return list;
    }

    @Override
    public int trade(Blank blank) {
        return blankDao.trade(blank);
    }
    @Override
    public int selectcount(Blank blank) {
        return blankDao.selectcount(blank);
    }

    @Override
    public int updatecount(int count,String name,String color, String userAccount,int shoe) {
        return blankDao.updatecount(count,name,color,userAccount,shoe);
    }
    @Override
    public List<Blank> listgwc(String userAccount) {
        return blankDao.listgwc(userAccount);
    }

    @Override
    public int deleteGwc(String img,int size,String color,String userAccount) {
        return blankDao.deleteGwc(img,size,color,userAccount);
    }

    @Override
    public int selectid(String name, String userAccount) {
        return blankDao.selectid(name,userAccount);
}

    @Override
    public int deleteid(int id, String userAccount) {
        return blankDao.deleteid(id,userAccount);
    }


    @Override
    public List<Blank> listxk(String name) {
        return blankDao.listxk(name);
    }

    @Override
    public List<Blank> userName(String name) {
        return blankDao.userName(name);
    }

    @Override
    public String selectPwd(String name) {
        return blankDao.selectPwd(name);
    }

    @Override
    public int updatePwd(String pwd,String account) {
        return blankDao.updatePwd(pwd,account);
    }

    @Override
    public int selectAlter(Blank blank) {
        return blankDao.selectAlter(blank);
    }

    @Override
    public int updateMessage(Blank blank) {
        return blankDao.updateMessage(blank);
    }

    @Override
    public int selectAddress(String account) {
        return blankDao.selectAddress(account);
    }

    @Override
    public int insertAddress(Blank blank) {
        return blankDao.insertAddress(blank);
    }

    @Override
    public List<Blank> listAddress(String account) {
        return blankDao.listAddress(account);
    }

    @Override
    public int updateAddress(Blank blank) {
        return blankDao.updateAddress(blank);
    }

    @Override
    public int deleteAddress(int id) {
        return blankDao.deleteAddress(id);
    }

    @Override
    public int listAddress(Blank blank) {
        return blankDao.listAddress(blank);
    }

    @Override
    public int updateAddress(int b, int id) {
        return blankDao.updateAddress(b,id);
    }

    @Override
    public Blank listName(String name ,String account,String color,int shoe) {
        return blankDao.listName(name,account,color,shoe);
    }
    @Override
    public Blank listName2(String name ,String account,String color,int shoe) {
        return blankDao.listName2(name,account,color,shoe);
    }
    @Override
    public int addCollect(Blank blank) {
        return blankDao.addCollect(blank);
    }

    @Override
    public List<Blank> listCollect(String account) {
        return blankDao.listCollect(account);
    }

    @Override
    public int selectCollect(String name, String account) {
        return blankDao.selectCollect(name,account);
    }

    @Override
    public int deleteCollect(int id,String account) {
        return blankDao.deleteCollect(id,account);
    }



    @Override
    public List<Blank> allUser(String userName,int page,int pageMax) {
        return blankDao.allUser(userName,page,pageMax);
    }

    @Override
    public Page page(String userName,int page, int pageMax) {
        Page page1=new Page();
        page1.setPage(page);//当前页数
        page1.setPageMax(pageMax);//每页显示数量
        int sum=blankDao.allUser(userName);
        page1.setConutSum(sum);//总记录数
        int count=sum%pageMax==0?sum/pageMax:sum/pageMax+1;
        page1.setPageSum(count);//总页数
        page1.setList(blankDao.allUser(userName,page,pageMax));
        return page1;
    }

    @Override
    public int updateStatus(int status, int id) {
        return blankDao.updateStatus(status,id);
    }

    @Override
    public int deleteUser(int id) {
        return blankDao.deleteUser(id);
    }

    @Override
    public int insertDDxxi(Blank blank) {
        return blankDao.insertDDxxi(blank);
    }

    @Override
    public int insertDDbiao(Blank blank) {
        return blankDao.insertDDbiao(blank);
    }

    @Override
    public int deletegwcs(String name,int size,String color,String userAccount) {
        return blankDao.deletegwcs(name,size,color,userAccount);
    }

    @Override
    public int updateDD(String zhifzt,String ddhao,String date,String user,String ddzt) {
        return blankDao.updateDD(zhifzt,ddhao,date,user,ddzt);
    }

    @Override
    public int deletedd(String ddhao) {
        return blankDao.deletedd(ddhao);
    }

    @Override
    public int deletezdd(String ddhao) {
        return blankDao.deletezdd(ddhao);
    }

    @Override
    public Blank selectkucun(int size, String color, String title, int price) {
        return blankDao.selectkucun(size,color,title,price);
    }

    @Override
    public List<Blank> selectddhao(String user) {
        return blankDao.selectddhao(user);
    }

    @Override
    public List<Blank> selectwzf(String user) {
        return blankDao.selectwzf(user);
    }

    @Override
    public List<Blank> selectdfh(String user) {
        return blankDao.selectdfh(user);
    }

    @Override
    public List<Blank> selectyfh(String user) {
        return blankDao.selectyfh(user);
    }

    @Override
    public List<Blank> selectyzf(String user) {
        return blankDao.selectyzf(user);
    }


    @Override
    public List<Blank> selectsum() {
        return blankDao.selectsum();
    }

    @Override
    public int updatekucun(Blank blank) {
        return blankDao.updatekucun(blank);
    }
    @Override
    public int gwcCount(String account) {
       return blankDao.gwcCount(account);
    }

    @Override
    public List<Blank> listSpu(Blank blank) {
        return blankDao.listSpu(blank);
    }

   /* @Override
    public String selectBrand(int id) {
        return blankDao.selectBrand(id);
    }

    @Override
    public String selectClassify(int id) {
        return blankDao.selectClassify(id);
    }*/

    @Override
    public List<Blank> selectCount(int id) {
        return blankDao.selectCount(id);
    }

  /*  @Override
    public int countSpu(Blank blank) {
        return blankDao.countSpu(blank);
    }*/

   /* @Override
    public String selectImg(int id) {
        return blankDao.selectImg(id);
    }*/

    @Override
    public List<Blank> listSpu() {
        return blankDao.listSpu();
    }

    @Override
    public List<Blank> listStatus(int status) {
        return blankDao.listStatus(status);
    }

/*    @Override
    public List<Integer> listSpuId() {
        return blankDao.listSpuId();
    }*/

    @Override
    public List<Blank> listSk() {
        return blankDao.listSk();
    }

    @Override
    public int updateSpuStatus(int status, int id) {
        return blankDao.updateSpuStatus(status,id);
    }

    @Override
    public int updateSpu(String title,int price, int id) {
        return blankDao.updateSpu(title, price, id);
    }

    @Override
    public int updateShoe(int count,int size,int id,String color) {
        return blankDao.updateShoe(count, size, id,color);
    }

    @Override
    public int imgMax() {
        return blankDao.imgMax();
    }

    @Override
    public int insetImg(String img,int imgId) {
        return blankDao.insetImg(img,imgId);
    }

    @Override
    public int insertSpu(Blank blank, int imgId) {
        return blankDao.insertSpu(blank,imgId);
    }

    @Override
    public int insertShoe(Blank blank) {
        return blankDao.insertShoe(blank);
    }

    @Override
    public int selectSpuId() {
        return blankDao.selectSpuId();
    }

    @Override
    public int deal(String date) {
        return blankDao.deal(date);
    }

    @Override
    public int money(String date) {
        return blankDao.money(date);
    }

    @Override
    public int shoeSales(String name, String date) {
        return blankDao.shoeSales(name,date);
    }


//    @Override
//    public List<Blank> listxk(int price, int price2) {
//        return blankDao.listxk(price,price2);
//    }
//没用了
@Override
public Page selectpage(int page, int pagemax) {
    Page page1 = new Page();
    page1.setPage(page);
    int count=blankDao.selectcount();
    page1.setConutSum(count);
    int pagecount=count%pagemax==0?count/pagemax:count/pagemax+1;
    page1.setPageSum(pagecount);
    page1.setList(blankDao.htselectdd((page-1)*pagemax,pagemax));
    return page1;
}

    @Override
    public Page selecttj(Blank bk, int page, int pagemax) {
        Page pages=new Page();
        pages.setPage(page);
        int count=blankDao.selectcount();
        pages.setConutSum(count);
        int pagecount=count%pagemax==0?count/pagemax:count/pagemax+1;
        pages.setPageSum(pagecount);
        pages.setList(blankDao.selecttj(bk,(page-1)*pagemax,pagemax));
        return pages;
    }

    @Override
    public int updateFh(String ddhao) {
        return blankDao.updateFh(ddhao);
    }

    @Override
    public int selectSales(int spuId) {
        return blankDao.selectSales(spuId);
    }

    @Override
    public int updateSales(int sales, int spuId) {
        return blankDao.updateSales(sales,spuId);
    }
}
