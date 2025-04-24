package com.regioes.services;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.sql.Statement;

import com.regioes.models.RegiaoModel;
import com.regioes.models.QuestaoModel;
import com.regioes.connection.ConnectDb;

public class RegioesService {
    public RegiaoModel getRegiaoByName(String nome){
        RegiaoModel regiao = null;
        ConnectDb db = new ConnectDb();
        try {
            Connection con = db.getConnection();
            Statement statement = con.createStatement();
            ResultSet regiao_info = 
                statement.executeQuery(
                    String.format("SELECT * FROM Regioes WHERE nome='%s'", nome)
                );

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

    public Map<String, String> regiaoResponse(RegiaoModel regiao) {
        Map<String, String> infos = new HashMap<String, String>();

        infos.put("nome", regiao.getNome());
        infos.put("gases", regiao.getGases());
        infos.put("lixos", regiao.getLixo());
        infos.put("populacao", String.valueOf(regiao.getPopulacao()));

        if(regiao != null) {
            infos.put("nome", regiao.getNome());
            infos.put("gases", regiao.getGases());
            infos.put("lixos", regiao.getLixo());
            infos.put("populacao", String.valueOf(regiao.getPopulacao()));
        }

        return infos;
    }
}
