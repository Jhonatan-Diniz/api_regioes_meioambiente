package com.regioes;

public class RegiaoModel {
    private int id;
    private String nome;
    private String gases;
    private String lixo_eletronico;
    private int populacao;

    RegiaoModel(int id, String nome, String gases, String lixo_eletronico, int populacao) {
        this.id = id;
        this.nome = nome;
        this.gases = gases;
        this.lixo_eletronico = lixo_eletronico;
        this.populacao = populacao;
    }

    public String getNome() {
        return nome;
    }

    public String getGases() {
        return gases;
    }

    public String getLixo() {
        return lixo_eletronico;
    }

    public int getPopulacao() {
        return populacao;
    }
}
