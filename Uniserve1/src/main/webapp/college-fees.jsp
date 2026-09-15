
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>UniServe - College Fees</title>

    <link rel="stylesheet"
          href="css/style.css">

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f8fc;
            color: #222;
        }


        /* =========================
           NAVBAR
           ========================= */

        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 12px 40px;

            background: white;

            box-shadow:
                0 2px 12px rgba(0,0,0,0.08);

            position: sticky;
            top: 0;

            z-index: 1000;
        }


        .logo {
            text-decoration: none;
            font-size: 26px;
            font-weight: 800;
            color: #123b8e;
        }


        .logo span {
            color: #168be8;
        }


        .nav-home {
            text-decoration: none;
            color: #333;

            padding: 10px 18px;

            border-radius: 20px;

            font-weight: 600;
        }


        .nav-home:hover {
            background: #eef5ff;
            color: #1267c4;
        }


        /* =========================
           HERO
           ========================= */

        .fees-hero {
            text-align: center;

            padding: 55px 20px 35px;

            background:
                linear-gradient(
                    135deg,
                    #eaf4ff,
                    #ffffff
                );
        }


        .fees-hero h1 {
            margin: 0;

            font-size: 40px;

            color: #123b8e;
        }


        .fees-hero h1 span {
            color: #168be8;
        }


        .fees-hero p {
            max-width: 700px;

            margin: 15px auto;

            color: #666;

            font-size: 17px;

            line-height: 1.6;
        }


        /* =========================
           COLLEGE CONTAINER
           ========================= */

        .college-container {

            max-width: 1100px;

            margin: 35px auto;

            padding: 0 20px;

        }


        .college-grid {

            display: grid;

            grid-template-columns:
                repeat(
                    auto-fit,
                    minmax(280px, 1fr)
                );

            gap: 22px;

        }


        /* =========================
           COLLEGE CARD
           ========================= */

        .college-card {

            background: white;

            border-radius: 18px;

            padding: 25px;

            box-shadow:
                0 6px 22px
                rgba(0,0,0,0.08);

            transition:
                transform 0.25s,
                box-shadow 0.25s;

            border: 1px solid #edf1f7;

        }


        .college-card:hover {

            transform:
                translateY(-5px);

            box-shadow:
                0 12px 30px
                rgba(0,0,0,0.13);

        }


        .college-icon {

            width: 60px;

            height: 60px;

            border-radius: 15px;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 30px;

            background:
                #eaf4ff;

            margin-bottom: 15px;

        }


        .college-card h2 {

            font-size: 20px;

            margin:
                8px 0;

            color: #123b8e;

        }


        .college-card p {

            color: #777;

            line-height: 1.5;

            min-height: 45px;

        }


        /* =========================
           PAYMENT BUTTON
           ========================= */

        .pay-button {

            display: inline-block;

            margin-top: 12px;

            padding:
                11px 20px;

            background:
                linear-gradient(
                    135deg,
                    #1267c4,
                    #168be8
                );

            color: white;

            text-decoration: none;

            border-radius: 25px;

            font-weight: 600;

            transition:
                0.2s;

        }


        .pay-button:hover {

            transform:
                scale(1.03);

            box-shadow:
                0 5px 15px
                rgba(18,103,196,0.3);

        }


        /* =========================
           INFO BOX
           ========================= */

        .info-box {

            margin-top: 35px;

            padding: 20px;

            background: #fff8e6;

            border-left:
                5px solid #f5a623;

            border-radius: 10px;

            color: #555;

            line-height: 1.6;

        }


        /* =========================
           FOOTER
           ========================= */

        footer {

            text-align: center;

            padding: 25px;

            margin-top: 50px;

            background: #123b8e;

            color: white;

        }


        /* =========================
           MOBILE
           ========================= */

        @media (max-width: 600px) {

            .navbar {

                padding:
                    12px 18px;

            }


            .fees-hero h1 {

                font-size: 30px;

            }


            .fees-hero p {

                font-size: 15px;

            }

        }

    </style>

</head>


<body>


<!-- =========================
     NAVBAR
     ========================= -->

<header class="navbar">

    <a href="index.jsp"
       class="logo">

        Uni<span>Serve</span>

    </a>


    <a href="index.jsp"
       class="nav-home">

        🏠 Home

    </a>

</header>



<!-- =========================
     HERO
     ========================= -->

<section class="fees-hero">

    <h1>

        College <span>Fee Payment</span>

    </h1>


    <p>

        Access online fee-payment portals
        of engineering colleges from one
        convenient UniServe page.

    </p>

</section>



<!-- =========================
     COLLEGE LIST
     ========================= -->

<div class="college-container">

    <div class="college-grid">



        <!-- =====================
             ASANSOL ENGINEERING COLLEGE
             ===================== -->

        <div class="college-card">

            <div class="college-icon">
                🎓
            </div>


            <h2>
                Asansol Engineering College
            </h2>


            <p>

                Online tuition and college
                fee payment portal for AEC
                students.

            </p>


            <a
                href="https://www.jisgroup.net/erp/forms/welcomeasansol.html"
                target="_blank"
                rel="noopener noreferrer"
                class="pay-button">

                💳 Pay College Fees

            </a>

        </div>



        <!-- =====================
             JIS COLLEGE OF ENGINEERING
             ===================== -->

        <div class="college-card">

            <div class="college-icon">
                🏫
            </div>


            <h2>
                JIS College of Engineering
            </h2>


            <p>

                Student portal for academic
                services and online fee-related
                activities.

            </p>


            <a
                href="https://www.jiscollege.ac.in/"
                target="_blank"
                rel="noopener noreferrer"
                class="pay-button">

                🌐 Visit College Portal

            </a>

        </div>



        <!-- =====================
             JIS UNIVERSITY
             ===================== -->

        <div class="college-card">

            <div class="college-icon">
                🎓
            </div>


            <h2>
                JIS University
            </h2>


            <p>

                Access the official JIS
                University student portal
                for online fee services.

            </p>


            <a
                href="https://www.jisuniversity.ac.in/student-login.php"
                target="_blank"
                rel="noopener noreferrer"
                class="pay-button">

                💳 Student Fee Portal

            </a>

        </div>



        <!-- =====================
             BCET DURGAPUR
             ===================== -->

        <div class="college-card">

            <div class="college-icon">
                🏛️
            </div>


            <h2>

                Bengal College of Engineering
                & Technology

            </h2>


            <p>

                Access the college's official
                online semester fee-payment
                information.

            </p>


            <a
                href="https://bcetdgp.ac.in/online-fee-payment/"
                target="_blank"
                rel="noopener noreferrer"
                class="pay-button">

                💳 Online Fee Payment

            </a>

        </div>



        <!-- =====================
             MORE COLLEGES
             ===================== -->

        <div class="college-card">

            <div class="college-icon">
                ➕
            </div>


            <h2>
                More Engineering Colleges
            </h2>


            <p>

                More college payment portals
                can be added to UniServe
                whenever their official links
                are available.

            </p>


            <a
                href="more-services.jsp"
                class="pay-button">

                🔎 More Services

            </a>

        </div>


    </div>



    <!-- =========================
         INFORMATION
         ========================= -->

    <div class="info-box">

        <strong>
            ⚠️ Important:
        </strong>

        UniServe only provides convenient
        links to external college portals.
        Always verify that you are on the
        college's official website before
        entering your student ID, password,
        or making a payment.

    </div>

</div>



<!-- =========================
     FOOTER
     ========================= -->

<footer>

    UniServe | One Platform • Many Services

    <br><br>

    © 2026 UniServe

</footer>


</body>

</html>
```
