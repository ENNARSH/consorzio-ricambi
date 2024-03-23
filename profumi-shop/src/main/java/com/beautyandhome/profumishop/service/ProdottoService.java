package com.beautyandhome.profumishop.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beautyandhome.profumishop.model.Prodotto;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class ProdottoService {
    @Value("${spring.datasource.url}")
    private String url;

    @Value("${spring.datasource.username}")
    private String username;

    @Value("${spring.datasource.password}")
    private String password;
	
	// Metodo per recuperare tutti i prodotti dalla tabella "prodotto"
    public List<Prodotto> getAllProdotti() {
        List<Prodotto> prodotti = new ArrayList<>();
        String query = "SELECT * FROM prodotti";

        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement statement = conn.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                // Mappa ogni riga del risultato in un oggetto Prodotto
                int id = resultSet.getInt("id");
                String nome = resultSet.getString("nome");
                String descrizione = resultSet.getString("descrizione");
                double prezzo = resultSet.getDouble("prezzo");
                Integer quantita = resultSet.getInt("quantita");
                String categoria = resultSet.getString("categoria");
                String immagine = resultSet.getString("immagine");

                Prodotto prodotto = new Prodotto( id, nome, descrizione, prezzo, quantita, categoria, immagine);
                prodotti.add(prodotto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return prodotti;
    }

}
