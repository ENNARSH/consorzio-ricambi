package com.profumishop.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.profumishop.model.Prodotto;

public class ProdottoService {
	
	// Metodo per recuperare tutti i prodotti dalla tabella "prodotto"
    public List<Prodotto> getAllProdotti() {
        List<Prodotto> prodotti = new ArrayList<>();
        String query = "SELECT * FROM prodotto";

        try (Connection conn = DriverManager.getConnection("url_del_tuo_database", "username", "password");
             PreparedStatement statement = conn.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                // Mappa ogni riga del risultato in un oggetto Prodotto
                int id = resultSet.getInt("id");
                String nome = resultSet.getString("nome");
                String descrizione = resultSet.getString("descrizione");
                double prezzo = resultSet.getDouble("prezzo");
                String marca = resultSet.getString("marca");

                Prodotto prodotto = new Prodotto(id, nome, prezzo, descrizione, categoria, immagini);
                prodotti.add(prodotto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return prodotti;
    }

}
