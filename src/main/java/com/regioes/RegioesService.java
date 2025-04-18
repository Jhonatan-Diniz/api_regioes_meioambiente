package com.regioes;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.sql.Statement;

public class RegioesService {
    public Connection connect() {
        Connection conn = null;
        var url = "jdbc:sqlite:database/regioes.db";
        try {
            conn = DriverManager.getConnection(url);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }

    public RegiaoModel getRegiaoByName(String nome){
        RegiaoModel regiao = null;
        try {
            Connection conn = connect();
            Statement statement = conn.createStatement();
            ResultSet regiao_info = statement.executeQuery(String.format("SELECT * FROM Regioes WHERE nome='%s'", nome));
            regiao = new RegiaoModel(
                    regiao_info.getInt("RegiaoId"),
                    regiao_info.getString("Nome"),
                    regiao_info.getString("Gases"),
                    regiao_info.getString("lixo_eletronico"),
                    regiao_info.getInt("numero_habitantes")
            );
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return regiao;
    }
}
