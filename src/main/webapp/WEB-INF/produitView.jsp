<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
<%@ include file ="style/produitView.css" %>
</style>
<title>Insert title here</title>
</head>
<body>
<div class="wrap">
	 <div class="flex">
	 	<h4><a href="/TpJavaCrud/servletCrud">My Shop</a></h4>
	 	<h2>Nos produits</h2>
	 </div>
	  <header>
        <form  id="form">
            <input type="text" id="search" class="search" placeholder="recherche">
        </form>
	   </header>
 </div>
    <main id="main">
     <c:forEach var="product" items="${ products }">
	    <div class="movie">
	    	<img  id="img_product" src='
	    	0' alt="produit">
	   
         <div class="movie-info">
                <h3 class="test" id="product_name"><c:out value="${ product.nom_produit }" /></h3>
                <span class=""><c:out value="${ product.prix }" /> €</span>
         </div>
          <div class="overview">
                <h3><c:out value="${ product.nom_produit }" /></h3>
					<p><c:out value="${ product.description}" />
					</p>
			</div>
		</div>
	</c:forEach>   
   	</main>
 
 <script>
<%@include file="/script/produitView.js" %>
</script>
     
</body>
</html>