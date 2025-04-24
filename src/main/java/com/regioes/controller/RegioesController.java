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
public class RegioesController {
    @GetMapping("/info_regiao")
    public Map<String, String> info_regiao(@RequestParam String regiao_nome) {
        RegioesService regiao_service = new RegioesService();
        Map<String, String> resp =
            regiao_service.regiaoResponse(regiao_service.getRegiaoByName(regiao_nome));
        return resp;
    }
}
