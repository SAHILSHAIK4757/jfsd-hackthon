<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        /* General Styling */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f9;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #28a745;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white !important;
            font-weight: bold;
            margin: 0 15px;
            text-decoration: none;
            transition: background-color 0.3s ease, color 0.3s ease;
            padding: 10px 15px;
            border-radius: 5px;
        }

        .navbar a:hover {
            background-color: #1e7e34;
            color: #fff;
        }

        /* Internship Cards Section */
        .internship-cards {
            padding: 50px 20px;
            background: linear-gradient(180deg, #f0f8ff, #e9ecef);
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        /* Card Styling */
        .card {
            width: 320px;
            margin: 20px;
            border-radius: 15px;
            overflow: hidden;
            background: #fff;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        }

        .card-body {
            padding: 20px;
            text-align: center;
            border-top: 5px solid #0072ff;
        }

        .card-title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 15px;
            text-transform: capitalize;
            color: #0072ff;
        }

        .card-text {
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
        }

        .btn-view {
            display: inline-block;
            margin-top: 15px;
            background-color: #0072ff;
            color: white;
            font-weight: bold;
            padding: 10px 25px;
            border-radius: 50px;
            text-decoration: none;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .btn-view:hover {
            background-color: #0056b3;
            color: #fff;
        }

        /* No Internships Message */
        .no-internships {
            text-align: center;
            padding: 50px;
            color: #6c757d;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<%@include file="mainnavebar.jsp" %>

<!-- Internship Cards Section -->
<div class="internship-cards">
    <c:choose>
        <c:when test="${not empty internships}">
            <div class="row">
                <c:forEach var="internship" items="${internships}">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${internship.title}</h5>
                                <p class="card-text">${internship.description}</p>
                                <p class="card-text"><strong>Duration:</strong> ${internship.duration}</p>
                                <p class="card-text"><strong>Stipend:</strong> ${internship.stipend}</p>
                                <a href="/viewinterndetails?id=${internship.id}" class="btn-view">View Details</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>
        <c:otherwise>
            <div class="no-internships">
                <p>No jobs available at the moment.</p>
            </div>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
