<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

```
<meta charset="UTF-8">

<title>UniServe - Hotel Booking</title>

<link rel="stylesheet" href="css/style.css">

<style>

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f5f5f5;
    }

    .hotel-container {
        width: 90%;
        max-width: 1100px;
        margin: 40px auto;
        text-align: center;
    }

    .hotel-container h1 {
        font-size: 34px;
        margin-bottom: 10px;
    }

    .hotel-container > p {
        color: #666;
        margin-bottom: 35px;
    }

    .hotel-grid {
        display: grid;
        grid-template-columns:
            repeat(auto-fit, minmax(230px, 1fr));
        gap: 25px;
    }

    .hotel-card {
        background: white;
        padding: 30px 20px;
        border-radius: 15px;

        box-shadow:
            0 4px 12px rgba(0,0,0,0.12);

        transition: 0.3s;
    }

    .hotel-card:hover {
        transform: translateY(-6px);

        box-shadow:
            0 8px 18px rgba(0,0,0,0.18);
    }

    .hotel-icon {
        font-size: 50px;
        margin-bottom: 15px;
    }

    .hotel-card h2 {
        margin: 10px 0;
    }

    .hotel-card p {
        color: #666;
        min-height: 45px;
    }

    .hotel-btn {
        display: inline-block;

        padding: 11px 24px;

        background: #222;
        color: white;

        text-decoration: none;

        border-radius: 8px;

        margin-top: 10px;
    }

    .hotel-btn:hover {
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

    .back-btn:hover {
        background: #0056b3;
    }

</style>
```

</head>

<body>

<div class="hotel-container">

```
<h1>🏨 Hotel Booking</h1>

<p>
  
    Choose your preferred hotel booking website.
</p>


<div class="hotel-grid">


    <!-- Booking.com -->

    <div class="hotel-card">

        <div class="hotel-icon">
            🏨
        </div>

        <h2>Booking.com</h2>

        <p>
            Find and book hotels, apartments
            and other stays.
        </p>

        <a
            href="https://www.booking.com/"
            target="_blank"
            class="hotel-btn">

            Open Booking.com

        </a>

    </div>


    <!-- Agoda -->

    <div class="hotel-card">

        <div class="hotel-icon">
            🏩
        </div>

        <h2>Agoda</h2>

        <p>
            Search hotels and accommodations
            around the world.
        </p>

        <a
            href="https://www.agoda.com/"
            target="_blank"
            class="hotel-btn">

            Open Agoda

        </a>

    </div>


    <!-- MakeMyTrip -->

    <div class="hotel-card">

        <div class="hotel-icon">
            🏨
        </div>

        <h2>MakeMyTrip</h2>

        <p>
            Book hotels and stays across
            India and other destinations.
        </p>

        <a
            href="https://www.makemytrip.com/"
            target="_blank"
            class="hotel-btn">

            Open MakeMyTrip

        </a>

    </div>


    <!-- Goibibo -->

    <div class="hotel-card">

        <div class="hotel-icon">
            🛏️
        </div>

        <h2>Goibibo</h2>

        <p>
            Search and book hotels and
            accommodations online.
        </p>

        <a
            href="https://www.goibibo.com/"
            target="_blank"
            class="hotel-btn">

            Open Goibibo

        </a>

    </div>


    <!-- EaseMyTrip -->

    <div class="hotel-card">

        <div class="hotel-icon">
            🏨
        </div>

        <h2>EaseMyTrip</h2>

        <p>
            Book hotels and plan your
            complete trip.
        </p>

        <a
            href="https://www.easemytrip.com/"
            target="_blank"
            class="hotel-btn">

            Open EaseMyTrip

        </a>

    </div>


    <!-- OYO -->

    <div class="hotel-card">

        <div class="hotel-icon">
            🛎️
        </div>

        <h2>OYO</h2>

        <p>
            Find and book budget-friendly
            hotels and rooms.
        </p>

        <a
            href="https://www.oyorooms.com/"
            target="_blank"
            class="hotel-btn">

            Open OYO

        </a>

    </div>


</div>


<a
    href="index.jsp"
    class="back-btn">

    ← Back to UniServe

</a>
```

</div>

</body>

</html>
