package cn.estore.entity;

public class Cart {
    //购物车中的商品
    public int id;
    public int customer_id;
    public int product_id;
    public String name;
    public double sellPrice;
    public int amount;

    public Cart() {

    }

    public Cart(int id, int customer_id, int product_id, String name, double sellPrice, int amount) {
        this.id = id;
        this.customer_id = customer_id;
        this.product_id = product_id;
        this.name = name;
        this.sellPrice = sellPrice;
        this.amount = amount;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(double sellPrice) {
        this.sellPrice = sellPrice;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", customer_id=" + customer_id +
                ", product_id=" + product_id +
                ", name='" + name + '\'' +
                ", sellPrice=" + sellPrice +
                ", amount=" + amount +
                '}';
    }
}

