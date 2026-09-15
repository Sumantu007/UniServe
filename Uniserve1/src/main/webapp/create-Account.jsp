<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>UniServe - Create Account</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<header class="navbar">
<a href="index.jsp" class="logo">UNI<span>SERVE</span></a>
<nav><a href="index.jsp">Home</a><a href="login.jsp">Login</a></nav>
</header>

<section class="form-page">
<div class="form-card">
<div class="success-icon">✓</div>
<h1>Profile Created!</h1>
<p>Your UniServe demo profile has been created successfully.</p>

<div class="profile-summary" id="profileSummary">
<p><strong>Name:</strong> <span id="summaryName">-</span></p>
<p><strong>Mobile:</strong> <span id="summaryMobile">-</span></p>
<p><strong>Email:</strong> <span id="summaryEmail">-</span></p>
<p><strong>KYC:</strong> <span id="summaryKyc">-</span></p>
</div>

<div class="hero-buttons">
<a href="dashboard.jsp" class="btn btn-primary">Open Dashboard</a>
<a href="index.jsp" class="btn btn-light">Home</a>
</div>
</div>
</section>

<footer>© 2026 UniServe | All in One</footer>
<script src="js/auth.js"></script>
</body>
</html>
