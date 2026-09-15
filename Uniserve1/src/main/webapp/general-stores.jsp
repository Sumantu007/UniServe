<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UniServe - General Store</title>

<style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f5f5f5;
}

/* HEADER */
.header {
    background: linear-gradient(135deg, #11998e, #38ef7d);
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
.store-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 25px;
    padding: 40px;
    max-width: 1200px;
    margin: auto;
}

/* CARD */
.store-card {
    background: white;
    border-radius: 18px;
    padding: 25px;
    text-align: center;
    box-shadow: 0 5px 18px rgba(0,0,0,0.12);
    transition: 0.3s;
}

.store-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.18);
}

/* APP NAME */
.app-name {
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 20px;
}

/* PRODUCT SLIDER */
.product-slider {
    height: 70px;
    overflow: hidden;
    position: relative;
    margin-bottom: 15px;
}

.product-item {
    font-size: 23px;
    font-weight: bold;
    display: none;
    padding: 15px;
}

.product-item.active {
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
.store-card p {
    color: #666;
    font-size: 14px;
}

/* BUTTON */
.shop-btn {
    display: inline-block;
    margin-top: 12px;
    padding: 11px 25px;
    background: #11998e;
    color: white;
    text-decoration: none;
    border-radius: 25px;
    font-weight: bold;
}

.shop-btn:hover {
    background: #087f73;
}

/* BACK BUTTON */
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

    <h1>UniServe Grocery Store</h1>

    <p>
        Shop groceries and daily-use products from popular stores
    </p>

</div>


<div class="store-container">


<!-- ================= BLINKIT ================= -->

<div class="store-card">

    <div class="app-name">
        Blinkit
    </div>

    <div class="product-slider">

        <div class="product-item active">
            Groceries
        </div>

        <div class="product-item">
            Snacks
        </div>

        <div class="product-item">
            Beverages
        </div>

        <div class="product-item">
            Household Items
        </div>

    </div>

    <p>
        Get groceries and daily essentials delivered quickly.
    </p>

    <a class="shop-btn"
       href="https://blinkit.com/"
       target="_blank">
       Shop Now
    </a>

</div>

<!-- ================= BIGBASKET ================= -->

<div class="store-card">

    <div class="app-name">
        BigBasket
    </div>

    <div class="product-slider">

        <div class="product-item active">
            Fresh Vegetables
        </div>

        <div class="product-item">
            Fruits
        </div>

        <div class="product-item">
            Dairy Products
        </div>

        <div class="product-item">
            Groceries
        </div>

    </div>

    <p>
        Buy groceries, fruits, vegetables and daily essentials.
    </p>

    <a class="shop-btn"
       href="https://www.bigbasket.com/"
       target="_blank">
       Shop Now
    </a>

</div>


<!-- ================= JIOMART ================= -->

<div class="store-card">

    <div class="app-name">
        JioMart
    </div>

    <div class="product-slider">

        <div class="product-item active">
            Groceries
        </div>

        <div class="product-item">
            Personal Care
        </div>

        <div class="product-item">
            Home Essentials
        </div>

        <div class="product-item">
            Snacks
        </div>

    </div>

    <p>
        Shop groceries and products for your everyday needs.
    </p>

    <a class="shop-btn"
       href="https://www.jiomart.com/"
       target="_blank">
       Shop Now
    </a>

</div>


<!-- ================= ZEPTO ================= -->

<div class="store-card">

    <div class="app-name">
        Zepto
    </div>

    <div class="product-slider">

        <div class="product-item active">
            Milk & Dairy
        </div>

        <div class="product-item">
            Fruits
        </div>

        <div class="product-item">
            Snacks
        </div>

        <div class="product-item">
            Beverages
        </div>

    </div>

    <p>
        Order groceries and daily essentials online.
    </p>

    <a class="shop-btn"
       href="https://www.zepto.com/"
       target="_blank">
       Shop Now
    </a>

</div>


</div>


<!-- BACK BUTTON -->

<a href="index.jsp" class="back-btn">
    ← Back to UniServe
</a>


<!-- ================= SLIDER JAVASCRIPT ================= -->

<script>

const sliders = document.querySelectorAll(".product-slider");

sliders.forEach(slider => {

    const items = slider.querySelectorAll(".product-item");

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