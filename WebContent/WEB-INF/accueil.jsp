<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container mt-5">
		<form method="post" action="">
		<div class="card-group">
			<div class="card border-0">
				<img class="card-img-top"
					src="https://svgsilh.com/png-1024/2797818.png"
					alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Ville 1</h5>
					<p class="card-text">Sélectionner ici une première ville</p>
					<div>
					<select class="custom-select" name="selectville1" size="1">
						<c:forEach items="${listevilles}" var="ville" varStatus="status">
							<option name="ville1" value="${ville.getCodeCommuneINSEE()}">${ville.getNomCommune()}</option>
						</c:forEach>
					</select>
					</div>
				</div>
			</div>
			<div class="card text-white text-center p-3 border-0">
				<div style="display:grid;justify-content:center;align-items:center;" class="card-body">
					<div>
					<a href="/ESEO_TP_C/listeville">
						<button type="button" class="btn btn-dark">Voir la liste des villes</button>
					</a>
					</div>
					
					<div>
						<input type="submit" value="Calculer la distance" class="btn btn-primary" style="margin-top: 30px;"/>
					</div>
				</div>
			</div>
			<div class="card border-0">
				<img class="card-img-top"
					src="https://svgsilh.com/png-1024/2797818.png"
					alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Ville 2</h5>
					<p class="card-text">Sélectionner ici une deuxième ville</p>
					<div>
					<select class="custom-select" name="selectville2" size="1">
						<c:forEach items="${listevilles}" var="ville" varStatus="status">
							<option name="ville2" value="${ville.getCodeCommuneINSEE()}">${ville.getNomCommune()}</option>
						</c:forEach>
					</select>
					</div>
						
				</div>
			</div>
		</div>
		</form>
	</div>
	<div class="container mt-5">
	<c:if test="${ !empty sessionScope.distance }">
						<h4 style="display: flex; justify-content:center; align-items: center;">La distance entre <c:out value="${sessionScope.ville1}"></c:out> et  
						<c:out value="${sessionScope.ville2}"></c:out>
						est de <c:out value="${sessionScope.distance}"></c:out> KM</h4></c:if>
	</div>

</body>
</html>