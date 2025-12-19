public with sharing class Store {
    public Integer storeId{get; set;}
    public String storeName{get; set;}
    public String location{get; set;}
    public List<Product> products{get; set;}
    public Store() {

    }
    public Store(Integer storeId, String storeName, String location, List<Product> products) {
        this.storeId = storeId;
        this.storeName = storeName;
        this.location = location;
        this.products = products;
    }
    public Product getProductById(Integer productId) {
        Product prod=null;
        for(Product product : products) {
            if(product.productId == productId) {
                prod = product;
            }
        }
        return prod;
    }
    public void purchaseProduct(Integer productId,Integer quantity) {
        Product prod = getProductById(productId);
        if(prod == null) {
            System.debug('Product with ID ' + productId + ' not found.');
            return;
        }
        prod.quantityInHand += quantity;
        System.debug('Purchased ' + quantity + ' units of product with ID ' + productId + '.');
    }
    
    public double sellProduct(Integer productId, Integer quantitySold) {
        if(quantitySold <= 0) {
            System.debug('Quantity sold must be greater than zero.');
            return 0.0;      
        }
        Product prod = getProductById(productId);
        if(prod == null) {
            System.debug('Product with ID ' + productId + ' not found.');
            return 0.0;      
        }
        if(prod.quantityInHand < quantitySold) {
            System.debug('Insufficient quantity in hand for product with ID ' + productId + '.'); 
            return 0.0;
          
        } 
        prod.quantityInHand -= quantitySold;
        System.debug('Sold ' + quantitySold + ' units of product with ID ' + productId + '.');
        if ( prod.quantityInHand<10) {
            purchaseProduct(productId, 50);
            System.debug('Auto-restocked product with ID ' + productId + ' by purchasing 50 more units.');
        }
        return prod.price * quantitySold;
    }
    public List<Product> getProductsByCategory(String category) {
        List<Product> categorizedProducts = new List<Product>();
        for(Product product : products) {
            if(product.category == category) {
                categorizedProducts.add(product);
            }
        }
        return categorizedProducts;
    }
}