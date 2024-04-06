package com.beautyandhome.profumishop.controller;

import java.util.List;

import com.beautyandhome.profumishop.model.Prodotto;
import com.beautyandhome.profumishop.service.ProdottoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/prodotti")
public class ProdottoController {

    private final ProdottoService prodottoService;

    @Autowired
    public ProdottoController(ProdottoService prodottoService) {
        this.prodottoService = prodottoService;
    }

    @GetMapping
    public List<Prodotto> getAllProdotti() {
        return prodottoService.getAllProdotti();
    }

    @GetMapping("/filtered")
    public ResponseEntity<List<Prodotto>> getAllProdottiFiltered(@RequestParam String categoria) {
        List<Prodotto> prodotti = prodottoService.getAllProdottiFiltered(categoria);
        return new ResponseEntity<>(prodotti, HttpStatus.OK);
    }

    @GetMapping("/details")
    public List<Prodotto> getProdottoById(String id) {
        return prodottoService.getProdottoById(id);
    }
}