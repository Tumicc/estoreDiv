package cn.estore.entity;

public class Customer {
    private int id; // 自增编号
    private String user_name; // 会员名称
    private String password; // 登录密码
    private String real_name; // 真实姓名
    private String mobile; // 联系电话
    private String email; // 电子邮件
    private String password_question; // 找回密码问题
    private String password_hint_answer; // 问题答案
    private String passwordForget;

    public String getPasswordForget() {
        return passwordForget;
    }

    public void setPasswordForget(String passwordForget) {
        this.passwordForget = passwordForget;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getReal_name() {
        return real_name;
    }

    public void setReal_name(String real_name) {
        this.real_name = real_name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword_question() {
        return password_question;
    }

    public void setPassword_question(String password_question) {
        this.password_question = password_question;
    }

    public String getPassword_hint_answer() {
        return password_hint_answer;
    }

    public void setPassword_hint_answer(String password_hint_answer) {
        this.password_hint_answer = password_hint_answer;
    }

}
