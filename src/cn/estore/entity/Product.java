package cn.estore.entity;

public class Product {
    private int id;     //自增编号
    private int category_main_id;   //大类编号category_main_id
    private int category_branch_id; //小类编号category_branch_id
    private String name;            //商品名称
    private String producing_area;     //商品产地producing_area
    private String description;    //商品描述
    private String create_time;   //商品创建时间
    private int market_price;   //原价 market_price
    private int sell_price;     //商品实际促销价格
    private int product_amount;    //商品销售数量，不是商品库存，需要在后期数据库中增加库存字段
    private String picture;     //商品图片
    private Boolean discount;      //是否有折扣 1有折扣，0无折扣

    public Product() {
    }

    public Product(int id, int category_main_id, int category_branch_id, String name, String producing_area, String description, String create_time, int market_price, int sell_price, int product_amount, String picture, Boolean discount) {
        this.id = id;
        this.category_main_id = category_main_id;
        this.category_branch_id = category_branch_id;
        this.name = name;
        this.producing_area = producing_area;
        this.description = description;
        this.create_time = create_time;
        this.market_price = market_price;
        this.sell_price = sell_price;
        this.product_amount = product_amount;
        this.picture = picture;
        this.discount = discount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategory_main_id() {
        return category_main_id;
    }

    public void setCategory_main_id(int category_main_id) {
        this.category_main_id = category_main_id;
    }

    public int getCategory_branch_id() {
        return category_branch_id;
    }

    public void setCategory_branch_id(int category_branch_id) {
        this.category_branch_id = category_branch_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProducing_area() {
        return producing_area;
    }

    public void setProducing_area(String producing_area) {
        this.producing_area = producing_area;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public int getMarket_price() {
        return market_price;
    }

    public void setMarket_price(int market_price) {
        this.market_price = market_price;
    }

    public int getSell_price() {
        return sell_price;
    }

    public void setSell_price(int sell_price) {
        this.sell_price = sell_price;
    }

    public int getProduct_amount() {
        return product_amount;
    }

    public void setProduct_amount(int product_amount) {
        this.product_amount = product_amount;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Boolean getDiscount() {
        return discount;
    }

    public void setDiscount(Boolean discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", category_main_id=" + category_main_id +
                ", category_branch_id=" + category_branch_id +
                ", name='" + name + '\'' +
                ", producing_area='" + producing_area + '\'' +
                ", description='" + description + '\'' +
                ", create_time='" + create_time + '\'' +
                ", market_price=" + market_price +
                ", sell_price=" + sell_price +
                ", product_amount=" + product_amount +
                ", picture='" + picture + '\'' +
                ", discount=" + discount +
                '}';
    }
}
