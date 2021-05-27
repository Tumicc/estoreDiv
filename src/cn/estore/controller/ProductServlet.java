package cn.estore.controller;

import cn.estore.entity.Page;
import cn.estore.entity.Product;
import cn.estore.service.ProductService;
import cn.estore.service.impl.ProductServiceImpl;
import cn.estore.util.BeanUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductServlet", urlPatterns = "/product.do")
public class ProductServlet extends HttpServlet {
    private ProductService productService = new ProductServiceImpl();

    public ProductServlet() {
        super();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        // 获取是何种操作的参数action
        String action = request.getParameter("action");

        switch (action) {
            case "showProduct": {// 查询所有商品
                this.showProduct(request, response);
                break;
            }
            case "selectProductByName": {//按Name查找商品

                break;
            }
            case "getProductById":
                this.selectProductsByName(request, response);
                break;
        }
    }

    private void selectProductsByName(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


    }

    private void showProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageNo = BeanUtil.parseInt(request.getParameter("pageNo"), 1);
        int pageSize = Page.PAGE_SIZE;
        int discount = BeanUtil.parseInt(request.getParameter("discount"), -1);
        String title = "首页";
        Page<Product> page;
        if (discount == 0) {
            title = "商城新品";
            page = productService.selectProductsByDiscount(discount, pageNo, pageSize);
            request.setAttribute("page", page);
            request.setAttribute("title", title);
            request.getRequestDispatcher("pages/product/main.jsp").forward(request, response);
        } else if (discount == 1) {
            title = "特价商品";
            page = productService.selectProductsByDiscount(discount, pageNo, pageSize);
            request.setAttribute("page", page);
            request.setAttribute("title", title);
            request.getRequestDispatcher("pages/product/main.jsp").forward(request, response);
        } else {
            page = productService.selectAllProducts(pageNo, pageSize);
            request.setAttribute("page", page);
            request.setAttribute("title", title);
            request.getRequestDispatcher("pages/product/main.jsp").forward(request, response);
        }
    }


    @Override
    public void destroy() {
        super.destroy();
    }


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
