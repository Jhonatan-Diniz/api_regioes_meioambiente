package com.regioes.services;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.regioes.services.RegioesService;
import com.regioes.models.RegiaoModel;
import com.regioes.models.QuestaoModel;
import com.regioes.connection.ConnectDb;
import com.regioes.dto.QuestaoResponse;

public class QuestoesService extends ConnectDb {

    public ArrayList<QuestaoModel> getQuestoesArrayByRegiao(String regiao_nome) {
        RegioesService regiao_service = new RegioesService();
        ArrayList<QuestaoModel> questions_list = new ArrayList();
        int regiao_id = regiao_service.getRegiaoByName(regiao_nome).getId();
        QuestaoModel quest;
        try {
            Statement statement = getConnection().createStatement();
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

    public QuestaoResponse questaoResponse(QuestaoModel quest_model) {
        QuestaoResponse quest_response = new QuestaoResponse();
        quest_response.pergunta = quest_model.getPergunta();
        String[] quest_alternativas = quest_model.getAlternativas();

        quest_response.alternativas.put("a", quest_alternativas[0]);
        quest_response.alternativas.put("b", quest_alternativas[1]);
        quest_response.alternativas.put("c", quest_alternativas[2]);
        quest_response.alternativas.put("d", quest_alternativas[3]);

        quest_response.id = quest_model.getId();
        quest_response.regiao_id = quest_model.getRegiaoId();
        return quest_response;
    }

    public boolean checkResposta(String alternativa, int questao_id) {
        try {
            Statement statement = getConnection().createStatement();
            ResultSet quest_info =
                statement.executeQuery(
                    String.format(
                        "SELECT Correta FROM Questoes WHERE QuestoesId ='%s'",
                        questao_id
                    )
                );
            if (quest_info.getString("Correta").equals(alternativa)) {
                return true;
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return false;
    }

    public Integer quantRespostasCertas(String regiao_nome, List<String> respostas) {
        Integer respostas_corretas = new Integer(0);
        ArrayList<QuestaoModel> questoes = getQuestoesArrayByRegiao(regiao_nome);
        for (int i = 0; i < respostas.size(); i++) {
            if (checkResposta(respostas.get(i), questoes.get(i).getId())) {
                respostas_corretas++;
            }
        }
        return respostas_corretas;
    }
}
