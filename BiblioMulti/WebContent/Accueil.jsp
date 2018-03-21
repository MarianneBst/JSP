<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="head.html" %>
<title>Accueil</title>
</head>
<body>
<%@ include file="header.html" %>
<h1 class="jumbotron-heading">Bibliothèques tourangelles !</h1>
<h2 class="lead text-muted">Trouvez tous les contenus multimédias existants dans le monde !</h2>
<form>
<input type="checkbox">Films
<input type="checkbox">Clips
<input type="checkbox">Musiques

<table>
<tr><th>Titre</th><th>Type</th><th>Détails</th></tr>
<td></td>
</table>

<input type="button" value="Ajouter">
</form>

<%@ include file="footer.html" %>
</body>
</html>