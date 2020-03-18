package entity;

import java.util.List;

public class Page {
    private int page;   //当前页面
    private int pageMax;    //页大小
    private int conutSum;   //总记录数
    private int pageSum;    //总页数

    List<Blank> list;   //分页数据

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageMax() {
        return pageMax;
    }

    public void setPageMax(int pageMax) {
        this.pageMax = pageMax;
    }

    public int getConutSum() {
        return conutSum;
    }

    public void setConutSum(int conutSum) {
        this.conutSum = conutSum;
    }

    public int getPageSum() {
        return pageSum;
    }

    public void setPageSum(int pageSum) {
        this.pageSum =pageSum;
    }
    public List<Blank> getList() {
        return list;
    }

    public void setList(List<Blank> list) {
        this.list = list;
    }

}
