package servlet;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.CategoryService;
import java.io.IOException;

/**
 * Servlet implementation class DeleteCategory
 */
public class DeleteCategory extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public DeleteCategory() {
        super();
    }

    /**
     * Handles the HTTP GET request.
     * Deletion should generally be handled using POST or DELETE for safety, but for simplicity in form submission, it's handled with GET here.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        CategoryService categoryService = new CategoryService();

        boolean success = categoryService.deleteCategory(categoryId);
        if (success) {
            // Redirect to the categories page with a success message
            response.sendRedirect("GetCategories");
        } else {
            // Redirect to the categories page with an error message
            response.sendRedirect("GetCategories");
        }
    }

    /**
     * Redirects POST requests to the GET method. In real scenarios, consider using doPost for actual deletion to protect data integrity.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
