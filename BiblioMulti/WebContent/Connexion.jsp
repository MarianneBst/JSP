<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 
String user = (String)session.getAttribute("utilisateur");
if(user != null)
	response.sendRedirect("Accueil.jsp");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>
</head>
<body>
<header> <h1>Connectez -vous !</h1></header>
<% if((String)session.getAttribute("tentativeConnexion") != null)
	out.print("<p color=\"RED\">Tentative de connexion échouée</p>");
%>
<form action="Authentification" method="POST">
<label>Nom utilisateur :</label><input type="text" name="login"/>
<br/>
<label>Mot de Passe :</label><input type="text" name="password"/>
<br/>
<input type="submit" Value="Se connecter"/>
</form>
</body>
</html>