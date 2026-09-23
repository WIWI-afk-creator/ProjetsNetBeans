<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Accueil</title>
    </head>
<%@ include file="WEB-INF/fragments/entete.jsp" %>
<%@ include file="WEB-INF/fragments/menu.jsp" %>
  
  
    <body>
        <h1>Bienvenue sur la nouvelle application de gestion des clients écrite avec JakartaEE</h1>
        <a href="NouveauServlet">Créer un nouveau client</a>
        <br>
        <a href="ListeServlet">Voir la liste des clients</a>
        
        <% if (session.getAttribute("pseudo") != null) { %>
<% } h1> Bienvenue <%= session.getAttribute("pseudo") %> </h1>
<% } else { %>
        <form action="ConnexionServlet" method="GET">
            Pseudo : <input type="text" name="pseudo" required> <br>
            Mot de passe : <input type="password" name="motDePasse" required> <br>
            <button type="submit">Valider</button>
        </form>
<% } %>
    </body>
</html>
