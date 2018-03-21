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
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Connexion</title>
</head>
<body class="container">
<div class="row justify-content-center">
<%-- 
<%=session.getAttribute("tentativeConnexion") %>
<%=session.getAttribute("utilisateur") %>
--%>

<% if(session.getAttribute("tentativeConnexion") != null && ((String)session.getAttribute("tentativeConnexion")).compareTo("true") == 0)
	out.print("<p style=\"color=red\">Tentative de connexion échouée</p>");
%>

<form class="form-signin col-4" action="Authentification" method="POST">
	  
      <p class="text-center"><img class="mb-4" src="https://icon-icons.com/icons2/317/PNG/128/book-bookmark-icon_34486.png" alt="" width="82" height="82"></p>
    
      <h1 class="h3 mb-3 font-weight-normal text-center">Connectez-vous</h1>
      <label for="inputEmail" class="sr-only">Nom utilisateur</label>
      <input type="text" class="form-control" name="login" placeholder="ex: Admin" required="">
      <label for="inputPassword" class="sr-only">Mot de Passe</label>
      <input type="password" id="inputPassword" class="form-control" name="password" placeholder="ex: Password" required="">
      <br/>
      <button class="btn btn-lg btn-primary btn-block align-items-end" type="submit">Connexion</button>
</form>
    
</div>
    
<%-- 
<form action="Authentification" method="POST">
Nom utilisateur :<input type="text" name="login"/>
<br/>
Mot de Passe :<input type="text" name="password"/>
<br/>
<input type="submit" Value="Se connecter"/>
</form>
--%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>