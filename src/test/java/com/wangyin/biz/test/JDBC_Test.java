/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.biz.test;

import com.wangyin.wycds.web.biz.ParseDDLService;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/10 13:58 Exp $$
 */
public class JDBC_Test {
    // 创建静态全局变量
    static Connection conn;

    static Statement st;

    public static void main(String[] args) {
        ParseDDLService ddl = new ParseDDLService();
        //System.out.println(ddl.getTableName("alter table test change bbb aaa varchar(10)"));
        //getAllField("rdatasourceapp");
        addColumn();
    }

    public static void addColumn() {
        conn = getConnection();    //同样先要获取连接，即连接到数据库
        try {
            //String sql = "alter table test change bbb aaa varchar(10)";        // 查询数据的sql语句
            String sql="CREATE TABLE test (order_id int null)";
            st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量

            int rs = st.executeUpdate(sql);//执行sql查询语句，返回查询数据的结果集

            System.out.println("执行成功!" + rs);

            conn.close();    //关闭数据库连接

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("查询数据失败");
        }
    }


    /* 获取数据库连接的函数*/
    public static Connection getConnection() {
        Connection con = null;    //创建用于连接数据库的Connection对象
        try {
            Class.forName("com.mysql.jdbc.Driver");// 加载Mysql数据驱动

            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/test", "root", "123456");// 创建数据连接

        } catch (Exception e) {
            System.out.println("数据库连接失败" + e.getMessage());
        }
        return con;    //返回所建立的数据库连接
    }
}
