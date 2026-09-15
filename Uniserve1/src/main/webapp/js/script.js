// ==========================================
// UNISERVE COMMON SCRIPT
// File: js/script.js
// ==========================================

document.addEventListener("DOMContentLoaded", function () {

    console.log("UniServe website loaded successfully.");

    // ==========================================
    // MOBILE NAVIGATION
    // ==========================================

    const menuButton = document.getElementById("menuButton");
    const navMenu = document.querySelector("nav");

    if (menuButton && navMenu) {

        menuButton.addEventListener("click", function () {

            navMenu.classList.toggle("active");

        });

    }


    // ==========================================
    // CURRENT YEAR
    // ==========================================

    const yearElements = document.querySelectorAll(".current-year");

    yearElements.forEach(function (element) {

        element.textContent = new Date().getFullYear();

    });


    // ==========================================
    // BACK BUTTON
    // ==========================================

    const backButtons = document.querySelectorAll(".back-button");

    backButtons.forEach(function (button) {

        button.addEventListener("click", function () {

            window.history.back();

        });

    });


    // ==========================================
    // LOGOUT
    // ==========================================

    const logoutButtons = document.querySelectorAll(".logout-btn");

    logoutButtons.forEach(function (button) {

        button.addEventListener("click", function () {

            const confirmLogout =
                confirm("Are you sure you want to logout?");

            if (confirmLogout) {

                localStorage.removeItem("uniserveUser");
                sessionStorage.clear();

                window.location.href = "login.jsp";

            }

        });

    });

});


// ==========================================
// SHOW MESSAGE
// ==========================================

function showMessage(message, type = "success") {

    alert(message);

}


// ==========================================
// PAGE REDIRECT
// ==========================================

function goToPage(page) {

    window.location.href = page;

}