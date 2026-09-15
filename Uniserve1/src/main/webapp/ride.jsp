<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
// Login protection
String userName = (String) session.getAttribute("userName");

%>

<!DOCTYPE html>

<html>

<head>

```
<meta charset="UTF-8">

<title>UniServe - Ride Services</title>

<link rel="stylesheet" href="css/style.css">

<style>

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f5f5f5;
    }

    .ride-container {
        width: 90%;
        max-width: 1100px;
        margin: 40px auto;
        text-align: center;
    }

    .ride-container h1 {
        font-size: 32px;
        margin-bottom: 10px;
    }

    .ride-container p {
        color: #555;
        margin-bottom: 30px;
    }

    .ride-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
        gap: 25px;
    }

    .ride-card {
        background: white;
        padding: 30px 20px;
        border-radius: 15px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.12);
        transition: 0.3s;
    }

    .ride-card:hover {
        transform: translateY(-6px);
        box-shadow: 0 8px 18px rgba(0,0,0,0.18);
    }

    .ride-icon {
        font-size: 50px;
        margin-bottom: 15px;
    }

    .ride-card h2 {
        margin: 10px 0;
    }

    .ride-card p {
        margin-bottom: 20px;
    }

    .ride-btn {
        display: inline-block;
        padding: 10px 22px;
        background: #222;
        color: white;
        text-decoration: none;
        border-radius: 8px;
    }

    .ride-btn:hover {
        background: #444;
    }

    .back-btn {
        display: inline-block;
        margin-top: 35px;
        padding: 12px 25px;
        background: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 8px;
    }

</style>
```

</head>

<body>

```
<div class="ride-container">

    <h1>🚕 Ride Services</h1>

    <p>
        Welcome
        Choose your preferred ride application.
    </p>


    <div class="ride-grid">


        <!-- Ola -->

        <div class="ride-card">

            <div class="ride-icon">🚖</div>

            <h2>Ola</h2>

            <p>
                Book cabs, autos and other rides easily.
            </p>

            <a
                href="https://www.olacabs.com/"
                target="_blank"
                class="ride-btn">
                Open Ola
            </a>

        </div>


        <!-- Uber -->

        <div class="ride-card">

            <div class="ride-icon">🚗</div>

            <h2>Uber</h2>

            <p>
                Book a ride and travel comfortably.
            </p>

            <a
                href="https://www.uber.com/"
                target="_blank"
                class="ride-btn">
                Open Uber
            </a>

        </div>


        <!-- Rapido -->

        <div class="ride-card">

            <div class="ride-icon">🏍️</div>

            <h2>Rapido</h2>

            <p>
                Book bike taxis and other rides quickly.
            </p>

            <a
                href="https://www.rapido.bike/"
                target="_blank"
                class="ride-btn">
                Open Rapido
            </a>

        </div>


        <!-- inDrive -->

        <div class="ride-card">

            <div class="ride-icon">🚘</div>

            <h2>inDrive</h2>

            <p>
                Choose your ride and negotiate the fare.
            </p>

            <a
                href="https://indrive.com/"
                target="_blank"
                class="ride-btn">
                Open inDrive
            </a>

        </div>


    </div>


    <a href="index.jsp" class="back-btn">
        ← Back to Home
    </a>

</div>
```

</body>

</html>
