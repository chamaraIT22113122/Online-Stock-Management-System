package model;

public class Category {
    // Attributes corresponding to the table columns
    private int CategoryID;
    private String Name;
    private String Price;
    private int Qty;

    // Getter and Setter methods for each field

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int categoryID) {
        this.CategoryID = categoryID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String price) {
        this.Price = price;
    }

    public int getQty() {
        return Qty;
    }

    public void setQty(int qty) {
        this.Qty = qty;
    }

    // Override the toString method for easy debugging and display

    @Override
    public String toString() {
        return "Category ID = " + CategoryID + "\n" +
               "Name = " + Name + "\n" +
               "Price = " + Price + "\n" +
               "Quantity = " + Qty;
    }
}
