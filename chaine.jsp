<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String bonjour = "salut la compagnie";

   
    String bonjourMaj = bonjour.toUpperCase();

    
    String premiereLettre = bonjour.substring(0, 1).toUpperCase(); // S
    String reste = bonjour.substring(1).toLowerCase(); // alut la compagnie
    String bonjourCap = premiereLettre + reste; // Salut la compagnie
%>

<!DOCTYPE html>
<html>
<head>
    <title>Chaine JSP</title>
</head>
<body>
    <h2>Texte original :</h2>
    <p><%= bonjour %></p>

    <h2>Tout en majuscules :</h2>
    <p><%= bonjourMaj %></p>

    <h2>Première lettre en majuscule :</h2>
    <p><%= bonjourCap %></p>
</body>
</html>
