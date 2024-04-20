package com.beautyandhome.profumishop.controller;

import com.beautyandhome.profumishop.model.OrdineCompleto;
import com.beautyandhome.profumishop.service.OrdineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/ordini")
@CrossOrigin(origins = "https://ennarsh.github.io") // Allow requests from specific origin
public class OrdineController {

    private final OrdineService ordineService;

    @Autowired
    public OrdineController(OrdineService ordineService) {
        this.ordineService = ordineService;
    }

    @PostMapping
    public ResponseEntity<String> salvaOrdine(@RequestBody OrdineCompleto ordineCompleto) {
        ordineService.salvaOrdineCompleto(ordineCompleto);
        return ResponseEntity.status(HttpStatus.CREATED).body("Ordine salvato con successo");
    }

}
