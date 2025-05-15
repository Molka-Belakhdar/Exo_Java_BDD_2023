<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%
    // Récupération ou initialisation du tableau
    ArrayList<Integer> tableau = (ArrayList<Integer>) session.getAttribute("tableau");
    if (tableau == null) {
        tableau = new ArrayList<Integer>();
        session.setAttribute("tableau", tableau);
    }

    // Message pour l'utilisateur
    String message = "";

    // Action sélectionnée
    String action = request.getParameter("action");

    if ("ajouter".equals(action)) {
        try {
            int valeur = Integer.parseInt(request.getParameter("valeur"));
            if (tableau.size() < 10) {
                tableau.add(valeur);
                message = "Valeur ajoutée : " + valeur;
            } else {
                message = "Le tableau est plein (10 éléments max).";
            }
        } catch (Exception e) {
            message = "Veuillez entrer un entier valide.";
        }
    } else if ("supprimer".equals(action)) {
        if (!tableau.isEmpty()) {
            tableau.remove(tableau.size() - 1);
            message = "Dernière valeur supprimée.";
        } else {
            message = "Le tableau est vide.";
        }
    } else if ("vider".equals(action)) {
        tableau.clear();
        message = "Le tableau a été vidé.";
    } else if ("afficher".equals(action)) {
        message = "Contenu du tableau : " + tableau.toString();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tableau JSP</title>
</head>
<body>
    <h2>Tableau d'entiers</h2>

    <!-- Ajouter une valeur -->
    <form method="post">
        <label>Ajouter une valeur :</label>
        <input type="number" name="valeur" required>
        <button type="submit" name="action" value="ajouter">Ajouter</button>
    </form>

    <!-- Supprimer la dernière -->
    <form method="post">
        <button type="submit" name="action" value="supprimer">Supprimer le dernier</button>
    </form>

    <!-- Afficher le tableau -->
    <form method="post">
        <button type="submit" name="action" value="afficher">Afficher</button>
    </form>

    <!-- Vider le tableau -->
    <form method="post">
        <button type="submit" name="action" value="vider">Vider</button>
    </form>

    <!-- Message -->
    <p><strong><%= message %></strong></p>
</body>
</html>
