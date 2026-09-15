<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport"
   content="width=device-width, initial-scale=1.0">

<title>UniAI - UniServe</title>

<style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f5f7fb;
}

/* HEADER */

.header {
    background: white;
    padding: 20px 40px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.08);
}

.logo {
    font-size: 25px;
    font-weight: bold;
    color: #2563eb;
}

.logo span {
    color: #222;
}

/* MAIN */

.container {
    width: 750px;
    max-width: 90%;
    margin: 45px auto;
}

/* TITLE */

.title {
    text-align: center;
    margin-bottom: 35px;
}

.ai-icon {
    font-size: 45px;
}

.title h1 {
    margin: 10px 0;
    font-size: 32px;
}

.title p {
    color: #777;
}

/* QUESTIONS */

.question {
    background: white;
    margin-bottom: 12px;
    border-radius: 10px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.06);
    overflow: hidden;
}

.question button {
    width: 100%;
    padding: 18px 20px;
    background: white;
    border: none;
    text-align: left;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
}

.question button:hover {
    background: #f0f5ff;
}

.answer {
    display: none;
    padding: 0 20px 18px 20px;
    color: #555;
    line-height: 1.6;
    border-top: 1px solid #eee;
}

/* BACK */

.back {
    display: block;
    width: fit-content;
    margin: 30px auto;
    text-decoration: none;
    color: #2563eb;
    font-weight: bold;
}

</style>

</head>

<body>

<!-- HEADER -->

<div class="header">

```
<div class="logo">
    Uni<span>Serve</span> AI
</div>
```

</div>

<!-- MAIN -->

<div class="container">

```
<!-- TITLE -->

<div class="title">

    <div class="ai-icon">
        🤖
    </div>

    <h1>UniAI</h1>

    <p>
        Your guide to UniServe
    </p>

</div>


<!-- QUESTION 1 -->

<div class="question">

    <button onclick="showAnswer(1)">
        What is UniServe?
    </button>

    <div class="answer" id="answer1">

        UniServe is an all-in-one web platform
        designed to provide multiple daily-use
        services from one place.

    </div>

</div>


<!-- QUESTION 2 -->

<div class="question">

    <button onclick="showAnswer(2)">
        What services are available on UniServe?
    </button>

    <div class="answer" id="answer2">

        UniServe brings different services together,
        including Food, Rides, Hotels, Online Payment
        and other useful daily services.

    </div>

</div>


<!-- QUESTION 3 -->

<div class="question">

    <button onclick="showAnswer(3)">
        How can I order food?
    </button>

    <div class="answer" id="answer3">

        Open the Food section from the UniServe
        homepage and choose the food or restaurant
        service you want to use.

    </div>

</div>


<!-- QUESTION 4 -->

<div class="question">

    <button onclick="showAnswer(4)">
        Can I book a ride through UniServe?
    </button>

    <div class="answer" id="answer4">

        Yes. You can open the Ride section from
        UniServe and access available ride and
        transportation services.

    </div>

</div>


<!-- QUESTION 5 -->

<div class="question">

    <button onclick="showAnswer(5)">
        Can I book a hotel?
    </button>

    <div class="answer" id="answer5">

        Yes. Open the Hotel section to find
        accommodation and hotel booking services
        available through UniServe.

    </div>

</div>


<!-- QUESTION 6 -->

<div class="question">

    <button onclick="showAnswer(6)">
        How can I make an online payment?
    </button>

    <div class="answer" id="answer6">

        Select the Payment section from UniServe
        and choose the appropriate online payment
        service.

    </div>

</div>


<!-- QUESTION 7 -->

<div class="question">

    <button onclick="showAnswer(7)">
        Do I need an account to use UniServe?
    </button>

    <div class="answer" id="answer7">

        Some services may be accessible without
        an account, but creating an account allows
        you to use personalized features such as
        your profile and account-related services.

    </div>

</div>


<!-- QUESTION 8 -->

<div class="question">

    <button onclick="showAnswer(8)">
        What is UniAI?
    </button>

    <div class="answer" id="answer8">

        UniAI is the help and information section
        of UniServe. It provides quick answers to
        common questions about UniServe and its
        services.

    </div>

</div>


<!-- QUESTION 9 -->

<div class="question">

    <button onclick="showAnswer(9)">
        How can I access my profile?
    </button>

    <div class="answer" id="answer9">

        Log in to your UniServe account and open
        the My Profile option to view your account
        information.

    </div>

</div>


<!-- QUESTION 10 -->

<div class="question">

    <button onclick="showAnswer(10)">
        Why should I use UniServe?
    </button>

    <div class="answer" id="answer10">

        UniServe saves time by bringing multiple
        useful daily services together in one
        convenient platform.

    </div>

</div>


<a href="index.jsp" class="back">
    ← Back to UniServe
</a>
```

</div>

<script>

function showAnswer(number) {

    let answer =
        document.getElementById("answer" + number);

    if (answer.style.display === "block") {

        answer.style.display = "none";

    } else {

        answer.style.display = "block";

    }

}

</script>

</body>

</html>
