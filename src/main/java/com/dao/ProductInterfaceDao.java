package com.dao;

import java.util.List;

import com.beans.Product;


public interface  ProductInterfaceDao {
	 void ajouter( Product email);
	  List<Product> lister();
}
//interface Dao, m�thode abstraite