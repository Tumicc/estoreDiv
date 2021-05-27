package cn.estore.util;

import cn.estore.entity.Page;

import static java.lang.Math.ceil;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 18:41
 */
public class PageUtil {

    public static <T> Page<T> copyToPage(int pageNum, int pageNo, int pageSize) {
        Page<T> page = new Page<>();
        int pageTotal = (int) ceil(pageNum * 1.0 / pageSize);

        pageNo = getPageNo(pageNo, pageTotal);
        page.setPageTotal(pageTotal);
        page.setPageTotalCount(pageNum);
        page.setPageNo(pageNo);
        return page;
    }

    public static int getPageNo(int pageNo, int pageTotal) {
        if (pageNo < 1) {
            pageNo = 1;
        }
        if (pageNo > pageTotal) {
            pageNo = pageTotal;
        }
        return pageNo;
    }

}
