<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    // Get logged-in user information from session
    String userName =
        (String) session.getAttribute("userName");

    String userEmail =
        (String) session.getAttribute("userEmail");

    String userMobile =
        (String) session.getAttribute("userMobile");

    // Check whether user is logged in
    boolean loggedIn =
        session.getAttribute("userId") != null;
%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>UniServe - HomePage</title>

    <link rel="stylesheet"
          href="css/style.css">


    <style>

        /* =========================
           UNISERVE LOGO
           ========================= */

        .navbar .logo {
            display: flex;
            align-items: center;
            text-decoration: none;
            height: 55px;
        }

        .navbar .logo img {
            width: 90px;
            height: 90px;
            object-fit: contain;
            display: block;
        }


        /* =========================
           GOOGLE LINK
           ========================= */

        .google-link {
            display: flex;
            align-items: center;
            gap: 6px;

            margin-left: 15px;

            padding: 8px 14px;

            border-radius: 20px;

            text-decoration: none;

            color: #333;

            font-size: 15px;

            font-weight: 600;

            background: #f5f5f5;

            transition: 0.3s;
        }

        .google-link:hover {
            background: #e8f0fe;
            color: #1a73e8;
        }

        .google-icon {
            font-size: 18px;
        }


        /* =========================
           PROFILE AREA
           ========================= */

        .profile-area {
            position: relative;
            display: inline-block;
            margin-left: 15px;
        }


        .profile-button {
            border: none;

            background: white;

            color: #222;

            padding: 10px 16px;

            border-radius: 25px;

            cursor: pointer;

            font-size: 15px;

            font-weight: 600;

            display: flex;

            align-items: center;

            gap: 7px;
        }


        .profile-button:hover {
            background: #f1f4f8;
        }


        /* =========================
           PROFILE DROPDOWN
           ========================= */

        .profile-menu {
            display: none;

            position: absolute;

            right: 0;

            top: 52px;

            width: 240px;

            background: white;

            border-radius: 14px;

            box-shadow:
                0 8px 30px
                rgba(0, 0, 0, 0.15);

            overflow: hidden;

            z-index: 9999;
        }


        .profile-menu.show {
            display: block;
        }


        /* =========================
           PROFILE HEADER
           ========================= */

        .profile-header {
            padding: 18px;

            border-bottom:
                1px solid #eeeeee;
        }


        .profile-header strong {
            display: block;

            font-size: 17px;

            color: #222;
        }


        .profile-header small {
            display: block;

            margin-top: 5px;

            color: #777;

            word-break: break-word;
        }


        /* =========================
           PROFILE LINKS
           ========================= */

        .profile-menu a {
            display: block;

            padding: 13px 18px;

            color: #222;

            text-decoration: none;

            font-size: 15px;
        }


        .profile-menu a:hover {
            background: #f5f7fa;
        }


        /* =========================
           LOGOUT
           ========================= */

        .profile-menu .logout-link {
            color: #e53935;

            border-top:
                1px solid #eeeeee;
        }


        /* =========================
           MOBILE LOGO
           ========================= */

        @media (max-width: 600px) {

            .navbar .logo img {
                width: 48px;
                height: 48px;
            }

            .google-link {
                margin-left: 5px;
                padding: 7px 10px;
                font-size: 13px;
            }

            .google-icon {
                font-size: 16px;
            }
        }

    </style>

</head>


<body>


<!-- =========================
     NAVBAR
     ========================= -->

<header class="navbar">


    <!-- =========================
         UNISERVE LOGO
         ========================= -->

    <a href="index.jsp"
       class="logo"
       title="UniServe Home">

        <img src="images/uniserve-logo.png"
             alt="UniServe Logo">

    </a>


    <!-- =========================
         GOOGLE LINK
         ========================= -->

    <a href="https://www.google.com"
       class="google-link"
       target="_blank"
       rel="noopener noreferrer"
       title="Open Google">

        <span class="google-icon">🔍</span>

        Google

    </a>


    <!-- =========================
         NAVIGATION
         ========================= -->

    <nav>

        <a href="index.jsp">
            Home
        </a>


        <% if (!loggedIn) { %>


            <!-- =====================
                 NOT LOGGED IN
                 ===================== -->

            <a href="login.jsp">
                Login
            </a>


            <a href="register.jsp"
               class="btn btn-primary">

                Get Started

            </a>


        <% } else { %>


            <!-- =====================
                 LOGGED IN
                 ===================== -->

            <div class="profile-area">


                <!-- PROFILE BUTTON -->

                <button
                    type="button"
                    class="profile-button"
                    onclick="toggleProfile()">

                    👤

                    <%= userName %>

                    ▼

                </button>


                <!-- =====================
                     PROFILE DROPDOWN
                     ===================== -->

                <div
                    id="profileMenu"
                    class="profile-menu">


                    <!-- PROFILE INFORMATION -->

                    <div
                        class="profile-header">

                        <strong>
                            <%= userName %>
                        </strong>


                        <small>
                            <%= userEmail %>
                        </small>

                    </div>


                    <!-- MY PROFILE -->

                    <a href="profile.jsp">

                        👤 My Profile

                    </a>


                    <!-- LOGOUT -->

                    <a
                        href="logout"
                        class="logout-link">

                        🚪 Logout

                    </a>


                </div>

            </div>


        <% } %>


    </nav>


