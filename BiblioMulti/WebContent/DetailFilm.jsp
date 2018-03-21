<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="head.html" %>
<title>Détails Film</title>
</head>
<body>
<%@ include file="header.jsp" %>
<h1>Détails Film</h1>
<form>
<img src="C:\Users\maria\Documents\Polytech Tours\4A\S8\Archi des SI\TP noté\JSP\BiblioMulti\WebContent\HP1.jpg" alt="Harry Potter 1" width="300" height="410">
<label for="titre">Titre :</label><input type="text" readonly class="form-control-plaintext" id="titre" value="Harry Potter à l'Ecole des sorciers">
<label>Réalisateur</label>
<button type="button" class="btn btn-dark">Modifier</button>
<button type="button" class="btn btn-danger">Supprimer</button>
</form>


<%@ include file="footer.html" %>
</body>
</html>