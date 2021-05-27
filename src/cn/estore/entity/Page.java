package cn.estore.entity;

import java.util.List;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 18:21
 */
public class Page<T> {

    public static final Integer PAGE_SIZE = 4;
    //当前页码
    private Integer pageNo;
    //总页码
    private Integer pageTotal;
    //当前页显示数量
    private Integer pageSize = PAGE_SIZE;
    //总记录数
    private Integer pageTotalCount;
    //当前页显示的数据
    private List<T> items;

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public Integer getPageTotal() {
        return pageTotal;
    }

    public void setPageTotal(Integer pageTotal) {
        this.pageTotal = pageTotal;
    }

    public Integer getPageTotalCount() {
        return pageTotalCount;
    }

    public void setPageTotalCount(Integer pageTotalCount) {
        this.pageTotalCount = pageTotalCount;
    }

    public List<T> getItems() {
        return items;
    }

    public void setItems(List<T> items) {
        this.items = items;
    }

    @Override
    public String toString() {
        return "Page{" +
                "pageNo=" + pageNo +
                ", pageTotal=" + pageTotal +
                ", pageSize=" + pageSize +
                ", pageTotalCount=" + pageTotalCount +
                '}';
    }
}
