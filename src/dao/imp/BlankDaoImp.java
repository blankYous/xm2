package dao.imp;

import dao.BaseDao;
import dao.BlankDao;
import entity.Blank;
import entity.Page;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
@SuppressWarnings("all")
public class BlankDaoImp extends BaseDao implements BlankDao{
    @Override
    public int user(String name, String pwd) {
        String sql = "SELECT COUNT(*) FROM user WHERE account=? AND Pwd=?";
        Object[] param = {name, pwd};
        ResultSet rs = super.exceuteQuery(sql, param);
        int count = 0;
        try {
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int status(String account) {
        String sql="SELECT `status` FROM `user` WHERE account=?";
        Object[]param={account};
        ResultSet rs=null;
        int count=-1;
        try {
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                count=rs.getInt(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int userAdd(String name, String pwd) {
        String sql = "insert into user(account,Pwd) values(?,?) ";
        Object[] params = {name, pwd};
        int count = 0;
        try {
            count = super.exceuteUpdate(sql, params);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int selectName(String name) {
        String sql = "SELECT COUNT(*) FROM user WHERE account=? ";
        Object[] param = {name};
        ResultSet rs = super.exceuteQuery(sql, param);
        int count = 0;
        try {
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }


    @Override
    public List<Blank> listImg(String name) {
        String sql = "SELECT name FROM img WHERE imgId in(SELECT imgId FROM img WHERE  name=?)";
        ResultSet rs = null;
        List<Blank> list = new ArrayList<Blank>();
        Object[] param = {name};
        rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                Blank blank = new Blank();
                blank.setImgName(rs.getString(1));
                list.add(blank);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public String[] listImg(int id) {
        String sql = "SELECT name FROM img WHERE imgId=?";
        ResultSet rs = null;
        String[] imgName = null;
        List<Blank> list = new ArrayList<Blank>();
        Object[] param = {id};
        rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                Blank blank = new Blank();
                blank.setImgName(rs.getString(1));
                list.add(blank);
            }
            imgName = new String[list.size()];
            for (int i = 0; i < list.size(); i++) {
                imgName[i] = list.get(i).getImgName();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return imgName;
    }

    @Override
    public List<Blank> listAll(String name) {
        String sql = "SELECT * FROM spu WHERE imgId =(SELECT imgId FROM img WHERE name=?) and state=1";
        ResultSet rs = null;
        List<Blank> list = new ArrayList<Blank>();
        Object[] param = {name};
        rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                Blank blank = new Blank();
                blank.setId(rs.getInt(1));
                blank.setBrandid(rs.getInt(2));
                blank.setClassifyid(rs.getInt(3));
                blank.setSex(rs.getString(4));
                blank.setTitle(rs.getString(5));
                blank.setOriginalPrice(rs.getInt(6));
                blank.setPrice(rs.getInt(7));
                blank.setImgId(rs.getInt(8));
                blank.setStatus(rs.getInt(9));
                blank.setDate(rs.getString(10));
                list.add(blank);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Blank> listSize(int id) {
        String sql = "SELECT COUNT(size),size FROM shoe WHERE spuId=? GROUP BY size HAVING count(size)>0";
        ResultSet rs = null;
        List<Blank> list = new ArrayList<Blank>();
        Object[] param = {id};
        rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                Blank blank = new Blank();
                blank.setSize(rs.getInt(2));
                list.add(blank);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Blank> listColor(int id) {
        String sql = "SELECT count(color),color  FROM  color WHERE colorId in(SELECT colorId FROM shoe  WHERE spuId =?)   GROUP BY color HAVING count(color)>0";
        ResultSet rs = null;
        List<Blank> list = new ArrayList<Blank>();
        Object[] param = {id};
        rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                Blank blank = new Blank();
                blank.setColor(rs.getString(2));
              /*  for (int i=0;i<list.size();i++){
                    if (list.get(i).getColor()!=blank.getColor()){

                    }else {
                        continue;
                    }
                }*/
                list.add(blank);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public int trade(Blank blank) {
        String sql = "INSERT into gwc(tradeimg,tradeName,tradecolor,tradeshoe,tradeprice,tradecount,userAccount)VALUES(?,?,?,?,?,?,?)";
        Object[] params = {blank.getTradeImg(), blank.getTradeName(), blank.getTradeColor(), blank.getTradeShoe(), blank.getTradePrice(), blank.getTradeCount(), blank.getAccount()};
        int counts = 0;
        try {
            counts = super.exceuteUpdate(sql, params);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return counts;
    }
    @Override
    public int selectcount(Blank blanks) {
        String sql = "select count(*) from gwc where tradeName=? and tradecolor=? and tradeshoe=? and userAccount=?";
        Object[] param = {blanks.getTradeName(),blanks.getTradeColor(),blanks.getTradeShoe(),blanks.getAccount()};
        ResultSet rs = null;
        int sum=0;
        rs = super.exceuteQuery(sql, param);
        try {
            rs.next();
            sum=rs.getInt(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sum;
    }

    @Override
    public int updatecount(String name,String color, String userAccount,int shoe) {
        String sql = "\n" +
                "update gwc set tradecount=tradecount+1 where tradecolor=? and tradeshoe=? and userAccount=? and tradeName=?";
        Object[] params = {color,shoe, userAccount,name};
        int bk = 0;
        try {
            bk = super.exceuteUpdate(sql, params);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bk;
    }
    @Override
    public List<Blank> listgwc(String userAccount) {
        String sql = "select tradeName,tradeprice,tradeimg,tradecolor,tradeshoe,sum(tradecount) from gwc  WHERE userAccount=? GROUP BY tradeName,tradeimg,tradeprice,tradecolor,tradeshoe ORDER BY tradeId DESC ";
        Object[] param = {userAccount};
        ResultSet rs = null;
        List<Blank> list = new ArrayList<Blank>();
        rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                Blank blank = new Blank();
                blank.setTradeName(rs.getString(1));
                blank.setTradePrice(rs.getInt(2));
                blank.setTradeImg(rs.getString(3));
                blank.setTradeColor(rs.getString(4));
                blank.setTradeShoe(rs.getInt(5));
                blank.setTradeCounts(rs.getInt(6));
                list.add(blank);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public int deleteGwc(String img,int size,String color,String userAccount) {
        String sql = "delete from gwc where tradeimg=? AND tradecolor=? AND tradeshoe=? and userAccount=?";
        Object[] param = {img,color,size,userAccount};
        int count = 0;
        try {
            count = super.exceuteUpdate(sql, param);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int selectid(String name, String userAccount) {
        String sql = "select tradeid from gwc where tradeName=? and userAccount=? LIMIT 1";
        Object[] params = {name, userAccount};
        int bk = -1;
        try {
            ResultSet rs = super.exceuteQuery(sql, params);
            while (rs.next()) {
                bk = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bk;
    }

    public int deleteid(int id, String userAccount) {
        String sql = "delete from gwc where tradeid=? and userAccount=? ";
        Object[] params = {id, userAccount};
        int bk = 0;
        try {
            bk = super.exceuteUpdate(sql, params);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bk;
    }

    @Override
    public List<Blank> listxk(String name) {
        String sql = "SELECT * FROM spu  WHERE title LIKE ? and state=1";
        Object[] param = {"%" + name + "%"};
        ResultSet rs = null;
        List<Blank> list = new ArrayList<Blank>();
        rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                Blank blank = new Blank();
                blank.setId(rs.getInt(1));
                blank.setBrandid(rs.getInt(2));
                blank.setClassifyid(rs.getInt(3));
                blank.setSex(rs.getString(4));
                blank.setTitle(rs.getString(5));
                blank.setOriginalPrice(rs.getInt(6));
                blank.setPrice(rs.getInt(7));
                blank.setImgId(rs.getInt(8));

                list.add(blank);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blank> userName(String name) {
        String sql = "SELECT * FROM  user  WHERE account=?";
        Object[] param = {name};
        List<Blank> list = new ArrayList<Blank>();
        ResultSet rs = null;
        rs = super.exceuteQuery(sql, param);
        Blank blank = new Blank();
        try {
            while (rs.next()) {
                blank.setUserId(rs.getInt(1));
                blank.setAccount(rs.getString(2));
                blank.setPwd(rs.getString(3));
                blank.setUserName(rs.getString(4));
                blank.setUserSex(rs.getString(5));
                blank.setBirthday(rs.getString(6));
                blank.setAddress(rs.getString(7));
                list.add(blank);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public String selectPwd(String name) {
        String sql = "select Pwd FROM `user` WHERE account=?";
        Object[] param = {name};
        ResultSet rs = null;
        String pwd = null;
        try {
            rs = super.exceuteQuery(sql, param);
            while (rs.next()) {
                pwd = rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pwd;
    }


    @Override
    public int updatePwd(String pwd, String account) {
        String sql = "UPDATE `user` SET Pwd=?  WHERE account=?";
        Object[] param = {pwd, account};
        int count = super.exceuteUpdate(sql, param);
        return count;
    }

    @Override
    public int selectAlter(Blank blank) {
        String sql = "SELECT COUNT(1) FROM `user` WHERE userName=? AND sex=? AND birthday=? AND address=?  AND account=?";
        Object[] param = {blank.getUserName(), blank.getSex(), blank.getBirthday(), blank.getAddress(), blank.getAccount()};
        ResultSet rs = null;
        int count = 0;
        try {
            rs = super.exceuteQuery(sql, param);
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int updateMessage(Blank blank) {
        String sql = "UPDATE `user` SET userName=? , sex=? , birthday=? , address=? WHERE account=?";
        Object[] param = {blank.getUserName(), blank.getSex(), blank.getBirthday(), blank.getAddress(), blank.getAccount()};
        int count = super.exceuteUpdate(sql, param);
        return count;
    }

    @Override
    public int selectAddress(String account) {
        String sql = "SELECT COUNT(1) FROM directoryinquiries WHERE userAccount=?";
        Object[] param = {account};
        ResultSet rs = super.exceuteQuery(sql, param);
        int count = 0;
        try {
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int insertAddress(Blank blank) {
        String sql = "INSERT into directoryinquiries(recipients,phone,province,city,area,detailed,defaultValue,userAccount)VALUES(?,?,?,?,?,?,?,?);";
        Object[] param = {blank.getRecipients(), blank.getPhone(), blank.getProvince(), blank.getCity(), blank.getArea(), blank.getDetailed(), blank.getDefaultValue(), blank.getAccount()};
        int count = super.exceuteUpdate(sql, param);
        return count;
    }

    @Override
    public List<Blank> listAddress(String account) {
        String sql = "SELECT * FROM `directoryinquiries` WHERE userAccount=? ORDER BY defaultValue";
        Object[] param = {account};
        List<Blank> list = new ArrayList<>();
        ResultSet rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                Blank blank = new Blank();
                blank.setId(rs.getInt(1));
                blank.setRecipients(rs.getString(2));
                blank.setPhone(rs.getString(3));
                blank.setProvince(rs.getString(4));
                blank.setCity(rs.getString(5));
                blank.setArea(rs.getString(6));
                blank.setDetailed(rs.getString(7));
                blank.setDefaultValue(rs.getInt(8));
                blank.setAccount(rs.getString(9));
                list.add(blank);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public int updateAddress(Blank blank) {
        String sql = "UPDATE directoryinquiries SET recipients=?,phone=?,province=?,city=?,area=?,detailed=?,defaultValue=? WHERE id=?";
        Object[] param = {blank.getRecipients(), blank.getPhone(), blank.getProvince(), blank.getCity(), blank.getArea(), blank.getDetailed(), blank.getDefaultValue(), blank.getId()};
        int count = super.exceuteUpdate(sql, param);
        return count;
    }

    @Override
    public int deleteAddress(int id) {
        String sql = "DELETE FROM directoryinquiries WHERE id=?";
        Object[] param = {id};
        int count = super.exceuteUpdate(sql, param);
        return count;
    }

    @Override
    public int listAddress(Blank blank) {
        String sql = "SELECT count(1) FROM `directoryinquiries` WHERE recipients=? AND phone=? AND province=? AND city=? AND area=? AND detailed=? AND defaultValue=? AND userAccount=? AND id=? ";
        Object[] param = {blank.getRecipients(), blank.getPhone(), blank.getProvince(), blank.getCity(), blank.getArea(), blank.getDetailed(), blank.getDefaultValue(), blank.getAccount(), blank.getId()};
        int count = 0;
        ResultSet rs = super.exceuteQuery(sql, param);
        try {
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int updateAddress(int b, int id) {
        String sql = "UPDATE directoryinquiries SET defaultValue=? WHERE id=?";
        Object[] param = {b, id};
        int count = super.exceuteUpdate(sql, param);
        return count;
    }


    public Blank listName(String name,String account,String color,int shoe) {
        String sql = "SELECT tradeimg,tradeName,tradeprice,tradeshoe,tradecolor,count(tradecount) from gwc  where tradeName=? and userAccount=? and tradecolor=? and tradeshoe=? GROUP BY tradeprice,tradeshoe,tradecolor,tradeimg";
        Object[] params = {name,account,color,shoe};
        List<Blank> list = null;
        Blank bk = new Blank();
        try {
            ResultSet rs = super.exceuteQuery(sql, params);
            rs.next();
            bk.setTradeImg(rs.getString(1));
            bk.setTradeName(rs.getString(2));
            bk.setTradePrice(rs.getInt(3));
            bk.setTradeShoe(rs.getInt(4));
            bk.setTradeColor(rs.getString(5));
            bk.setTradeCounts(rs.getInt(6));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bk;
    }

    @Override
    public int addCollect(Blank blank) {
        String sql="INSERT INTO collect(src,title,originalPrice,Price,userAccount) VALUES(?,?,?,?,?)";
        Object[]param={blank.getImgName(),blank.getTitle(),blank.getOriginalPrice(),blank.getPrice(),blank.getAccount()};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }

    @Override
    public List<Blank> listCollect(String account) {
        String sql="select * from collect where userAccount=?";
        Object[]param={account};
        List<Blank>list=new ArrayList<Blank>();
        ResultSet rs=null;
        try{
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                Blank blank=new Blank();
                blank.setId(rs.getInt(1));
                blank.setImgName(rs.getString(2));
                blank.setTitle(rs.getString(3));
                blank.setOriginalPrice(rs.getInt(4));
                blank.setPrice(rs.getInt(5));
                blank.setAccount(rs.getString(6));
                list.add(blank);
            }
        }catch (Exception e){
                e.printStackTrace();
        }
        return list;
    }

    @Override
    public int selectCollect(String name, String account) {
        String sql="select COUNT(1) from collect WHERE src=? AND userAccount=?";
        Object[]param={name,account};
        ResultSet rs=super.exceuteQuery(sql,param);
        int count=0;
        try {
            while (rs.next()){
                count=rs.getInt(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int deleteCollect(int id,String account) {
        String sql="DELETE FROM collect WHERE id=? AND userAccount=?";
        Object[]param={id,account};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }
    @Override
    public List<Blank> selectddhao(String user) {
        String sql="select ddhao,zhifzt,price,countm,ddname from zhubiao where userAccount=?";
        Object[] params={user};
        List<Blank> list=new ArrayList<Blank>();
        try{
            ResultSet rs=super.exceuteQuery(sql,params);
            while (rs.next()){
                Blank bk=new Blank();
                bk.setDdhao(rs.getString(1));
                bk.setZt(rs.getString(2));
                bk.setPrice(rs.getInt(3));
                bk.setCount(rs.getInt(4));
                bk.setDdname(rs.getString(5));
                list.add(bk);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blank> selectwzf(String user) {
        String sql="select ddhao,zhifzt,price,countm,ddname from zhubiao where userAccount=? and zhifzt='未支付'";
        Object[] params={user};
        List<Blank> list=new ArrayList<Blank>();
        try{
            ResultSet rs=super.exceuteQuery(sql,params);
            while (rs.next()){
                Blank bk=new Blank();
                bk.setDdhao(rs.getString(1));
                bk.setZt(rs.getString(2));
                bk.setPrice(rs.getInt(3));
                bk.setCount(rs.getInt(4));
                bk.setDdname(rs.getString(5));
                list.add(bk);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blank> selectdsh(String user) {
        String sql="select ddhao,zhifzt,price,countm,ddname from zhubiao where userAccount=? and zhifzt='待收货'";
        Object[] params={user};
        List<Blank> list=new ArrayList<Blank>();
        try{
            ResultSet rs=super.exceuteQuery(sql,params);
            while (rs.next()){
                Blank bk=new Blank();
                bk.setDdhao(rs.getString(1));
                bk.setZt(rs.getString(2));
                bk.setPrice(rs.getInt(3));
                bk.setCount(rs.getInt(4));
                bk.setDdname(rs.getString(5));
                list.add(bk);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blank> selectysh(String user) {
        String sql="select ddhao,zhifzt,price,countm,ddname from zhubiao where userAccount=? and zhifzt='已收货'";
        Object[] params={user};
        List<Blank> list=new ArrayList<Blank>();
        try{
            ResultSet rs=super.exceuteQuery(sql,params);
            while (rs.next()){
                Blank bk=new Blank();
                bk.setDdhao(rs.getString(1));
                bk.setZt(rs.getString(2));
                bk.setPrice(rs.getInt(3));
                bk.setCount(rs.getInt(4));
                bk.setDdname(rs.getString(5));
                list.add(bk);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blank> selectyzf(String user) {
        String sql="select ddhao,zhifzt,price,countm,ddname from zhubiao where userAccount=? and zhifzt='已支付'";
        Object[] params={user};
        List<Blank> list=new ArrayList<Blank>();
        try{
            ResultSet rs=super.exceuteQuery(sql,params);
            while (rs.next()){
                Blank bk=new Blank();
                bk.setDdhao(rs.getString(1));
                bk.setZt(rs.getString(2));
                bk.setPrice(rs.getInt(3));
                bk.setCount(rs.getInt(4));
                bk.setDdname(rs.getString(5));
                list.add(bk);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }


    @Override
    public List<Blank> selectsum(){
        String sql="select ddhao,name,prices,shoe,yanse,shulian,img from fubiao";
        List<Blank> list=new ArrayList<Blank>();
        try{
            ResultSet rs=super.exceuteQuery(sql,null);
            while (rs.next()){
                Blank bk=new Blank();
                bk.setDdhao(rs.getString(1));
                bk.setTitle(rs.getString(2));
                bk.setDdprice(rs.getInt(3));
                bk.setTradeShoe(rs.getInt(4));
                bk.setColor(rs.getString(5));
                bk.setTradeCounts(rs.getInt(6));
                bk.setTradeImg(rs.getString(7));
                list.add(bk);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int gwcCount(String account) {
        String sql="select sum(tradecount) from gwc where userAccount=?";
        int cm=0;
        Object[] params={account};
        try{
            ResultSet rs=super.exceuteQuery(sql,params);
            while (rs.next()){
                cm=rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return cm;
    }

    @Override
    public int insertDDxxi(Blank blank) {
        String sql="insert into zhubiao(ddhao,price,ddname,dizhi,zhifzt,phone,userAccount,countm) value(?,?,?,?,?,?,?,?);";
        Object[] params={blank.getDdhao(),blank.getDdprice(),blank.getDdname(),blank.getDdzhi(),
                blank.getZt(),blank.getPhones(),blank.getAccount(),blank.getCount()};
        int count=0;
        try{
            count=super.exceuteUpdate(sql,params);
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int insertDDbiao(Blank blank) {
        String sql="insert into fubiao(ddhao,name,prices,shoe,yanse,shulian,img) value(?,?,?,?,?,?,?);";
        Object[] params={blank.getDdhao(),blank.getTradeName(),blank.getTradePrice(),blank.getTradeShoe(),blank.getTradeColor(),blank.getTradeCounts(),blank.getTradeImg()};
        int count=0;
        try{
            count=super.exceuteUpdate(sql,params);
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int deletegwcs(String name,int size,String color,String userAccount) {
        String sql="delete from gwc where tradeName=? AND tradecolor=? AND tradeshoe=? and userAccount=?";
        Object []params={name,color,size,userAccount};
        int count=0;
        try{
            count=super.exceuteUpdate(sql,params);
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }
    @Override
    public int updateDD(String zhifzt,String ddhao,String date,String user) {
        String sql="update zhubiao set zhifzt=? ,paymentDate=? where ddhao=? and userAccount=?";
        Object[] params={zhifzt,date,ddhao,user};
        int cout=0;
        try{
            cout=super.exceuteUpdate(sql,params);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cout;
    }

    @Override
    public int deletedd(String ddhao) {
        String sql="delete from fubiao where ddhao=?";
        Object[] params={ddhao};
        int count=0;
        try{
            count=super.exceuteUpdate(sql,params);
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int deletezdd(String ddhao) {
        String sql="delete from zhubiao where ddhao=?";
        Object[] params={ddhao};
        int count=0;
        try{
            count=super.exceuteUpdate(sql,params);
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public Blank selectkucun(int size, String color, String title, int price) {
        String sql="select count,size,colorId,spuId from shoe where size=? and colorId=(select colorId from color where color=?) and spuId\n" +
                "=(select id from spu where title=? and price=?)";
        Object[] params={size,color, title,price};
        int sum=0;
        Blank bk=new Blank();
        try{
            ResultSet rs=super.exceuteQuery(sql,params);
            while (rs.next()){
                bk.setTradeCounts(rs.getInt(1));
                bk.setTradeShoe(rs.getInt(2));
                bk.setTradeColor(rs.getString(3));
                bk.setTradeId(rs.getInt(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bk;
    }
    public int updatekucun(Blank blank){
        String sql="update shoe set count=? where size=? and colorId=? and spuId=?";
        Object[] params={blank.getTradeCounts(),blank.getTradeShoe(),blank.getTradeColor(),blank.getTradeId()};
        int count=0;
        try{
            count=super.exceuteUpdate(sql,params);
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int allUser(String userName) {
        String sql="SELECT count(1) FROM `user` where userName like ?";
        Object[]param={"%"+userName+"%"};
        ResultSet rs=null;
      int sum=-1;
        try {
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
            sum=rs.getInt(1);
            }
        }catch (Exception e){
        }
        return sum;
    }

    @Override
    public List<Blank> allUser(String userName,int page,int pageMax) {
        String sql="SELECT * FROM `user` where userName like ? ORDER BY id limit ?,?";
        Object[]param={"%"+userName+"%",(page-1)*pageMax,pageMax};
        ResultSet rs=null;
        List<Blank>list=new ArrayList<Blank>();
        try {
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                Blank blank=new Blank();
                blank.setId(rs.getInt(1));
                blank.setAccount(rs.getString(2));
                blank.setPwd(rs.getString(3));
                blank.setUserName(rs.getString(4));
                blank.setUserSex(rs.getString(5));
                blank.setBirthday(rs.getString(6));
                blank.setAddress(rs.getString(7));
                blank.setStatus(rs.getInt(8));
                list.add(blank);
            }
        }catch (Exception e){

        }
        return list;
    }

    @Override
    public int updateStatus(int status,int id) {
        String sql="UPDATE `user` SET status=? WHERE id=?";
        Object[]param={status,id};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }

    @Override
    public int deleteUser(int id) {
        String sql="DELETE FROM user WHERE id=?";
        Object[]param={id};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }

    @Override
    public List<Blank> listSpu(Blank blank) {/**//*,*/
        String sql="select spu.id,brand.brandName,classify.classifyName,spu.sex,spu.title,spu.originalPrice,spu.price,img.`name`,spu.state,shoe.count,spu.sales,spu.date\n" +
                "FROM (SELECT * FROM spu) spu, (SELECT * FROM brand) brand,(SELECT * FROM classify) classify,(SELECT * FROM img) img,(SELECT SUM(count) count,spuId  FROM shoe GROUP  BY spuId) shoe\n" +
                "WHERE spu.id=shoe.spuId AND spu.imgId=img.imgId AND spu.brandid=brand.id AND classify.id=spu.classifyid   \n" +
                "AND spu.id LIKE ? AND spu.title LIKE ? AND brand.brandName LIKE ? AND  classify.classifyName LIKE ? AND spu.price between ? and ?\n" +
                "GROUP BY spu.id ";
        Object []param={"%"+blank.getId()+"%","%"+blank.getTitle()+"%","%"+blank.getBrandName()+"%","%"+blank.getClassification()+"%",blank.getPrice(),blank.getOriginalPrice()};
        List<Blank>list=new ArrayList<Blank>();
        ResultSet rs=null;
        try{
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                Blank  blank2 = new Blank();
                blank2.setId(rs.getInt(1));
                blank2.setBrandName(rs.getString(2));
                blank2.setClassification(rs.getString(3));
                blank2.setSex(rs.getString(4));
                blank2.setTitle(rs.getString(5));
                blank2.setOriginalPrice(rs.getInt(6));
                blank2.setPrice(rs.getInt(7));
                blank2.setImgName(rs.getString(8));
                blank2.setStatus(rs.getInt(9));
                blank2.setCount(rs.getInt(10));
                blank2.setSales(rs.getInt(11));
                blank2.setDate(rs.getString(12));
                list.add(blank2);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public  List<Blank> selectCount(int id) {
        String sql="select size,color,count FROM shoe,color WHERE shoe.colorId=color.colorId AND spuid=? ORDER BY shoe.colorId";
        Object[]param={id};
        List<Blank>lsit=new ArrayList<Blank>();
       int count=-1;
        ResultSet rs=null;
        try{
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                Blank blank=new Blank();
                blank.setSize(rs.getInt(1));
                blank.setColor(rs.getString(2));
                blank.setCount(rs.getInt(3));
                lsit.add(blank);

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return lsit;
    }
    @Override
    public List<Blank> listSpu() {
        String sql="select spu.id,brand.brandName,classify.classifyName,spu.sex,spu.title,spu.originalPrice,spu.price,img.`name`,spu.state,shoe.count,spu.sales,spu.date\n" +
                "FROM (SELECT * FROM spu) spu, (SELECT * FROM brand) brand,(SELECT * FROM classify) classify,(SELECT * FROM img) img,(SELECT SUM(count) count,spuId  FROM shoe GROUP  BY spuId) shoe\n" +
                "WHERE spu.id=shoe.spuId AND spu.imgId=img.imgId AND spu.brandid=brand.id AND classify.id=spu.classifyid  \n" +
                "GROUP BY spu.id";
        List<Blank>list=new ArrayList<Blank>();
        ResultSet rs=null;

        try{
            rs=super.exceuteQuery(sql,null);
            while (rs.next()){
                Blank  blank = new Blank();
                blank.setId(rs.getInt(1));
                blank.setBrandName(rs.getString(2));
                blank.setClassification(rs.getString(3));
                blank.setSex(rs.getString(4));
                blank.setTitle(rs.getString(5));
                blank.setOriginalPrice(rs.getInt(6));
                blank.setPrice(rs.getInt(7));
                blank.setImgName(rs.getString(8));
                blank.setStatus(rs.getInt(9));
                blank.setCount(rs.getInt(10));
                blank.setSales(rs.getInt(11));
                blank.setDate(rs.getString(12));
                list.add(blank);
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blank> listStatus(int status) {
        String sql="select spu.id,brand.brandName,classify.classifyName,spu.sex,spu.title,spu.originalPrice,spu.price,img.`name`,spu.state,shoe.count,spu.sales,spu.date\n" +
                "FROM (SELECT * FROM spu) spu, (SELECT * FROM brand) brand,(SELECT * FROM classify) classify,(SELECT * FROM img) img,(SELECT SUM(count) count,spuId  FROM shoe GROUP  BY spuId) shoe\n" +
                "WHERE spu.id=shoe.spuId AND spu.imgId=img.imgId AND spu.brandid=brand.id AND classify.id=spu.classifyid   and spu.state=?\n" +
                "GROUP BY spu.id ";
        Object[]param={status};
        List<Blank>list=new ArrayList<Blank>();
        ResultSet rs=null;
        try {
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                Blank  blank = new Blank();
                blank.setId(rs.getInt(1));
                blank.setBrandName(rs.getString(2));
                blank.setClassification(rs.getString(3));
                blank.setSex(rs.getString(4));
                blank.setTitle(rs.getString(5));
                blank.setOriginalPrice(rs.getInt(6));
                blank.setPrice(rs.getInt(7));
                blank.setImgName(rs.getString(8));
                blank.setStatus(rs.getInt(9));
                blank.setCount(rs.getInt(10));
                blank.setSales(rs.getInt(11));
                blank.setDate(rs.getString(12));
                list.add(blank);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blank> listSk() {
        String sql="select spu.id,brand.brandName,classify.classifyName,spu.sex,spu.title,spu.originalPrice,spu.price,img.`name`,spu.state,shoe.count,spu.sales,spu.date\n" +
                "FROM (SELECT * FROM spu) spu, (SELECT * FROM brand) brand,(SELECT * FROM classify) classify,(SELECT * FROM img) img,(SELECT SUM(count) count,spuId  FROM shoe GROUP  BY spuId) shoe\n" +
                "WHERE spu.id=shoe.spuId AND spu.imgId=img.imgId AND spu.brandid=brand.id AND classify.id=spu.classifyid   and  shoe.count=0\n" +
                "GROUP BY spu.id ";
        List<Blank>list=new ArrayList<Blank>();
        ResultSet rs=null;
        try {
            rs=super.exceuteQuery(sql,null);
            while (rs.next()){
                Blank  blank = new Blank();
                blank.setId(rs.getInt(1));
                blank.setBrandName(rs.getString(2));
                blank.setClassification(rs.getString(3));
                blank.setSex(rs.getString(4));
                blank.setTitle(rs.getString(5));
                blank.setOriginalPrice(rs.getInt(6));
                blank.setPrice(rs.getInt(7));
                blank.setImgName(rs.getString(8));
                blank.setStatus(rs.getInt(9));
                blank.setCount(rs.getInt(10));
                blank.setSales(rs.getInt(11));
                blank.setDate(rs.getString(12));
                list.add(blank);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int updateSpuStatus(int status, int id) {
        String sql="UPDATE spu SET state=?  WHERE id=?";
        Object[] param={status,id};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }

    @Override
    public int updateSpu(String title,int price, int id) {
        String sql="UPDATE spu SET spu.title=? , spu.price=? WHERE id=?";
        Object[]param={title,price,id};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }

    @Override
    public int updateShoe(int count,int size,int id,String color) {
        String sql="UPDATE shoe SET shoe.count=?   WHERE shoe.size=? AND shoe.spuId=? AND shoe.colorId=(SELECT colorId FROM color WHERE color=?)";
        Object[]param={count,size,id,color};
        int count2=super.exceuteUpdate(sql,param);
        return count2;
    }

    @Override
    public int imgMax() {
        String sql="SELECT MAX(imgId) FROM img";
        ResultSet rs=null;
        int imgId=0;
        try {
            rs=super.exceuteQuery(sql,null);
            while (rs.next()){
                imgId=rs.getInt(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return imgId;
    }

    @Override
    public int insetImg(String img,int imgId) {
        String sql="INSERT INTO img(name,imgId) VALUES(?,?) ";
        Object[]param={img,imgId};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }

    @Override
    public int insertSpu(Blank blank, int imgId) {
        String sql="INSERT INTO spu(brandid,classifyid,sex,title,originalPrice,price,imgId,date) VALUES((SELECT id FROM brand WHERE brandName=?),(SELECT id FROM classify WHERE classifyName=?) ,?,?,?,?,?,?)";
        Object[]param={blank.getBrandName(),blank.getClassification(),blank.getSex(),blank.getTitle(),blank.getOriginalPrice(),blank.getPrice(),imgId,blank.getDate()};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }

    @Override
    public int insertShoe(Blank blank) {
        String sql="INSERT INTO shoe (name,size,count,colorId,spuId) VALUES(?,?,?,(SELECT id FROM color WHERE color=? ),?)";
        Object[]param={blank.getTitle(),blank.getSize(),blank.getCount(),blank.getColor(),blank.getId()};
        int count=super.exceuteUpdate(sql,param);
        return count;
    }

    @Override
    public int selectSpuId() {
        String sql="SELECT MAX(id) FROM spu";
        ResultSet rs=null;
        int id=-1;
        try {
            rs=super.exceuteQuery(sql,null);
            while (rs.next()){
                id=rs.getInt(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return id;
    }

    @Override
    public int deal(String date) {
        String sql="SELECT count(1) FROM zhubiao WHERE zhifzt='已支付' AND paymentDate LIKE ?";
        Object[] param={"%"+date+"%"};
        int count=0;
        ResultSet rs=null;
        try {
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                count=rs.getInt(1);
            }
        }catch (Exception e){

        }
        return count;
    }

    @Override
    public int money(String date) {
        String sql="SELECT SUM(price) FROM zhubiao WHERE zhifzt='已支付' AND paymentDate LIKE ?";
        Object[] param={"%"+date+"%"};
        int count=0;
        ResultSet rs=null;
        try {
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                count=rs.getInt(1);
            }
        }catch (Exception e){

        }
        return count;
    }

    @Override
    public int shoeSales(String name,String date) {
        String sql="SELECT count(1) FROM zhubiao,fubiao WHERE zhifzt='已支付' AND paymentDate LIKE ? AND name LIKE ? AND zhubiao.ddhao=fubiao.ddhao";
        Object[] param={"%"+date+"%","%"+name+"%"};
        int count=0;
        ResultSet rs=null;
        try {
            rs=super.exceuteQuery(sql,param);
            while (rs.next()){
                count=rs.getInt(1);
            }
        }catch (Exception e){

        }
        return count;
    }


}
