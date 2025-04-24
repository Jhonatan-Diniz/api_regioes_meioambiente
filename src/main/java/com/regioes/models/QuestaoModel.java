package com.regioes.models;

public class QuestaoModel {
    private String pergunta;
    private String[] alternativas;
    private int id;
    private int regiao_id;

    public QuestaoModel(String pergunta, String[] alternativas, int id, int regiao_id) {
        this.pergunta = pergunta;
        this.alternativas = alternativas;
        this.id = id;
        this.regiao_id = regiao_id;
    }

    public String getPergunta() {
        return pergunta;
    }

    public String[] getAlternativas() {
        return alternativas;
    }

    public int getId() {
        return id;
    }

    public int getRegiaoId() {
        return regiao_id;
    }

    public String getRegiaoIdString() {
        return String.valueOf(regiao_id);
    }

    public String getIdString() {
        return String.valueOf(id);
    }

    public String getAlternativasAsAString() {
        String alternativas_str = String.join(";", alternativas);
        return alternativas_str;
    }
}
