package com.regioes.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;

import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;
import com.regioes.models.QuestaoModel;
import com.regioes.models.RegiaoModel;
import com.regioes.services.QuestoesService;
import com.regioes.services.RegioesService;
import com.regioes.dto.QuestaoResponse;
import com.regioes.dto.RespostaResponse;

@RestController
public class QuestoesController {

    QuestoesService questoes_service = new QuestoesService();
    @GetMapping("/{regiao_id}/questao")
    public ResponseEntity<List<QuestaoResponse>> questoes(@PathVariable int regiao_id) {
        ArrayList<QuestaoModel> questoes_regiao = questoes_service.getQuestoesArrayByRegiao(regiao_id);
        List<QuestaoResponse> questoes_response = new ArrayList<>();

        for (QuestaoModel q : questoes_regiao) {
            questoes_response.add(questoes_service.questaoResponse(q));
        }

        return new ResponseEntity<List<QuestaoResponse>>(questoes_response, HttpStatus.OK);
    }

    @GetMapping("/resposta")
    public ResponseEntity<RespostaResponse> resposta(@RequestParam String questao_id, @RequestParam String alternativa) {
         RespostaResponse resposta = new RespostaResponse();
         resposta.resposta_correta= questoes_service.checkResposta(alternativa, questao_id);
         return new ResponseEntity<RespostaResponse>(resposta, HttpStatus.OK);
    }
}
