package com.profumishop.model;

public class Prodotto {
	private Integer id;
    private String nome;
    private String descrizione;
    private double prezzo;
    private String categoria;
    private String immagini;

    // Costruttore
    public Prodotto(Integer id, String nome, String descrizione, double prezzo, String categoria, String immagini) {
    	this.id = id;
        this.nome = nome;
        this.descrizione = descrizione;
        this.prezzo = prezzo;
        this.categoria = categoria;
        this.immagini = immagini;
    }

    public String getImmagini() {
		return immagini;
	}

	public void setImmagini(String immagini) {
		this.immagini = immagini;
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

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
}
