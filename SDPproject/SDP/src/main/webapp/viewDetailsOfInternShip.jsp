<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        padding: 20px;
    }

    .card:hover {
        transform: scale(1.03);
    }

    .card-title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 15px;
        color: #007bff;
    }

    .card-text {
        font-size: 16px;
        margin-bottom: 10px;
    }

    .btn {
        border-radius: 20px;
        padding: 10px 20px;
        font-size: 16px;
        font-weight: bold;
    }

    .status-container {
        font-size: 16px;
        font-weight: bold;
        margin-top: 20px;
    }

    .status-present {
        color: #28a745;
    }

    .status-missing {
        color: #dc3545;
    }

    .submit-link {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        font-weight: bold;
        border-radius: 20px;
        transition: background-color 0.3s ease;
    }

    .submit-link:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<%@include file="customernavbar.jsp"%>
	<!-- Include customer navbar -->

	<div class="container mt-4">
		<h2 class="text-center mb-4">Available Jobs</h2>
		<h4 class="text-center text-success">${msg }</h4>
		<div class="card">
			<h5 class="card-title">${internship.internship.title}</h5>
			<p class="card-text text-truncate">${internship.internship.description}</p>
			<p class="card-text">
				<strong>Duration:</strong> ${internship.internship.duration}
			</p>
			<p class="card-text">
				<strong>Avg salary :</strong> ${internship.internship.stipend}
			</p>
			<p class="card-text">
				<strong>Skills:</strong> ${internship.internship.skills}
			</p>
			<p class="card-text">
				<strong>Location:</strong> ${internship.internship.location}
			</p>
			<p class="card-text">
				<strong>Role:</strong> ${internship.internship.role}
			</p>
			<p class="card-text">
				<strong>Qualification:</strong> ${internship.internship.qualification}
			</p>
			<p class="card-text">
				<strong>Created Date:</strong> ${internship.internship.createddate}
			</p>
			<p class="card-text">
				<strong>Applied Date:</strong> ${internship.applieddate}
			</p>
			<p class="card-text">
				<strong>ID:</strong> ${internship.id}
			</p>

			<div class="status-container">
				<c:if test="${not empty submissionstatus}">
					<p class="status-present">Submission status: ${submissionstatus}</p>
				</c:if>

				<c:if test="${empty submissionstatus}">
					<p class="status-missing">No submission yet.</p>
					<a href="/work?id=${internship.id}" class="submit-link">Submit Work</a>
				</c:if>
			</div>
		</div>
	</div>
 

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
