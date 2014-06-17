/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import com.wangyin.wycds.web.controller.vo.DbInfoDbGroupRelationVO;
import com.wangyin.wycds.web.controller.vo.FieldVO;
import com.wangyin.wycds.web.controller.vo.SqlVO;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * JDBC工具类,用来获取一个数据库中的信息
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 11:06 Exp $$
 */
public class JDBCUtil {

    private static Logger logger = Logger.getLogger(JDBCUtil.class);
    // 创建静态全局变量
    static Connection conn;
    static Statement st;

    /**
     * 解析sql语句获取操作对象信息
     *
     * @param sql
     * @return
     */
    public static SqlVO getTableName(String sql) {
        SqlVO sqlVO = new SqlVO();
        if (StringUtils.isBlank(sql)) {
            return sqlVO;
        }
        sql = StringUtils.replace(sql, "`", "");
        String[] parseArray = sql.split(" ");
        String head = parseArray[0];
        if (StringUtils.equalsIgnoreCase("create", head)) {
            createTable(sqlVO);
        } else if (StringUtils.equalsIgnoreCase("drop", head)) {
            dropTable(sqlVO);
        } else if (StringUtils.equalsIgnoreCase("rename", head)) {
            renameTable(parseArray, sqlVO);
        } else if (StringUtils.equalsIgnoreCase("alert", head)) {
            alert(parseArray, sqlVO);
        } else {
            sqlVO.setAction("select");
        }
        for (int i = 0; i < parseArray.length; i++) {
            String str = parseArray[i];
            if (StringUtils.equalsIgnoreCase(str, "table")) {
                sqlVO.setTableName(parseArray[i + 1]);
            }
        }
        return sqlVO;
    }

    /**
     * 获取库下面的所有表名
     *
     * @return
     */
    public static List<String> getALLTables() {
        //同样先要获取连接，即连接到数据库
        conn = getConnection();
        List<String> tableNameList = new ArrayList<String>();
        try {
            // 查询数据的sql语句
            String sql = "SHOW TABLES";
            //创建用于执行静态sql语句的Statement对象，st属局部变量
            st = (Statement) conn.createStatement();
            //执行sql查询语句，返回查询数据的结果集
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                // 根据字段名获取相应的值
                String name = rs.getString("Tables_in_mydb");
                tableNameList.add(name);
            }
        } catch (SQLException e) {
            logger.error("查询数据失败", e);
        } finally {
            //关闭数据库连接
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return tableNameList;
    }

    /**
     * 获取表的所有字段信息
     *
     * @param tableName
     * @return
     */
    public static List<FieldVO> getAllField(String tableName) {
        //同样先要获取连接，即连接到数据库
        conn = getConnection();
        List<FieldVO> fieldVOList = new ArrayList<FieldVO>();
        try {
            // 查询数据的sql语句
            String sql = "SHOW COLUMNS FROM " + tableName;
            //创建用于执行静态sql语句的Statement对象，st属局部变量
            st = (Statement) conn.createStatement();
            //执行sql查询语句，返回查询数据的结果集
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                FieldVO fieldVO = new FieldVO();
                // 根据字段名获取相应的值
                fieldVO.setField(rs.getString("Field"));
                fieldVO.setDefaultValue(rs.getString("Default"));
                fieldVO.setIsNull(rs.getString("Null"));
                fieldVO.setType(rs.getString("Type"));
                fieldVOList.add(fieldVO);
            }
        } catch (SQLException e) {
            logger.error("查询数据失败", e);
        } finally {
            //关闭数据库连接
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return fieldVOList;
    }

    /**
     * 执行具体的sql语句
     *
     * @param sql
     * @return
     */
    public static boolean executeSQL(String sql, DbInfoDbGroupRelationVO dbInfoDbGroupRelationVO) {
        conn = getConnection(dbInfoDbGroupRelationVO.getIp(), dbInfoDbGroupRelationVO.getDbType(), dbInfoDbGroupRelationVO.getPort(), "root", "123456", dbInfoDbGroupRelationVO.getDbName());    //同样先要获取连接，即连接到数据库
        try {
            st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量
            st.execute(sql);//执行sql查询语句，返回查询数据的结果集
            conn.close();    //关闭数据库连接
            return true;
        } catch (SQLException e) {
            logger.error("sql执行失败:sql=" + sql, e);
            return false;
        }
    }

