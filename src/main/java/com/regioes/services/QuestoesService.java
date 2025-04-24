package com.regioes.services;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.sql.Statement;
import java.util.ArrayList;

import com.regioes.models.RegiaoModel;
import com.regioes.models.QuestaoModel;
import com.regioes.connection.ConnectDb;

public class QuestoesService {
    public ArrayList<QuestaoModel> getQuestoesArrayByRegiao(int regiao_id) {
        ArrayList<QuestaoModel> questions_list = new ArrayList();
        QuestaoModel quest;
        ConnectDb db = new ConnectDb();
        try {
            Connection con = db.getConnection();
            Statement statement = con.createStatement();
            ResultSet quest_info =
                statement.executeQuery(
                    String.format(
                        "SELECT QuestoesId, Pergunta, Alternativas, RegiaoId FROM Questoes WHERE RegiaoId='%s'",
                        regiao_id
                    )
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

    public Map<String, Map<String, String>> questaoResponse(int regiao_id) {
        ArrayList<QuestaoModel> questoes = getQuestoesArrayByRegiao(regiao_id);
        Map<String, Map<String, String>> questoes_json = new HashMap<String, Map<String, String>>();

        for (int i = 0; i < questoes.size(); i++) {
            Map<String, String> current_questao = new HashMap<String, String>();

            current_questao.put("pergunta", questoes.get(i).getPergunta());
            current_questao.put("alternativa", questoes.get(i).getAlternativasAsAString());
            current_questao.put("questao_id", questoes.get(i).getIdString());
            current_questao.put("regiao_id", questoes.get(i).getRegiaoIdString());

            questoes_json.put(String.valueOf(i), current_questao);
        }

        return questoes_json;
    }
}
