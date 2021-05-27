package cn.estore.dao.impl;

import cn.estore.dao.BaseUtil;
import cn.estore.dao.ProductDao;
import cn.estore.entity.Product;

import java.util.List;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 18:45
 */
public class ProductDaoImpl extends BaseUtil implements ProductDao {

    @Override
    public int getProductNum() {
        String sql = "select count(*) from tb_product";
        return ((Number) queryObjectValue(sql)).intValue();
    }

    @Override
    public int getProductNumByDiscount(Object discount) {
        String sql = "select count(*) from tb_product where discount=?";
        return ((Number) queryObjectValue(sql, discount)).intValue();
    }

    @Override
    public List<Product> selectAllProducts(int begin, int end) {
        String sql = "select * from tb_product limit ?,?";
        List<Product> list = queryLists(Product.class, sql, begin, end);
        return list;
    }


    @Override
    public List<Product> selectProductByDiscount(Object discount, int begin, int pageSize) {
        String sql = "select * from tb_product where discount = ? limit ?,?";
        List<Product> list = queryLists(Product.class, sql, discount, begin, pageSize);
        return list;
    }
}
