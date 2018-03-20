<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 
String user = (String)session.getAttribute("utilisateur");
if(user != null && user.compareTo("") != 0)
	response.sendRedirect("Accueil.jsp");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>
</head>
<body>
<%=session.getAttribute("tentativeConnexion") %>
<%=session.getAttribute("utilisateur") %>
<header> <h1>Connectez -vous !</h1></header>
<% if(session.getAttribute("tentativeConnexion") != null && ((String)session.getAttribute("tentativeConnexion")).compareTo("true") == 0)
	out.print("<p style=\"color=red\">Tentative de connexion échouée</p>");
%>

<form action="Authentification" method="POST">
Nom utilisateur :<input type="text" name="login"/>
<br/>
Mot de Passe :<input type="text" name="password"/>
<br/>
<input type="submit" Value="Se connecter"/>
</form>
</body>
</html>