<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UniServe - Food</title>

<style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f5f5f5;
}

/* HEADER */
.header {
    background: linear-gradient(135deg, #ff512f, #dd2476);
    color: white;
    text-align: center;
    padding: 35px 20px;
}

.header h1 {
    margin: 0;
    font-size: 38px;
}

.header p {
    font-size: 17px;
}

/* CONTAINER */
.food-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 25px;
    padding: 40px;
    max-width: 1200px;
    margin: auto;
}

/* CARD */
.food-card {
    background: white;
    border-radius: 18px;
    padding: 25px;
    text-align: center;
    box-shadow: 0 5px 18px rgba(0,0,0,0.12);
    transition: 0.3s;
}

.food-card:hover {
    transform: translateY(-8px);
}

/* APP NAME */
.app-name {
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 20px;
}

/* FOOD SLIDER */
.food-slider {
    height: 70px;
    overflow: hidden;
    position: relative;
    margin-bottom: 15px;
}

.food-item {
    font-size: 25px;
    font-weight: bold;
    display: none;
    padding: 15px;
}

.food-item.active {
    display: block;
    animation: fade 1s;
}

@keyframes fade {
    from {
        opacity: 0;
        transform: translateY(15px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* DESCRIPTION */
.food-card p {
    color: #666;
    font-size: 14px;
}

/* BUTTON */
.order-btn {
    display: inline-block;
    margin-top: 12px;
    padding: 11px 25px;
    background: #ff512f;
    color: white;
    text-decoration: none;
    border-radius: 25px;
    font-weight: bold;
}

.order-btn:hover {
    background: #d93820;
}

/* BACK */
.back-btn {
    display: block;
    width: fit-content;
    margin: 10px auto 30px;
    padding: 12px 28px;
    background: #222;
    color: white;
    text-decoration: none;
    border-radius: 25px;
}

</style>
</head>

<body>

<!-- HEADER -->

<div class="header">

    <h1>UniServe Food</h1>

    <p>
        Order your favourite food from popular food delivery applications
    </p>

</div>


<div class="food-container">


<!-- ZOMATO -->

<div class="food-card">

    <div class="app-name">
        Zomato
    </div>

    <div class="food-slider">

        <div class="food-item active">
            Pizza
        </div>

        <div class="food-item">
            Burger
        </div>

        <div class="food-item">
            Biryani
        </div>

        <div class="food-item">
            Noodles
        </div>

    </div>

    <p>
        Order food from your favourite restaurants.
    </p>

    <a class="order-btn"
       href="https://www.zomato.com/"
       target="_blank">
       Order Now
    </a>

</div>


<!-- SWIGGY -->

<div class="food-card">

    <div class="app-name">
        Swiggy
    </div>

    <div class="food-slider">

        <div class="food-item active">
            Biryani
        </div>

        <div class="food-item">
            Pizza
        </div>

        <div class="food-item">
            Noodles
        </div>

        <div class="food-item">
            Fried Rice
        </div>

    </div>

    <p>
        Discover restaurants and delicious meals.
    </p>

    <a class="order-btn"
       href="https://www.swiggy.com/"
       target="_blank">
       Order Now
    </a>

</div>


<!-- DOMINO'S -->

<div class="food-card">

    <div class="app-name">
        Domino's
    </div>

    <div class="food-slider">

        <div class="food-item active">
            Pizza
        </div>

        <div class="food-item">
            Garlic Bread
        </div>

        <div class="food-item">
            Pasta
        </div>

        <div class="food-item">
            Burger
        </div>

    </div>

    <p>
        Enjoy pizzas, sides and exciting combos.
    </p>

    <a class="order-btn"
       href="https://www.dominos.co.in/"
       target="_blank">
       Order Now
    </a>

</div>


<!-- PIZZA HUT -->

<div class="food-card">

    <div class="app-name">
        Pizza Hut
    </div>

    <div class="food-slider">

        <div class="food-item active">
            Pizza
        </div>

        <div class="food-item">
            Pasta
        </div>

        <div class="food-item">
            Burger
        </div>

        <div class="food-item">
            Garlic Bread
        </div>

    </div>

    <p>
        Enjoy pizzas, pasta and burgers.
    </p>

    <a class="order-btn"
       href="https://www.pizzahut.co.in/"
       target="_blank">
       Order Now
    </a>

</div>


<!-- EATCLUB -->

<div class="food-card">

    <div class="app-name">
        EatClub
    </div>

    <div class="food-slider">

        <div class="food-item active">
            Burger
        </div>

        <div class="food-item">
            Wrap
        </div>

        <div class="food-item">
            Fries
        </div>

        <div class="food-item">
            Sandwich
        </div>

    </div>

    <p>
        Order tasty meals from popular food brands.
    </p>

    <a class="order-btn"
       href="https://eatclub.in/"
       target="_blank">
       Order Now
    </a>

</div>


<!-- FRESHMENU -->

<div class="food-card">

    <div class="app-name">
        FreshMenu
    </div>

    <div class="food-slider">

        <div class="food-item active">
            Pasta
        </div>

        <div class="food-item">
            Rice Bowl
        </div>

        <div class="food-item">
            Chicken
        </div>

        <div class="food-item">
            Salad
        </div>

    </div>

    <p>
        Freshly prepared meals delivered to you.
    </p>

    <a class="order-btn"
       href="https://www.freshmenu.com/"
       target="_blank">
       Order Now
    </a>

</div>


</div>


<a href="index.jsp" class="back-btn">
    ← Back to UniServe
</a>


<script>

const sliders = document.querySelectorAll(".food-slider");

sliders.forEach(slider => {

    const items = slider.querySelectorAll(".food-item");

    let current = 0;

    setInterval(() => {

        items[current].classList.remove("active");

        current++;

        if (current >= items.length) {
            current = 0;
        }

        items[current].classList.add("active");

    }, 2000);

});

</script>

</body>
</html>