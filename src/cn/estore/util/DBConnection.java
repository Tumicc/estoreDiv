package cn.estore.util;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 19:12
 */
public class DBConnection {
    private static DruidDataSource dbSource;

    //初始化dbSource
    static {
        try {
            Properties properties = new Properties();
            //读取jdbc.properties文件
            InputStream inputStream = DBConnection.class.getClassLoader().getResourceAsStream("druid.properties");
            //从流中加载数据
            properties.load(inputStream);
            //创建数据库连接池
            dbSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取数据库连接池中的连接
     *
     * @return 如果返回null连接不成功
     */
    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = dbSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 关闭连接
     *
     * @param conn
     */
    public static void close(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}

