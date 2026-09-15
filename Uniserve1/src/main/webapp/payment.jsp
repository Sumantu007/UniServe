<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>UniServe - Payment</title>

<style>

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f5f7fa;
}

/* HEADER */

.header {
    background: linear-gradient(135deg, #4facfe, #00f2fe);
    color: white;
    text-align: center;
    padding: 35px 20px;
}

.header h1 {
    margin: 0;
    font-size: 38px;
}

.header p {
    margin-top: 10px;
    font-size: 17px;
}

/* MAIN */

.payment-container {
    width: 90%;
    max-width: 900px;
    margin: 35px auto;
}

/* WALLET */

.wallet {
    background: white;
    padding: 25px;
    border-radius: 18px;
    box-shadow: 0 5px 18px rgba(0,0,0,0.12);
    text-align: center;
    margin-bottom: 25px;
}

.wallet h2 {
    margin-top: 0;
}

.balance {
    font-size: 36px;
    font-weight: bold;
    color: #159957;
    margin: 15px;
}

.add-money-btn {
    background: #159957;
    color: white;
    border: none;
    padding: 12px 25px;
    border-radius: 25px;
    cursor: pointer;
    font-size: 16px;
}

.add-money-btn:hover {
    background: #10783f;
}

/* PAYMENT BOX */

.payment-box {
    background: white;
    padding: 30px;
    border-radius: 18px;
    box-shadow: 0 5px 18px rgba(0,0,0,0.12);
}

.payment-box h2 {
    text-align: center;
}

/* AMOUNT */

.amount-input {
    width: 100%;
    padding: 14px;
    margin: 15px 0;
    border: 1px solid #ccc;
    border-radius: 10px;
    font-size: 17px;
}

/* PAYMENT METHODS */

.payment-methods {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: 15px;
    margin-top: 20px;
}

.method {
    border: 2px solid #ddd;
    border-radius: 15px;
    padding: 20px;
    text-align: center;
    cursor: pointer;
    transition: 0.3s;
}

.method:hover {
    border-color: #4facfe;
    transform: translateY(-3px);
}

.method.selected {
    border-color: #159957;
    background: #f0fff6;
}

.method span {
    display: block;
    font-size: 30px;
    margin-bottom: 10px;
}

.method b {
    font-size: 18px;
}

/* UPI INPUT */

.upi-box {
    display: none;
    margin-top: 20px;
}

.upi-input {
    width: 100%;
    padding: 14px;
    border: 1px solid #ccc;
    border-radius: 10px;
    font-size: 16px;
}

/* PAY BUTTON */

.pay-btn {
    width: 100%;
    margin-top: 25px;
    padding: 15px;
    border: none;
    border-radius: 12px;
    background: #4facfe;
    color: white;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
}

.pay-btn:hover {
    background: #258fe8;
}

/* MESSAGE */

.message {
    display: none;
    margin-top: 20px;
    padding: 15px;
    border-radius: 10px;
    text-align: center;
    background: #d4edda;
    color: #155724;
    font-weight: bold;
}

/* BACK */

.back-btn {
    display: block;
    width: fit-content;
    margin: 20px auto 35px;
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

    <h1>UniServe Payment</h1>

    <p>
        Add money to your wallet or pay using UPI
    </p>

</div>


<div class="payment-container">


<!-- ================= WALLET ================= -->

<div class="wallet">

    <h2>💰 UniServe Wallet</h2>

    <div class="balance" id="walletBalance">
        ₹0.00
    </div>

    <button class="add-money-btn"
            onclick="addMoney()">

        + Add Money

    </button>

</div>


<!-- ================= PAYMENT ================= -->

<div class="payment-box">

    <h2>Make a Payment</h2>

    <input
        type="number"
        id="amount"
        class="amount-input"
        placeholder="Enter amount ₹"
        min="1"
    >


    <h3>Select Payment Method</h3>


    <div class="payment-methods">


        <!-- WALLET -->

        <div class="method"
             onclick="selectMethod(this, 'wallet')">

            <span>💰</span>

            <b>UniServe Wallet</b>

        </div>


        <!-- GOOGLE PAY -->

        <div class="method"
             onclick="selectMethod(this, 'gpay')">

            <span>📱</span>

            <b>Google Pay</b>

        </div>


        <!-- PHONEPE -->

        <div class="method"
             onclick="selectMethod(this, 'phonepe')">

            <span>📲</span>

            <b>PhonePe</b>

        </div>


        <!-- PAYTM -->

        <div class="method"
             onclick="selectMethod(this, 'paytm')">

            <span>💳</span>

            <b>Paytm</b>

        </div>


        <!-- OTHER UPI -->

        <div class="method"
             onclick="selectMethod(this, 'upi')">

            <span>🔗</span>

            <b>Other UPI</b>

        </div>


    </div>


    <!-- UPI ID -->

    <div class="upi-box" id="upiBox">

        <input
            type="text"
            id="upiId"
            class="upi-input"
            placeholder="Enter UPI ID (example@upi)"
        >

    </div>


    <button class="pay-btn"
            onclick="makePayment()">

        Pay Now

    </button>


    <div class="message"
         id="successMessage">

    </div>


</div>

</div>


<a href="index.jsp" class="back-btn">

    ← Back to UniServe

</a>


<script>

/* WALLET BALANCE */

let walletBalance = 0;


/* ADD MONEY */

function addMoney() {

    let amount = prompt("Enter amount to add to wallet:");

    if (amount === null) {
        return;
    }

    amount = parseFloat(amount);

    if (isNaN(amount) || amount <= 0) {

        alert("Please enter a valid amount.");

        return;
    }

    walletBalance = walletBalance + amount;

    document.getElementById("walletBalance").innerText =
        "₹" + walletBalance.toFixed(2);

    alert(
        "₹" + amount.toFixed(2) +
        " added to your UniServe Wallet."
    );
}


/* SELECT PAYMENT METHOD */

let selectedMethod = "";


function selectMethod(element, method) {

    let methods =
        document.querySelectorAll(".method");

    methods.forEach(function(item) {

        item.classList.remove("selected");

    });


    element.classList.add("selected");

    selectedMethod = method;


    /* SHOW UPI INPUT */

    if (method === "upi") {

        document.getElementById("upiBox").style.display =
            "block";

    } else {

        document.getElementById("upiBox").style.display =
            "none";

    }

}


/* MAKE PAYMENT */

function makePayment() {

    let amount =
        parseFloat(document.getElementById("amount").value);


    if (isNaN(amount) || amount <= 0) {

        alert("Please enter a valid payment amount.");

        return;
    }


    if (selectedMethod === "") {

        alert("Please select a payment method.");

        return;
    }


    /* WALLET PAYMENT */

    if (selectedMethod === "wallet") {

        if (amount > walletBalance) {

            alert("Insufficient wallet balance.");

            return;
        }

        walletBalance =
            walletBalance - amount;

        document.getElementById("walletBalance").innerText =
            "₹" + walletBalance.toFixed(2);
    }


    /* OTHER UPI */

    if (selectedMethod === "upi") {

        let upiId =
            document.getElementById("upiId").value.trim();


        if (upiId === "") {

            alert("Please enter your UPI ID.");

            return;
        }

    }


    let methodName = "";

    if (selectedMethod === "wallet") {
        methodName = "UniServe Wallet";
    }

    else if (selectedMethod === "gpay") {
        methodName = "Google Pay";
    }

    else if (selectedMethod === "phonepe") {
        methodName = "PhonePe";
    }

    else if (selectedMethod === "paytm") {
        methodName = "Paytm";
    }

    else if (selectedMethod === "upi") {
        methodName = "Other UPI";
    }


    let message =
        document.getElementById("successMessage");


    message.innerHTML =
        "✓ Payment Successful!<br>" +
        "Amount: ₹" + amount.toFixed(2) +
        "<br>Payment Method: " + methodName;


    message.style.display = "block";


    document.getElementById("amount").value = "";

}

</script>


</body>
</html>