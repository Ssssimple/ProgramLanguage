package com.mingrisoft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class InsertString {
    private Connection conn;
    // ��ȡ���ݿ�����
    public Connection getConn() {
        try {
            Class.forName("net.sourceforge.jtds.jdbc.Driver"); // �������ݿ�����
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String url = "jdbc:jtds:sqlserver://localhost:1433;DatabaseName=db_database17"; // �������ݿ�URL
        String userName = "sa"; // �������ݿ���û���
        String passWord = ""; // �������ݿ�����
        try {
            conn = DriverManager.getConnection(url, userName, passWord); // ��ȡ���ݿ�����
            if (conn != null) {
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn; // ����Connection����
    }
    
    public void insertUsers(String name ,String loves) {
        conn = getConn(); // ��ȡ���ݿ�����
        try {
            PreparedStatement statement = conn
                    .prepareStatement("insert into tb_users values(?,?)"); // ����������ݿ��Ԥ�������         
            statement.setString(1,name);
            statement.setString(2,loves);           
            statement.executeUpdate(); // ִ��Ԥ�������
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}