<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles filantes : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur A --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
public class CarreEtoiles {
    public static void main(String[] args) {
        int taille = 5; 
        for (int i = 0; i < taille; i++) {
            for (int j = 0; j < taille; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
public class TriangleGauche {
    public static void main(String[] args) {
        int taille = 5; 
        for (int i = 1; i <= taille; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*</br>**</br>***</br>****</br>*****</p>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
public class Main {
  public static void main(String[] args) {
    
    int hauteur = 5;
    for (int i = hauteur; i >= 1; i--) {
        for (int j = 1; j <= i; j++) {
            System.out.print("*");
        }
        System.out.println();
    }
  }
}

<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>****</br>***</br>**</br>*</p>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
public class Main {
  public static void main(String[] args) {
    
    int hauteur = 5;

    for (int i = 1; i <= hauteur; i++) {
        for (int j = 0; j < hauteur - i; j++) {
            System.out.print(" ");
        }
        for (int k = 0; k < i; k++) {
            System.out.print("*");
        }
        System.out.println();
    }
  }
}

<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
import java.util.Scanner;
public class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Entrez la hauteur du triangle : ");
    int hauteur = scanner.nextInt(); 
    for (int i = 1; i <= hauteur; i++) {
        for (int j = 0; j < hauteur - i; j++) {
            System.out.print(" ");
        }
        for (int k = 0; k < (2 * i - 1); k++) {
            System.out.print("*");
        }
        System.out.println();
    }

    scanner.close();
  }
}

<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
import java.util.Scanner;
public class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Entrez la hauteur du demi-losange : ");
    int hauteur = scanner.nextInt();
    for (int i = 1; i <= hauteur; i++) {
        for (int j = 1; j <= i; j++) {
            System.out.print("*");
        }
        System.out.println();
    }
    for (int i = hauteur - 1; i >= 1; i--) {
        for (int j = 1; j <= i; j++) {
            System.out.print("*");
        }
        System.out.println();
    }

    scanner.close();
  }
}

<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
import java.util.Scanner;
public class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Entrez un nombre pour afficher sa table de multiplication : ");
    int nombre = scanner.nextInt();
    System.out.println("Table de multiplication de " + nombre + " :");
    for (int i = 1; i <= 10; i++) {
        System.out.println(nombre + " x " + i + " = " + (nombre * i));
    }

    scanner.close();
  }
}

<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
