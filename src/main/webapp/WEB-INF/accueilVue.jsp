<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Accueil</title>
    </head>
    <header> 
        <nav>
    <a href="http://localhost:8080/2027GestionClients/AccueilServlet">Accueil</a> 
    <a href="http://localhost:8080/2027GestionClients/ListeClients">Liste des clients</a> 
    <a href="http://localhost:8080/2027GestionClients/NouveauServlet">Nouveau client</a>
</nav>
    </header> 
  
    <body>
        <h1>Bienvenue sur la nouvelle application de gestion des clients écrite avec JakartaEE</h1>
        <a href="NouveauServlet">Créer un nouveau client</a>
        <br>
        <a href="ListeServlet">Voir la liste des clients</a>
        
        <% if (session.getAttribute("pseudo") != null) { %>
       <% <h1> Bienvenue <%= request.getParameter("pseudo") %> </h1>
       <% } else { %>
        <form action="ConnexionServlet" method="GET">
            Pseudo : <input type="text" name="pseudo" required> <br>
            Mot de passe : <input type="password" name="motdepasse" required> <br>
            <button type="submit">Valider</button>
        </form>
<% } %>
    </body>
</html>
