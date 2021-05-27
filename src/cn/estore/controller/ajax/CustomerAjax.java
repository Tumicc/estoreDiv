package cn.estore.controller.ajax;

import cn.estore.dao.CustomerDao;
import cn.estore.entity.Customer;
import cn.estore.service.CustomerService;
import cn.estore.service.impl.CustomerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author: Jimmy
 * @Date: 2021/5/27 11:03
 */
@WebServlet(urlPatterns = "/customer.ajax", name = "CustomerAjax")
public class CustomerAjax extends HttpServlet {
    private CustomerService customerService = new CustomerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        // 获取是何种操作的参数action
        String action = request.getParameter("action");

        if ("checkUsername".equals(action)) {
            this.checkUserName(request, response);
        }
    }

    private void checkUserName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");

        Customer user = customerService.selectCustomerByUsername(username);
        if (user != null) {
            out.print("用户名已存在!");
        } else {
            out.print("用户名可用!");
        }
        out.flush();
        out.close();
    }
}
