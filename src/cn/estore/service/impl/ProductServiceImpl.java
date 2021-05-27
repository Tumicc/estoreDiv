package cn.estore.service.impl;

import cn.estore.dao.ProductDao;
import cn.estore.dao.impl.ProductDaoImpl;
import cn.estore.entity.Page;
import cn.estore.entity.Product;
import cn.estore.service.ProductService;
import cn.estore.util.PageUtil;

import java.util.List;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 19:38
 */
public class ProductServiceImpl implements ProductService {
    private ProductDao productDao = new ProductDaoImpl();

    @Override
    public int getProductNum() {
        return productDao.getProductNum();
    }

    @Override
    public int getProductNumByDiscount(Object discount) {
        return productDao.getProductNumByDiscount(discount);
    }

    @Override
    public Page<Product> selectAllProducts(int pageNo, int pageSize) {
        Page<Product> page = new Page();
        //计算出记录数
        int productNum = getProductNum();
        page = PageUtil.copyToPage(productNum, pageNo, pageSize);
        int begin = (pageNo - 1) * pageSize;
        List<Product> list = productDao.selectAllProducts(begin, pageSize);
        page.setItems(list);
        return page;
    }

    @Override
    public Page<Product> selectProductsByDiscount(Object discount, int pageNo, int pageSize) {
        Page<Product> page = new Page();
        //
        int productNum = getProductNumByDiscount(discount);
        page = PageUtil.copyToPage(productNum, pageNo, pageSize);
        int begin = (pageNo - 1) * pageSize;
        List<Product> list = productDao.selectProductByDiscount(discount, begin, pageSize);
        page.setItems(list);
        return page;
    }
}
