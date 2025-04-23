package com.regioes;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;

@RestController
public class AppController {
    @GetMapping("/info_regiao")
    public Map<String, String> info_regiao(@RequestParam String regiao) {
        RegioesService regiao_service = new RegioesService();
        RegiaoModel regiaoModel = regiao_service.getRegiaoByName(regiao);
        Map<String, String> infos = new HashMap<String, String>();

        infos.put("nome", regiaoModel.getNome());
        infos.put("gases", regiaoModel.getGases());
        infos.put("lixos", regiaoModel.getLixo());
        infos.put("populacao", String.valueOf(regiaoModel.getPopulacao()));

        return infos;
    }
    @GetMapping("/{regiao_id}/questao")
    public Map<String, Map<String, String>> questoes(@PathVariable int regiao_id) {
        QuestoesService questoes_service = new QuestoesService();
        ArrayList<QuestaoModel> questoes = questoes_service.getQuestoesByRegiao(regiao_id);
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
