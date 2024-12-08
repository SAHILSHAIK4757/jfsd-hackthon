<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Jobs</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.card {
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.2s;
	margin-bottom: 20px;
}

.card:hover {
	transform: scale(1.03);
}

.card-title {
	font-size: 18px;
	font-weight: bold;
}

.btn {
	border-radius: 20px;
}
</style>
</head>
<body>
	<%@include file="mainnavebar.jsp"%>
	<!-- Include customer navbar -->

	<div class="container mt-4">
		<h2 class="text-center mb-4">Available Jobs</h2>
		<h4 align="center">${msg }</h4>
		<h5 class="card-title">${internship.title}</h5>
		<p class="card-text text-truncate">${internship.description}</p>
		<p class="card-text">
			<strong>Duration:</strong> ${internship.duration}
		</p>
		<p class="card-text">
			<strong>Avg salary:</strong> ${internship.stipend}
		</p>
		
		<p class="card-text">
			<strong>skills:</strong> ${internship.skills}
		</p>
		
		<p class="card-text">
			<strong>location:</strong> ${internship.location}
		</p>
		<p class="card-text">
			<strong>role:</strong> ${internship.role}
		</p>
		<p class="card-text">
			<strong>qualification:</strong> ${internship.qualification}
		</p>
		<p class="card-text">
			<strong>createddate:</strong> ${internship.createddate}
		</p>
	

	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
