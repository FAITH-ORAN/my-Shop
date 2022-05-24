package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.beans.Product;

import com.dao.DaoFactory;
import com.dao.ProductInterfaceDao;


public class produitView extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private ProductInterfaceDao productDao;
	 
	 public void init() throws ServletException {
	        DaoFactory daoFactory = DaoFactory.getInstance();
	        this.productDao = daoFactory.getProductDao();
	    }
       
   
    public produitView() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	    request.setAttribute("products", productDao.lister());
		this.getServletContext().getRequestDispatcher("/WEB-INF/produitView.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

     
	}

}
