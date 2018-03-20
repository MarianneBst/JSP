package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Authentification extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EntityManagerFactory emf = (EntityManagerFactory)getServletContext().getAttribute("emf");
		//Persistence.createEntityManagerFactory("persistence");
		EntityManager em = emf.createEntityManager();
		
		Query query = em.createQuery("SELECT * FROM Utilisateur WHERE login = :login AND password = :password");
		query.setParameter("login", request.getAttribute("login"));
		query.setParameter("password", request.getAttribute("password"));
		
		List result = query.getResultList();
		if(result.isEmpty()) {
			HttpSession session = request.getSession();
			session.setAttribute("utilisateur", request.getAttribute("login"));
			request.getSession().setAttribute("tentativeConnexion", true);
		}
		em.close();
		emf.close();
		response.sendRedirect("Connexion.jsp");
		
	}

}
