package com.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;


public class servletCrud extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public servletCrud() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	
		this.getServletContext().getRequestDispatcher("/WEB-INF/vue.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		HttpSession session = request.getSession();
		String id=request.getParameter("id");
		String prenom=request.getParameter("prenom");
		session.setAttribute("id", id);
		session.setAttribute("prenom", prenom);
		String date = new SimpleDateFormat("yyyy/MM/dd ").format(Calendar.getInstance().getTime());
		session.setAttribute("date", date);
		this.getServletContext().getRequestDispatcher("/WEB-INF/vue.jsp").forward(request, response);
		
	}

}
