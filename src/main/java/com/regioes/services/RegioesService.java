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

public class RegioesService extends ConnectDb {
    public RegiaoModel getRegiaoByName(String nome){
        RegiaoModel regiao = null;
        try {
            System.out.println("- Conectando com o banco de dados -");
            Statement statement = getConnection().createStatement();
            System.out.println("- Selectionando informacoes da regiao -");
            ResultSet regiao_info = 
                statement.executeQuery(
                    String.format("select * from Regioes WHERE nome='%s'", nome)
                );

            System.out.println("- Criando modelo da regiao -");

            regiao = new RegiaoModel(
                    regiao_info.getInt("RegiaoId"),
                    regiao_info.getString("Nome"),
                    regiao_info.getDouble("numero_habitantes"),
                    regiao_info.getString("qualidade_ar")
            );
        } catch (SQLException e) {
            System.out.println("- Erro em alguma etapa -");
            System.out.println(e.getMessage());
        }
        System.out.println("- Retornando modelo da regiao -");
        return regiao;
    }

    public RegiaoResponse regiaoResponse(RegiaoModel regiao_model) {
        RegiaoResponse regiao_response = new RegiaoResponse();
        System.out.println("- Criando o objeto de Response de RegiaoModel -");
        regiao_response.id = regiao_model.getId();
        regiao_response.nome = regiao_model.getNome();
        regiao_response.numero_habitantes = regiao_model.getPopulacao();
        regiao_response.info_sobre_poluicao = regiao_model.getInfo();

        System.out.println("- Retornando objeto de Response -");
        return regiao_response;
    }
}
