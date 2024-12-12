package servlet;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import service.CategoryService;

import java.io.IOException;

/**
 * Servlet implementation class UpdateCategory
 */
public class UpdateCategory extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public UpdateCategory() {
        super();
        // Initialization can be done here if needed
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		CategoryService categoryService = new CategoryService();
		Category category = categoryService.getCategoryById(categoryId);

		request.setAttribute("category", category);
		request.getRequestDispatcher("/updateCategory.jsp").forward(request, response);
	}

    /**
     * Handles the HTTP POST request. This is used to process the form submission.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int categoryId = Integer.parseInt(request.getParameter("categoryId"));
			String name = request.getParameter("Name");
			String price = request.getParameter("Price");
			int qty = Integer.parseInt(request.getParameter("Qty"));

			CategoryService categoryService = new CategoryService();
			Category category = new Category();
			category.setCategoryID(categoryId);
			category.setName(name);
			category.setPrice(price);
			category.setQty(qty);

			boolean updated = categoryService.updateCategory(category);
			if (updated) {
				response.sendRedirect("categories.jsp"); // Redirect or forward as needed
			} else {
				response.getWriter().write("Update failed");
			}
		} catch (NumberFormatException e) {
			response.getWriter().write("Invalid input for ID or quantity");
		} catch (Exception e) {
			response.getWriter().write("An error occurred: " + e.getMessage());
		}
	
    }
}
