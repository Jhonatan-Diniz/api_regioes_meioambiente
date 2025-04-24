package com.regioes.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;
import com.regioes.models.QuestaoModel;
import com.regioes.models.RegiaoModel;
import com.regioes.services.QuestoesService;
import com.regioes.services.RegioesService;

@RestController
public class QuestoesController {
    @GetMapping("/{regiao_id}/questao")
    public Map<String, Map<String, String>> questoes(@PathVariable int regiao_id) {
        QuestoesService questoes_service = new QuestoesService();
        // Retorna um HashMap das questões de uma determinada região que será recebido como um JSON pelo cliente.
        return questoes_service.questaoResponse(regiao_id);
    }
}
