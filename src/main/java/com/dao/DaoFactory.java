package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DaoFactory {
	 private String url;
	    private String username;
	    private String password;

	    DaoFactory(String url, String username, String password) {
	        this.url = url;
	        this.username = "root";
	        this.password ="";
	    }

	    public static DaoFactory getInstance() {
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
	        } catch (ClassNotFoundException e) {

	        }

	        DaoFactory instance = new DaoFactory(
	                "jdbc:mysql://localhost:3306/db_mvc_cat", "root", "");
	        		System.out.println("connexion � la base de donn�e reussi");
	        return instance;
	    }

	    public Connection getConnection() throws SQLException {
	        return DriverManager.getConnection(url, username, password);
	    }

	    // R�cup�ration du Dao
	    public ProductInterfaceDao getProductDao() {
	        return new ProductImpleDao(this);
	    }
}
