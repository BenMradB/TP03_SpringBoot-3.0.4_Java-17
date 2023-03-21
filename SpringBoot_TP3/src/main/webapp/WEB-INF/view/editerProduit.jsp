<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot TP02 | Editer Un Produit </title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" />
    <c:url value="/css/main.css" var="jstlCss" /> 
    <link href="${jstlCss}" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <div class="mb-3">
            <a href="lister">
                <button type="button" class="btn btn-primary">Lister Les Produits</button>
            </a>
        </div>
        <form action="editerProduit" method="POST">
            <div class="form-floating mb-3">
                <input type="text" name="idProduit"  value="${produit.idProduit}" class="form-control" id="floatingInput" placeholder="ID Produit" hidden>
                <label for="floatingInput">ID Produit Produit</label>
              </div>
            <div class="form-floating mb-3">
                <input type="text" name="nomProduit"  value="${produit.nomProduit}" class="form-control" id="floatingInput" placeholder="Nom Produit">
                <label for="floatingInput">Nom Produit</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" name="prixProduit" value="${produit.prixProduit}" class="form-control" id="floatingPassword" placeholder="Prix Produit">
                <label for="floatingPassword">Prix Produit</label>
              </div>
              <div class="form-floating mb-3">
               	<fmt:formatDate pattern="yyyy-MM-dd" value="${produit.dateCreation}" var="formatDate" />
                <input type="date" name="date" value="${formatDate}" class="form-control" id="floatingPassword" placeholder="Date De Creation">
                <label for="floatingPassword">Date De Creation</label>
              </div>
    
              <button type="submit" class="btn btn-primary form-control">Editer Le Produit</button>
        </form>
    </div>
    <script type="text/javascript" src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>