package cn.estore.dao;

import cn.estore.entity.Customer;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 23:37
 */
public interface CustomerDao {

    Customer selectCustomerByUsername(String username);

}