    /**
     * 判断表是否存在
     *
     * @param tableName
     * @return
     */
    public boolean exists(String tableName) {
        List<String> tableNameList = getALLTables();
        if (CollectionUtils.isEmpty(tableNameList)) {
            return false;
        }
        if (tableNameList.contains(tableName)) {
            return true;
        }
        return false;
    }

    /**
     * 获取连接
     *
     * @param ip
     * @param type
     * @param prot
     * @param userName
     * @param password
     * @param dbName
     * @return
     */
    private static Connection getConnection(String ip, String type, String prot, String userName, String password, String dbName) {
        //创建用于连接数据库的Connection对象
        Connection con = null;
        try {
            StringBuilder url = new StringBuilder();
            if (StringUtils.equalsIgnoreCase(type, "oracle")) {
                // 加载数据驱动
                Class.forName("oracle.jdbc.driver.OracleDriver");
                url.append("jdbc:oracle:thin:@");
                url.append(ip);
                url.append(":");
                url.append(prot);
                url.append(":");
                url.append(dbName);
            } else if (StringUtils.equalsIgnoreCase(type, "mysql")) {
                Class.forName("com.mysql.jdbc.Driver");
                url.append("jdbc:mysql://");
                url.append(ip);
                url.append(":");
                url.append(prot);
                url.append("/");
                url.append(dbName);
            } else {
                return null;
            }

            // 创建数据连接
            con = DriverManager.getConnection(url.toString(), userName, password);

        } catch (Exception e) {
            logger.error("数据库连接失败", e);
        }

        return con;
    }

    /**
     * 获取数据库连接的函数
     *
     * @return
     */
    private static Connection getConnection() {

        //创建用于连接数据库的Connection对象
        Connection con = null;
        try {
            Properties props = new Properties();
            InputStream inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("mysql.properties");
            props.load(inputStream);
            // 加载数据驱动
            Class.forName(props.getProperty("jdbc.driverClassName"));
            // 创建数据连接
            con = DriverManager.getConnection(props.getProperty("jdbc.url"), props.getProperty("jdbc.username"),props.getProperty("jdbc.password"));

        } catch (IOException e) {
            logger.error("获取资源文件错误!", e);
        } catch (Exception e) {
            logger.error("数据库连接失败", e);
        }

        return con;
    }

    private static SqlVO createTable(SqlVO sqlVO) {
        sqlVO.setScope("table");
        return sqlVO;
    }

    private static SqlVO renameTable(String[] parseArray, SqlVO sqlVO) {
        sqlVO.setScope("table");
        for (int i = 0; i < parseArray.length; i++) {
            String str = parseArray[i];
            if (StringUtils.equalsIgnoreCase(str, "table")) {
                sqlVO.setOldName(parseArray[i + 1]);
                sqlVO.setNewName(parseArray[i + 2]);
                sqlVO.setAction("update");
            }

        }
        return sqlVO;
    }

    private static SqlVO dropTable(SqlVO sqlVO) {
        sqlVO.setScope("table");
        return sqlVO;
    }

    private static SqlVO alert(String[] parseArray, SqlVO sqlVO) {
        sqlVO.setScope("column");
        for (int i = 0; i < parseArray.length; i++) {
            String str = parseArray[i];
            if (StringUtils.equalsIgnoreCase(str, "add")) {
                sqlVO.setColumn(parseArray[i + 1]);
                sqlVO.setAction("add");
            }
            if (StringUtils.equalsIgnoreCase(str, "drop")) {
                sqlVO.setColumn(parseArray[i + 1]);
                sqlVO.setAction("delete");
            }
            if (StringUtils.equalsIgnoreCase(str, "change")) {
                sqlVO.setColumn(parseArray[i + 1]);
                sqlVO.setOldName(parseArray[i + 1]);
                sqlVO.setNewName(parseArray[i + 2]);
                sqlVO.setAction("update");
            }
        }
        return sqlVO;
    }

}
