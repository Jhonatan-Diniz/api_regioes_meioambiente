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
import com.regioes.models.QuestaoModel;
import com.regioes.models.RegiaoModel;
import com.regioes.services.QuestoesService;
import com.regioes.services.RegioesService;
import com.regioes.dto.RegiaoResponse;

@RestController
public class RegioesController {
    @GetMapping("/info_regiao")
    public ResponseEntity<RegiaoResponse> info_regiao(@RequestParam String regiao_nome) {
        RegioesService regiao_service = new RegioesService();
        RegiaoModel regiao_model = regiao_service.getRegiaoByName(regiao_nome);
        return new ResponseEntity<RegiaoResponse>(regiao_service.regiaoResponse(regiao_model), HttpStatus.OK);
    }
}
