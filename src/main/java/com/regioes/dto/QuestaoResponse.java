package com.regioes.dto;

import java.util.*;

public class QuestaoResponse {
    public int id;
    public String pergunta;
    public Map<String, String> alternativas = new HashMap<>();
    public int regiao_id;
}
