<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot TP02 | Lister Toutes Les Produits </title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" />
    <c:url value="/css/main.css" var="jstlCss" /> 
    <link href="${jstlCss}" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
    	<div class="mb-3">
           	<a href="create">
    			<button type="button" class="btn btn-primary">Creer Un Produit</button>
        	</a>
    	</div>
        <table class="table">
            <thead class="table-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nom De Produit</th>
                    <th scope="col">Prix De Produit</th>
                    <th scope="col">Date</th>
                    <th scope="col">Edition</th>
                    <th scope="col">Supression</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${produits}" var="prod">
                    <tr>
                        <th scope="row"> ${prod.idProduit} </th>
                        <td> ${prod.nomProduit} </td>
                        <td> ${prod.prixProduit} </td>
                        <td>
                            <fmt:formatDate value="${prod.dateCreation}" pattern="dd/MM/yyyy" />
                        </td>
                        <td> 
                        	<a href="editerProduit?id=${prod.idProduit}">
                        		<button type="button" class="btn btn-success">Editer</button>
                        	</a>
                        </td>
                        <td>
	                       	<a onclick="return confirm('Etes-vous sûr tu peut supprimr le produit  : ${prod.nomProduit}?')" href="supprimerProduit?id=${prod.idProduit}">
                        		<button type="button" class="btn btn-danger">Suprimer</button>
                        	</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script type="text/javascript" src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script> 
</body>
</html>