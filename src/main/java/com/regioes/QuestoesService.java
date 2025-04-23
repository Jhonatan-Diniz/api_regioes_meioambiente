package com.regioes;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.sql.Statement;
import java.util.ArrayList;


public class QuestoesService {
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

    public ArrayList<QuestaoModel> getQuestoesByRegiao(int regiao_id) {
        ArrayList<QuestaoModel> questions_list = new ArrayList();
        QuestaoModel quest;
        try {
            Connection conn = connect();
            Statement statement = conn.createStatement();
            ResultSet quest_info =
                statement.executeQuery(
                    String.format("SELECT QuestoesId, Pergunta, Alternativas, RegiaoId FROM Questoes WHERE RegiaoId='%s'", regiao_id)
                );
            while (quest_info.next()){
                String[] alternativas_list = quest_info.getString("Alternativas").split(";");
                quest = new QuestaoModel(
                    quest_info.getString("Pergunta"),
                    alternativas_list,
                    quest_info.getInt("QuestoesId"),
                    quest_info.getInt("RegiaoId")
                );
                questions_list.add(quest);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return questions_list;
    }

    // public QuestoesModel getQuestaoByRegiao(String nome) {
    // }
}
