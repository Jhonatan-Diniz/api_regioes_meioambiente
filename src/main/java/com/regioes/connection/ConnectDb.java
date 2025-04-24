package com.regioes.connection;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.sql.Statement;

public class ConnectDb{
    private String url = "jdbc:sqlite:database/regioes.db";

    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(url);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
}
