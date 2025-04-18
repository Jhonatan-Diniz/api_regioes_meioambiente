package com.regioes;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.Map;
import java.util.HashMap;

@RestController
public class AppController {
    @GetMapping("/hello")
    public Map<String, String> Ola() {
        return Map.of("message", "Olá, mundo!");
    }

    @PostMapping("/info_regiao")
    public Map<String, String> info_regiao(@RequestBody InfoDTO info) {
        RegioesService regiao_service = new RegioesService();
        RegiaoModel regiao = regiao_service.getRegiaoByName(info.nome);
        Map<String, String> infos = new HashMap<String, String>();

        infos.put("nome", regiao.getNome());
        infos.put("gases", regiao.getGases());
        infos.put("lixos", regiao.getLixo());
        infos.put("populacao", String.valueOf(regiao.getPopulacao()));

        return infos;
    }
}
