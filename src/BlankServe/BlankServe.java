package BlankServe;

import entity.Blank;
import entity.Page;

import java.util.List;

public interface BlankServe {
    //查询用户
    int user(String name,String pwd);
    //查询用户状态码
    int status(String account);
    //新增用户
    int userAdd(String name,String pwd);
    //查询用户名是否存在
    int selectName(String name);
    //搜素图片
    List<Blank> listImg(String name);
    //搜素图片     根据图片id
    String[] listImg(int id);
    //查询所有
    List<Blank>listAll(String name);
    //查询鞋子码数  根据id查询
    List<Blank>listSize(int id);
    //查出颜色
    List<Blank>listColor(int id);
    //新增购物车数据
    //查询同样鞋子数量
    int selectcount(Blank blank);
    //修改同样鞋子数量
    int updatecount(String name,String color, String userAccount,int shoe);
    int trade(Blank blank);
    //查询购物车数据
    List<Blank>listgwc(String userAccount);
    //删除购物车数据
    int deleteGwc(String img,int size,String color,String userAccount);
    //修改购物车页面鞋子数量
    int selectid(String name,String userAccount);   //查询出id
    int deleteid(int id,String userAccount);              //根据查询出的id删除所项
    //根据名字模糊查询数据
    List<Blank>listxk(String name);
 /*   //查询多少钱到多少钱之间
    List<Blank>listxk(int price,int price2);*/
 //查询用户信息
    List<Blank>userName(String name);
    //查询密码是否正确   根据账户
    String selectPwd(String name);
    //修改密码
    int updatePwd(String pwd,String account);
    //查询是否改变
    int selectAlter(Blank blank);
    //修改用户信息 根据账户
    int updateMessage(Blank blank);
    //查询用户收货地址有几个
    int selectAddress(String account);
    //新增收货地址
    int insertAddress(Blank blank);
    //查询收货地址 根据账号
    List<Blank>listAddress(String account);
    //修改收货地址   根据id
    int updateAddress(Blank blank);
    //删除收货地址    根据id
    int deleteAddress(int id);
    //搜索单个地址是否存在
    int listAddress(Blank blank);
    //修改默认地址    根据id
    int updateAddress(int b,int id);
    //根据购物车名称查询所有
    Blank listName(String name ,String account,String color,int shoe);
    //添加收藏
    int addCollect(Blank blank);
    //查询收藏
    List<Blank>listCollect(String account);
    //搜索该商品是否已收藏
    int selectCollect(String name,String account);
    //删除收藏
    int deleteCollect(int id,String account);
    //新增订单信息
    int insertDDxxi(Blank blank);
    int insertDDbiao(Blank blank);
    //新增完订单删除购物车数据
    int deletegwcs(String name,int size,String color,String userAccount);
    //支付成功修改为已支付
    int updateDD(String zhifzt,String ddhao,String date,String user);
    //删除订单附表
    int deletedd(String ddhao);
    //删除订单主表
    int deletezdd(String ddhao);
    //查询库存
    Blank selectkucun(int size,String color,String title,int price);
    //库存计算
    int updatekucun(Blank blank);
    /**
     *   后台
     *     查出所有用户+模糊查询+分页
     */
    List<Blank>allUser(String userName,int page,int pageMax);
    //page  分页的辅助方法  也就是把数据访问层写的集合在这个方法里
    Page page(String userName,int page,int pageMax);
    //修改用户状态  根据id
    int updateStatus(int status,int id);
    //删除用户 根据id
    int deleteUser(int id);
    //根据帐号查询所有订单号
    List<Blank> selectddhao(String user);
    //查询未支付的订单号
    List<Blank> selectwzf(String user);
    //查询待收货的订单号
    List<Blank> selectdsh(String user);
    //查询已收货的订单号
    List<Blank> selectysh(String user);
    //查询已支付的订单号
    List<Blank> selectyzf(String user);
    //根据查询对应的所有订单信息
    List<Blank> selectsum();
    //购物车商品数量
    int gwcCount(String account);
    /**
     * 查询所有商品  上架数据  模糊查询
     * 查询品牌   品牌id
     * 查询类型  类型id
     *  查出鞋子的鞋码 和每个鞋码的的数量
     * 查出总数量 分页
     * 查出商品图片
     *查询全部商品
     * 单击查询在售中  或 已下架
     * 点击查询已售罄
     * 修改上下架
     * 修改商品信息      弹窗修改
     * 修改商品鞋码颜色和每个鞋码数量      弹窗修改
     */
    List<Blank>listSpu(Blank blank);
  /*  String selectBrand(int id);
    String selectClassify(int id);*/
  List<Blank> selectCount(int id);
   /* int countSpu(Blank blank);*/
    /*String selectImg(int id);*/
    List<Blank>listSpu();
    List<Blank>listStatus(int status);
    List<Blank>listSk();
    int updateSpuStatus(int status,int id);
    int updateSpu(String title,int price, int id);
    int updateShoe(int count,int size,int id,String color);



    /**
     * 添加商品
     * 查询图片id最大的
     * 新增图片
     * 新增规格
     * 查询最大的鞋子Id
     */
    int imgMax();
    int insetImg(String img,int imgId);
    int insertSpu(Blank blank,int imgId);
    int insertShoe(Blank blank);
    int selectSpuId();
    /**
     * 大数据
     * 查询交易次数   根据时间
     * 查询交易金额   根据时间
     * 查询鞋子销量
     */
    int deal(String date);
    int money(String date);
    int shoeSales(String name,String date);

}
