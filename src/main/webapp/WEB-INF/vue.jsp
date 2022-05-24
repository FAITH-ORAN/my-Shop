
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My shop</title>
<style type="text/css">
<%@ include file ="style/vueStyle.css" %>
</style>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<div class="container-fluid">
		<div class="row">

			<div id="contente" class="content col-12 col-md-12">
				<div class="row">
					<div class=" text-center mx-auto mt-3 col-md-12">
						<div class="card">
							<div class="card-header animated-bg" id="header">
								<img
									src="https://wallpaperaccess.com/full/2483946.jpg"
									alt="shopping">
							</div>
							<div class="card-content">
								<h3 class="card-title animated-bg animated-bg-text" id="title">
									Bienvenue <br /> à My Shop.com
								</h3>
								<p class="card-except" id="except">
									Restez brancher avec les dernières nouveautés et les meilleurs
									prix!! <span class="animated-bg animated-bg-text">&nbsp;</span>
									<span class="animated-bg animated-bg-text">&nbsp;</span> <span
										class="animated-bg animated-bg-text">&nbsp;</span>
								</p>
								<div class="author">
									<div class="profile-img animated-bg" id="profile-img">
										<img
											src="https://thumbs.dreamstime.com/b/ic-ne-de-bande-dessin%C3%A9e-de-femme-conception-de-personne-dessin-de-vecteur-73696964.jpg"
											alt="">
									</div>
									<div class="author-info">
										<%
										String id = (String) request.getAttribute("id");
										String prenom = (String) request.getAttribute("prenom");
										String date = (String) request.getAttribute("date");
										%>
										<strong class="animated-bg animated-bg-text" id="name">
											<div>${ sessionScope.id }</div>
											<div>${ sessionScope.prenom }</div>
										</strong> <small class="animated-bg animated-bg-text" id="date">
											<div>${ sessionScope.date }</div>
										</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>