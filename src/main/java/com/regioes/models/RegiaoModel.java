package com.regioes.models;

public class RegiaoModel {
    private int id;
    private String nome;
    private double populacao;
    private String info_qualidade_ar;

    public RegiaoModel(int id, String nome, double populacao, String info_ar) {
        this.id = id;
        this.nome = nome;
        this.populacao = populacao;
        this.info_qualidade_ar = info_ar;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public double getPopulacao() {
        return populacao;
    }

    public String getInfo() {
        return info_qualidade_ar;
    }
}
