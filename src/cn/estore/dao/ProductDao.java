package cn.estore.dao;

import cn.estore.entity.Page;
import cn.estore.entity.Product;

import java.util.List;

public interface ProductDao {

    List<Product> selectAllProducts(int begin, int pageSize);

    int getProductNum();

    int getProductNumByDiscount(Object discount);

    List<Product> selectProductByDiscount(Object values, int begin, int pageSize);
}

