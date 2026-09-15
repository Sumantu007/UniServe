<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UniServe - Login</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<header class="navbar">
<a href="index.jsp" class="logo">UNI<span>SERVE</span></a>
<nav>
<a href="index.jsp">Home</a>
<a href="register.jsp" class="btn btn-primary">Create Account</a>
</nav>
</header>

<section class="form-page">
<div class="form-card">
<div class="badge">WELCOME BACK</div>
<h1>Login to UniServe</h1>
<p>Access your UniServe profile and services.</p>

<% String error = request.getParameter("error"); %>
<% if ("invalid".equals(error)) { %><p class="form-note" style="color:red">Invalid mobile/email or password.</p><% } %>
<% if ("empty".equals(error)) { %><p class="form-note" style="color:red">Please enter login ID and password.</p><% } %>
<% if ("db".equals(error)) { %><p class="form-note" style="color:red">Login failed. Check MySQL connection and console.</p><% } %>
<% if ("1".equals(request.getParameter("registered"))) { %><p class="form-note" style="color:green">Registration successful. Please login.</p><% } %>
<% if ("1".equals(request.getParameter("logout"))) { %><p class="form-note" style="color:green">You have been logged out.</p><% } %>

<form action="login" method="post" id="loginForm">
<label>Mobile Number / Email</label>
<input type="text" name="loginId" id="loginId" placeholder="Enter mobile or email" required>

<label>Password</label>
<input type="password" name="password" id="loginPassword" placeholder="Enter password" required>

<button type="submit" class="btn btn-primary full-btn">Login</button>
</form>

<p class="form-note">New to UniServe? <a href="register.jsp">Create an account</a></p>
</div>
</section>
<footer>© 2026 UniServe | All in One</footer>
</body>
</html>
