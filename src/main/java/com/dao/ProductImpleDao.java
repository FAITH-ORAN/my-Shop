package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.beans.Product;


public class ProductImpleDao implements ProductInterfaceDao {
	  private DaoFactory daoFactory;
	  
	  ProductImpleDao(DaoFactory daoFactory) {
	        this.daoFactory = daoFactory;
	    }
	  
	  
	  @Override
	    public void ajouter(Product email) {
		  Connection connexion = null;
	      PreparedStatement preparedStatement = null;
	      try {
	    	  connexion = daoFactory.getConnection();
	          preparedStatement = connexion.prepareStatement("INSERT INTO newsletter(email) VALUES(?);");
	          preparedStatement.setString(1, email.getEmail());
	          preparedStatement.executeUpdate();
	          System.out.println("insertion reussi");
	    	  
	      }catch (SQLException e) {
              e.printStackTrace();
          }
	  }
	  
	  
	  @Override
	    public List<Product> lister() {
	        List<Product> products = new ArrayList<Product>();
	        Connection connexion = null;
	        Statement statement = null;
	        ResultSet resultat = null;
	        try {
	            connexion = daoFactory.getConnection();
	            statement = connexion.createStatement();
	            resultat = statement.executeQuery("SELECT nom_produit, prix,description FROM produits;");
	            

	            while (resultat.next()) {
	                String nom_produit = resultat.getString("nom_produit");
	                double prix = resultat.getDouble("prix");
	                String description=resultat.getString("description");
	                Product product = new Product();
	                product.setNom_produit(nom_produit);
	                product.setPrix(prix);
	                product.setDescription(description);
	                products.add(product);
	             }
	            }catch (SQLException e) {
	                e.printStackTrace();
	            }
	            return products;
	  		}

}
