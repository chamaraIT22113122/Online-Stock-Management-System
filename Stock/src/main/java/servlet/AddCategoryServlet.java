package servlet;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import service.CategoryService;

import java.io.IOException;

public class AddCategoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private CategoryService categoryService;

    public AddCategoryServlet() {
        super();
        categoryService = new CategoryService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        
        String name = request.getParameter("Name");
        String price = request.getParameter("Price");
        int qty = Integer.parseInt(request.getParameter("Qty"));  // Make sure to handle NumberFormatException

        Category category = new Category();
        category.setName(name);
        category.setPrice(price);
        category.setQty(qty);
        
        try {
            categoryService.addCategory(category);
            response.sendRedirect("GetCategories");
        } catch (Exception e) {
            throw new ServletException("Error while adding category", e);
        }
    }
}
