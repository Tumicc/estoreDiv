package cn.estore.service;

import cn.estore.entity.Customer;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 23:33
 */
public interface CustomerService {

    Customer selectCustomerByUsername(String username);
}
