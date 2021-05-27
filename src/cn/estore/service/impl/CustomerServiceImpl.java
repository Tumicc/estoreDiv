package cn.estore.service.impl;

import cn.estore.dao.CustomerDao;
import cn.estore.dao.impl.CustomerDaoImpl;
import cn.estore.entity.Customer;
import cn.estore.service.CustomerService;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 23:48
 */
public class CustomerServiceImpl implements CustomerService {
    private CustomerDao customerDao = new CustomerDaoImpl();

    @Override
    public Customer selectCustomerByUsername(String username) {
        return customerDao.selectCustomerByUsername(username);
    }
}
