<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Applied Jobs</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
            margin-bottom: 20px;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card-title {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        .btn-custom {
            border-radius: 50px; /* Fully rounded buttons */
            background: linear-gradient(90deg, #28a745, #218838); /* Gradient effect */
            color: white;
            font-size: 16px;
            font-weight: bold;
            padding: 10px 20px; /* Better padding for a prominent look */
            transition: all 0.4s ease-in-out;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        .btn-custom:hover {
            background: linear-gradient(90deg, #218838, #28a745); /* Reverse gradient on hover */
            transform: translateY(-3px); /* Lift effect */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Stronger shadow on hover */
            color: white;
        }

        .status-accepted {
            color: #28a745;
            font-weight: bold;
        }

        .status-pending {
            color: #ffc107;
            font-weight: bold;
        }

        .status-rejected {
            color: #dc3545;
            font-weight: bold;
        }
    </style>
</head>
<body>
<%@ include file="customernavbar.jsp" %> <!-- Include customer navbar -->

<div class="container mt-5">
    <h2 class="text-center mb-4">Applied Jobs</h2>
    <h4 class="text-center text-danger">${msg}</h4>
    
    <!-- Check if internships are available -->
    <c:choose>
        <c:when test="${not empty internships}">
            <div class="row">
                <c:forEach var="internship" items="${internships}">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${internship.internship.title}</h5>
                                <p class="card-text text-muted">${internship.internship.description}</p>
                               <%--  <p class="card-text"><strong>Duration:</strong> ${internship.internship.duration}</p>
                                 --%><p class="card-text"><strong>Avg salary:</strong> ${internship.internship.stipend}</p>
                                <p class="card-text"><strong>Applied Date:</strong> ${internship.applieddate}</p>
                                
                                <!-- Status or View Details -->
                                <c:choose>
                                    <c:when test="${internship.status == 'Accepted'}">
                                        <a href="/viewDetailsOfInternShip?id=${internship.id}" class="btn btn-custom mt-2">View Details</a>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="card-text">
                                            <strong>Status:</strong> 
                                            <span class="<c:choose>
                                                <c:when test='${internship.status == "Accepted"}'>status-accepted</c:when>
                                                <c:when test='${internship.status == "Pending"}'>status-pending</c:when>
                                                <c:otherwise>status-rejected</c:otherwise>
                                            </c:choose>">
                                                ${internship.status}
                                            </span>
                                        </p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>
        <c:otherwise>
            <div class="text-center">
                <p class="text-muted">No Jobs available at the moment.</p>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
