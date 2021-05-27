package cn.estore.dao.impl;

import cn.estore.dao.BaseUtil;
import cn.estore.dao.CustomerDao;
import cn.estore.entity.Customer;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 23:37
 */
public class CustomerDaoImpl extends BaseUtil implements CustomerDao {

    @Override
    public Customer selectCustomerByUsername(String username) {
        String sql = "select * from tb_customer where user_name= ?";
        return querySingle(Customer.class, sql, username);
    }

}
