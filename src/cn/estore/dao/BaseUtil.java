package cn.estore.dao;

import cn.estore.util.DBConnection;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 19:09
 */
public class BaseUtil {
    private QueryRunner queryRunner = new QueryRunner();

    public int update(String sql, Object... args) {
        Connection conn = DBConnection.getConnection();
        try {
            return queryRunner.update(conn, sql, args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnection.close(conn);
        }
        return -1;
    }

    /**
     * 查询一个对象时
     *
     * @param type 被查询对象的类型
     * @param sql
     * @param args
     * @param <T>
     * @return 返回null表示查询失败，反之成功
     */
    public <T> T querySingle(Class<T> type, String sql, Object... args) {
        Connection conn = DBConnection.getConnection();
        try {
            return queryRunner.query(conn, sql, new BeanHandler<>(type), args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnection.close(conn);
        }
        return null;
    }

    /**
     * 查询多个对象时
     *
     * @param type
     * @param sql
     * @param args
     * @param <T>
     * @return 返回null表示查询失败，反之成功
     */
    public <T> List<T> queryLists(Class<T> type, String sql, Object... args) {
        Connection conn = DBConnection.getConnection();
        try {
            return queryRunner.query(conn, sql, new BeanListHandler<>(type), args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnection.close(conn);
        }
        return null;
    }

    /**
     * 返回单个值
     *
     * @param sql
     * @param args
     * @return 返回null表示查询失败，反之成功
     */
    public Object queryObjectValue(String sql, Object... args) {
        Connection conn = DBConnection.getConnection();
        try {
            return queryRunner.query(conn, sql, new ScalarHandler(), args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnection.close(conn);
        }
        return null;
    }
}
