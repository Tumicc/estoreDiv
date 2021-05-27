package cn.estore.util;

import org.apache.commons.beanutils.BeanUtils;

import java.util.Map;

/**
 * @Author: Jimmy
 * @Date: 2021/5/26 21:13
 */
public class BeanUtil {
    /**
     * 将map中数据封装到bean中
     *
     * @param map
     * @param object
     * @return
     */
    public static <T> T copyParamToBean(Map map, T object) {
        try {
            //讲获取到的参数封装到customer内
            BeanUtils.populate(object, map);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return object;
    }

    /**
     * 将获取到的参数转换成int
     *
     * @param paramInt
     * @param defaultValue 默认值
     * @return 如果参数为空则返回默认值
     */
    public static int parseInt(String paramInt, int defaultValue) {
        try {
            if (paramInt != null && !paramInt.isEmpty() && !"".equals(paramInt)) {
                return Integer.parseInt(paramInt);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return defaultValue;
    }

    public static double parseDouble(String strDouble, double defaultValue) {
        try {
            if (strDouble != null && !"".equals(strDouble)) {
                return Double.parseDouble(strDouble);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return defaultValue;
    }

}
