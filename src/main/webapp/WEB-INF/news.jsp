
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>My Shop</title>
<style type="text/css">
<%@ include file ="style/newsStyle.css" %>
</style>
</head>
<body>
<%
	String emaill = (String) request.getAttribute("email");
%>

 

    <div class="container col-12 col-md-12">
        <div class="row">
            <div id="thanks" class=" wrap-thanks col-6 col-md-6 mx-auto" >
                <div class="row">
                    <i class="circle mt-3 fas fa-check-circle text-center col-12 col-md-12"></i>
                    <div class ="tex mt-3 col-12 col-md-12">Merci! </div>
                    <div class =" mt-3 mb-4 col-12 col-md-12">Votre email <%out.print(emaill);%> a été transmis avec succès</div>
                    <button class="mx-auto mb-4" ><a href="/TpJavaCrud">Retour à la page accueil</a></button>
                </div><!-- end row-->  
            </div> <!-- end thanks-->
        </div><!-- end row-->
    </div><!-- end container-->


</body>
</html>