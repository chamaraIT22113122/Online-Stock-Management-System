package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Category;

public class CategoryService {

    Connection connection;
    
    public CategoryService() {
        try {
            connection = DBConnection.getConnection();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void addCategory(Category category) {
        if (connection != null) {
            try {
                PreparedStatement pst = connection.prepareStatement("INSERT INTO categories (Name, Price, Qty) VALUES (?, ?, ?)");
                pst.setString(1, category.getName());
                pst.setString(2, category.getPrice());
                pst.setInt(3, category.getQty());
                pst.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Database connection was not established");
        }
    }
    
    public List<Category> getCategories() {
        List<Category> categories = new ArrayList<>();
        if (connection != null) {
            try (PreparedStatement pst = connection.prepareStatement("SELECT * FROM categories")) {
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    Category category = new Category();
                    category.setCategoryID(rs.getInt("CategoryID"));
                    category.setName(rs.getString("Name"));
                    category.setPrice(rs.getString("Price"));
                    category.setQty(rs.getInt("Qty"));
                    categories.add(category);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Database connection was not established");
        }
        return categories;
    }
    
    public Category getCategoryById(int categoryId) {
        if (connection != null) {
            try (PreparedStatement pst = connection.prepareStatement("SELECT * FROM categories WHERE CategoryID = ?")) {
                pst.setInt(1, categoryId);
                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    Category category = new Category();
                    category.setCategoryID(rs.getInt("CategoryID"));
                    category.setName(rs.getString("Name"));
                    category.setPrice(rs.getString("Price"));
                    category.setQty(rs.getInt("Qty"));
                    return category;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Database connection was not established");
        }
        return null;  // Return null if the category is not found or if there is an error
    }
    
    public boolean deleteCategory(int categoryId) {
        if (connection != null) {
            try (PreparedStatement pst = connection.prepareStatement("DELETE FROM categories WHERE CategoryID = ?")) {
                pst.setInt(1, categoryId);
                int affectedRows = pst.executeUpdate();
                return affectedRows > 0;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Database connection was not established");
        }
        return false;
    }
    
    public boolean updateCategory(Category category) {
        if (connection != null) {
            try (PreparedStatement pst = connection.prepareStatement("UPDATE categories SET Name = ?, Price = ?, Qty = ? WHERE CategoryID = ?")) {
                pst.setString(1, category.getName());
                pst.setString(2, category.getPrice());
                pst.setInt(3, category.getQty());
                pst.setInt(4, category.getCategoryID());
                int affectedRows = pst.executeUpdate();
                return affectedRows > 0;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Database connection was not established");
        }
        return false;
    }
}
