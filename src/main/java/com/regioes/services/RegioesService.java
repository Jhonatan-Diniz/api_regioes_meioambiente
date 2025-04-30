package com.regioes.services;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.sql.Statement;

import com.regioes.connection.ConnectDb;
import com.regioes.models.RegiaoModel;
import com.regioes.models.QuestaoModel;
import com.regioes.dto.RegiaoResponse;

public class RegioesService {
    public RegiaoModel getRegiaoByName(String nome){
        RegiaoModel regiao = null;
        ConnectDb db = new ConnectDb();
        try {
            Connection con = db.getConnection();
            Statement statement = con.createStatement();
            System.out.println(nome);
            System.out.println(String.format("select * from Regioes WHERE nome='%s'", nome));
            ResultSet regiao_info = 
                statement.executeQuery(
                    String.format("select * from Regioes WHERE nome='%s'", nome)
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
            System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        }
        return regiao;
    }

    public RegiaoResponse regiaoResponse(RegiaoModel regiao_model) {
        RegiaoResponse regiao_response = new RegiaoResponse();
        regiao_response.nome = regiao_model.getNome();
        regiao_response.numero_habitantes = regiao_model.getPopulacao();

        return regiao_response;
    }
}