</header>



<!-- =========================
     HERO SECTION
     ========================= -->

<section class="hero">


    <!-- HERO CONTENT -->

    <div class="hero-content">


        <div class="badge">

            ONE PLATFORM • MANY SERVICES

        </div>


        <h1>

            Your Everyday Services,

            <span>

                All In One Place.

            </span>

        </h1>


        <p>

            Food, payments, rides, hotels,
            travel and AI assistance through
            one UniServe profile.

        </p>


        <!-- HERO BUTTONS -->

        <div class="hero-buttons">


            <% if (!loggedIn) { %>


                <a href="register.jsp"
                   class="btn btn-primary">

                    Create Account

                </a>


                <a href="login.jsp"
                   class="btn btn-light">

                    Login

                </a>


            <% } else { %>


                <a href="#services"
                   class="btn btn-primary">

                    Explore Services

                </a>


            <% } %>


        </div>


    </div>



    <!-- =========================
         DASHBOARD
         ========================= -->

    <div class="hero-dashboard">


        <h3>

            DASHBOARD

        </h3>


        <div class="service-grid">


            <!-- =====================
                 FOOD
                 ===================== -->

            <a href="food.jsp"
               class="service-card">

                <span>🍔</span>

                <b>
                    Food
                </b>

                <small>
                    Order food
                </small>

            </a>



            <!-- =====================
                 GROCERY
                 ===================== -->

            <a href="general-stores.jsp"
               class="service-card">

                <span>🛒</span>

                <b>
                    Grocery
                </b>

                <small>
                    Shop daily essentials
                </small>

            </a>



            <!-- =====================
                 PAYMENT
                 ===================== -->

            <a href="payment.jsp"
               class="service-card">

                <span>💳</span>

                <b>
                    Payment
                </b>

                <small>
                    Pay anyone
                </small>

            </a>



            <!-- =====================
                 RIDE
                 ===================== -->

            <a href="ride.jsp"
               class="service-card">

                <span>🚕</span>

                <b>
                    Ride
                </b>

                <small>
                    Book ride
                </small>

            </a>



            <!-- =====================
                 HOTEL
                 ===================== -->

            <a href="hotel.jsp"
               class="service-card">

                <span>🏨</span>

                <b>
                    Hotel
                </b>

                <small>
                    Book hotel
                </small>

            </a>



            <!-- =====================
                 UNIAI
                 ===================== -->

            <a href="uniAi.jsp"
               class="service-card">

                <span>🤖</span>

                <b>
                    UniAI
                </b>

                <small>
                    AI Assistant
                </small>

            </a>



            <!-- =====================
                 ACTIVITY
                 ===================== -->

            <a href="Activity.jsp"
               class="service-card">

                <span>📋</span>

                <b>
                    Activity
                </b>

                <small>
                    View history
                </small>

            </a>



            <!-- =====================
                 MORE SERVICES
                 ===================== -->

            <a href="more-services.jsp"
               class="service-card more-card">

                <span>➕</span>

                <b>
                    More Services
                </b>

                <small>
                    More
                </small>

            </a>


        </div>

    </div>


</section>



<!-- =========================
     FOOTER
     ========================= -->

<footer>

    Welcome to | © 2026 UniServe

</footer>



<!-- =========================
     PROFILE JAVASCRIPT
     ========================= -->

<script>

function toggleProfile() {

    const menu =
        document.getElementById(
            "profileMenu"
        );


    if (menu) {

        menu.classList.toggle(
            "show"
        );

    }

}


/*
 * Close profile menu
 * when clicking outside
 */

document.addEventListener(
    "click",
    function(event) {

        const profileArea =
            document.querySelector(
                ".profile-area"
            );


        const menu =
            document.getElementById(
                "profileMenu"
            );


        if (
            profileArea &&
            menu &&
            !profileArea.contains(
                event.target
            )
        ) {

            menu.classList.remove(
                "show"
            );

        }

    }
);

</script>


<script src="js/services.js"></script>


</body>

</html>
```
