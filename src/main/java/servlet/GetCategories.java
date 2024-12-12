package servlet;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import service.CategoryService;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class GetCategories
 */
public class GetCategories extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public GetCategories() {
        super();
    }

    /**
     * Handles the HTTP GET request.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            CategoryService categoryService = new CategoryService(); // Assuming CategoryService handles exceptions internally
            List<Category> categories = categoryService.getCategories();
            request.setAttribute("categories", categories); // Setting the list in the request scope
            request.getRequestDispatcher("categories.jsp").forward(request, response); // Dispatching to JSP for display
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().append("Error occurred while retrieving categories: ").append(e.getMessage());
        }
    }

    /**
     * Handles the HTTP POST request.
     * Redirects to GET method for handling.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
