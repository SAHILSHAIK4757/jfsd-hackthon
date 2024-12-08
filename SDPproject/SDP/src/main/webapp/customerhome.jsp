<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Portal Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        /* General Styling */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        h1, h2, h3 {
            font-weight: bold;
        }

        /* Welcome Banner Styling */
        .welcome-banner {
            text-align: center;
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            padding: 50px 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            margin: 30px 0;
        }

        .welcome-banner h1 {
            font-size: 48px;
            margin-bottom: 10px;
        }

        .welcome-banner p {
            font-size: 20px;
            margin-bottom: 20px;
        }

        /* Button Styling */
        .btn-primary {
            background-color: white;
            color: #007bff;
            border: none;
            padding: 15px 30px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            text-decoration: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            color: white;
        }

        /* Job Section */
        .jobs {
            padding: 50px 20px;
            background-color: #ffffff;
        }

        .jobs .job {
            background: #e3f2fd;
            border-radius: 10px;
            padding: 20px;
            margin: 15px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .jobs h2 {
            margin-bottom: 30px;
        }

        /* Footer */
        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
            text-align: center;
            margin-top: 30px;
        }

        .footer a {
            color: #007bff;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@include file="customernavbar.jsp" %><br/><br/>

    <!-- Welcome Banner -->
    <div class="container">
        <div class="welcome-banner">
            <h1>Welcome, <%= c.getName() %>!</h1>
            <p>Your career journey begins here. Explore job opportunities tailored to your skills and aspirations.</p>
        </div>
    </div>

    <!-- Job Section -->
    <div class="jobs container">
        <h2 class="text-center">Featured Job Categories</h2>
        <div class="job">
            <h3>Software Engineering</h3>
            <p>Build and maintain cutting-edge software applications for top global companies.</p>
            <strong>Popular Roles:</strong> Backend Developer, Frontend Developer, DevOps Engineer.
        </div>
        <div class="job">
            <h3>Data Science</h3>
            <p>Analyze complex datasets and deliver insights to drive impactful decisions.</p>
            <strong>Popular Roles:</strong> Data Analyst, Machine Learning Engineer, AI Specialist.
        </div>
        <div class="job">
            <h3>Digital Marketing</h3>
            <p>Create engaging campaigns to elevate brands in the digital world.</p>
            <strong>Popular Roles:</strong> SEO Specialist, Social Media Manager, Content Strategist.
        </div>
        <div class="job">
            <h3>Project Management</h3>
            <p>Lead teams and projects to deliver high-quality results on time.</p>
            <strong>Popular Roles:</strong> Scrum Master, Product Manager, Agile Coach.
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 JobPortal. All Rights Reserved. <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </div>
</body>
</html>
