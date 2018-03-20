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

import com.model.Utilisateur;


public class Authentification extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence"); //(EntityManagerFactory)getServletContext().getAttribute("emf");
		EntityManager em = emf.createEntityManager();
		
		//Création de l'admin
		Utilisateur user = new Utilisateur();
		user.setLogin("Admin");
		user.setPassword("Password");
		user.setDroit_modification(true);
		//Envoie vers la BDD
		em.getTransaction().begin();
		em.persist(user);
		em.getTransaction().commit();

		//Requete pour tester si l'utilisateur rentrée est dans la bdd
		String login = request.getParameter("login");
		String password = (String)request.getParameter("password");
		String s = "Select login, droit_modification FROM Utilisateur WHERE login = '"+ login +"' AND password = '" + password + "'";
		Query query = em.createQuery(s);;
		
		List result = query.getResultList();
		if(!result.isEmpty()) {
			HttpSession session = request.getSession();
			session.setAttribute("utilisateur", login);
		}
		else
			request.getSession().setAttribute("tentativeConnexion", "true");
		
		em.close();
		emf.close();
		response.sendRedirect("Connexion.jsp");
		
	}

}
