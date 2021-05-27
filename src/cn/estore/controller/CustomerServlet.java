package cn.estore.controller;

import cn.estore.entity.Customer;
import cn.estore.service.CustomerService;
import cn.estore.service.impl.CustomerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 23:33
 */
@WebServlet(name = "CustomerServlet", urlPatterns = "/customer.do")
public class CustomerServlet extends HttpServlet {
    private CustomerService customerService = new CustomerServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        // 获取是何种操作的参数action
        String action = request.getParameter("action");
        switch (action) {
            case "login":
                this.login(request, response);
                break;
            case "loginOut":
                this.loginOut(request, response);
                break;
            case "userFindPasswordByUsername":
                this.selectCustomerByUsername(request, response);
                break;

        }

    }

    private void selectCustomerByUsername(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        Customer user = customerService.selectCustomerByUsername(username);
        if (user != null) {
            request.setAttribute("user", user);
            request.getRequestDispatcher("pages/customer/userFindPassword1.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "用户名不存在");
            request.setAttribute("historyBack", true);
            request.getRequestDispatcher("/product.do?action=showProduct").forward(request, response);
        }
    }


    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        Customer customer = customerService.selectCustomerByUsername(username);

        if (customer == null) {
            request.setAttribute("msg", "不存在此用户，请重新登录！！！");
        } else {
            if (!request.getParameter("password").trim().equals(customer.getPassword())) {
                request.setAttribute("msg", "密码错误,请重新登陆！！！");
                request.setAttribute("historyBack", true);
            } else {
                session.setAttribute("user", customer);
                session.setAttribute("name", customer.getUser_name());
            }
        }
        request.getRequestDispatcher("/product.do?action=showProduct").forward(request, response);
    }

    private void loginOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        request.getRequestDispatcher("/product.do?action=showProduct").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
