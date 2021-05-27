package cn.estore.entity;

public class Order {
    private String orderId; //订单的详细编号:用户名-日期时间组成，形成admin-2020-05-03-08：25：31
    private String name;  //会员名称
    private String realName;  //真实姓名
    private String address;  //联系地址
    private String mobile;  //联系电话
    private float totalPrice;//订单总金额
    private String deliveryMethod;  //寄送方式
    private String memo;    //备注
    private Boolean deliverySign = false;   //是否发货  默认为未发货
    private String createTime;  //订单生成时间
    private String paymentMode;  //支付方式

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getDeliveryMethod() {
        return deliveryMethod;
    }

    public void setDeliveryMethod(String deliveryMethod) {
        this.deliveryMethod = deliveryMethod;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public Boolean getDeliverySign() {
        return deliverySign;
    }

    public void setDeliverySign(Boolean deliverySign) {
        this.deliverySign = deliverySign;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getPaymentMode() {
        return paymentMode;
    }

    public void setPaymentMode(String paymentMode) {
        this.paymentMode = paymentMode;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId='" + orderId + '\'' +
                ", name='" + name + '\'' +
                ", realName='" + realName + '\'' +
                ", address='" + address + '\'' +
                ", mobile='" + mobile + '\'' +
                ", totalPrice=" + totalPrice +
                ", deliveryMethod='" + deliveryMethod + '\'' +
                ", memo='" + memo + '\'' +
                ", deliverySign=" + deliverySign +
                ", createTime='" + createTime + '\'' +
                ", paymentMode='" + paymentMode + '\'' +
                '}';
    }
}
