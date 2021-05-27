package cn.estore.service;

import cn.estore.entity.Page;
import cn.estore.entity.Product;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 19:37
 */
public interface ProductService {

    //    获取总记录数
    public int getProductNum();

    //
    public int getProductNumByDiscount(Object discount);

    //    首页的分页查询
    public Page<Product> selectAllProducts(int pageNo, int pageSize);

    public Page<Product> selectProductsByDiscount(Object discount, int pageNo, int pageSize);

}
