<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UniServe - Register</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<header class="navbar">
<a href="index.jsp" class="logo">UNI<span>SERVE</span></a>
<nav>
<a href="index.jsp">Home</a>
<a href="login.jsp">Login</a>
</nav>
</header>

<section class="form-page">
<div class="form-card">
<div class="badge">CREATE YOUR UNISERVE PROFILE</div>
<h1>Create Account</h1>
<p>Register once and access all UniServe services.</p>

<% String error = request.getParameter("error"); %>
<% if ("empty".equals(error)) { %><p class="form-note" style="color:red">Please fill all fields.</p><% } %>
<% if ("mobile".equals(error)) { %><p class="form-note" style="color:red">Enter a valid 10-digit mobile number.</p><% } %>
<% if ("email".equals(error)) { %><p class="form-note" style="color:red">Enter a valid email address.</p><% } %>
<% if ("short".equals(error)) { %><p class="form-note" style="color:red">Password must be at least 6 characters.</p><% } %>
<% if ("match".equals(error)) { %><p class="form-note" style="color:red">Passwords do not match.</p><% } %>
<% if ("mobileExists".equals(error)) { %><p class="form-note" style="color:red">Mobile number is already registered.</p><% } %>
<% if ("emailExists".equals(error)) { %><p class="form-note" style="color:red">Email is already registered.</p><% } %>
<% if ("db".equals(error)) { %><p class="form-note" style="color:red">Registration failed. Check MySQL connection and console.</p><% } %>

<form action="registerServlet" method="post" id="registerForm">
<label>Full Name</label>
<input type="text" name="fullName" id="fullName" placeholder="Enter your full name" required>

<label>Mobile Number</label>
<input type="tel" name="mobile" id="mobile" placeholder="10-digit mobile number" maxlength="10" pattern="[6-9][0-9]{9}" required>

<label>Email Address</label>
<input type="email" name="email" id="email" placeholder="Enter your email" required>

<label>Password</label>
<input type="password" name="password" id="password" placeholder="Create password"  required>

<label>Confirm Password</label>
<input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm password"  required>

<button type="submit" class="btn btn-primary full-btn">Create Account</button>
</form>

<p class="form-note">Already have an account? <a href="login.jsp">Login here</a></p>
</div>
</section>
<footer>© 2026 UniServe | All in One</footer>
</body>
</html>
