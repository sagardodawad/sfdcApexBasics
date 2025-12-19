public with sharing class Product {
    public Integer productId{get; set;}
    public String productName{get; set;}
    public Integer quantityInHand{get; set;}
    public double price{get; set;}
    public String category{get; set;}
    public Product() {

    }
    public Product(Integer productId, String productName, Integer quantityInHand, double price, String category) {
        this.productId = productId;
        this.productName = productName;
        this.quantityInHand = quantityInHand;
        this.price = price;
        this.category = category;
    }
}