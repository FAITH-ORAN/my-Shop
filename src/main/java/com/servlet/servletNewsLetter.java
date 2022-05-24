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


public class servletNewsLetter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductInterfaceDao productDao;
	public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.productDao = daoFactory.getProductDao();
    }
       
    
    public servletNewsLetter() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/news.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		Product email = new Product();
		email.setEmail(request.getParameter("email"));
		String emaill=request.getParameter("email");
		request.setAttribute("email", emaill);
		productDao.ajouter(email);
		this.getServletContext().getRequestDispatcher("/WEB-INF/news.jsp").forward(request, response);
	}

}
