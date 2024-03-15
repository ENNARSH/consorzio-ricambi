package com.profumishop.model;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Ordine {
    private Integer id;
    private String nome;
    private String cognome;
    private String indirizzo;
    private String cap;
    private String provincia;
    private String comune;
    private String telefono;
    private String email;
    private LocalDate dataOrdine;
    private BigDecimal totale;

    public Ordine() {
        // Costruttore vuoto
    }

    public Ordine(Integer id, String nome, String cognome, String indirizzo, String cap, String provincia, String comune,
                  String telefono, String email, LocalDate dataOrdine, BigDecimal totale) {
        this.id = id;
        this.nome = nome;
        this.cognome = cognome;
        this.indirizzo = indirizzo;
        this.cap = cap;
        this.provincia = provincia;
        this.comune = comune;
        this.telefono = telefono;
        this.email = email;
        this.dataOrdine = dataOrdine;
        this.totale = totale;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getIndirizzo() {
        return indirizzo;
    }

    public void setIndirizzo(String indirizzo) {
        this.indirizzo = indirizzo;
    }

    public String getCap() {
        return cap;
    }

    public void setCap(String cap) {
        this.cap = cap;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getComune() {
        return comune;
    }

    public void setComune(String comune) {
        this.comune = comune;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getDataOrdine() {
        return dataOrdine;
    }

    public void setDataOrdine(LocalDate dataOrdine) {
        this.dataOrdine = dataOrdine;
    }

    public BigDecimal getTotale() {
        return totale;
    }

    public void setTotale(BigDecimal totale) {
        this.totale = totale;
    }
}
