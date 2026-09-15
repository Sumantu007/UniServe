// ==========================================
// UNISERVE DASHBOARD
// File: js/dashboard.js
// ==========================================

document.addEventListener("DOMContentLoaded", function () {


    // ==========================================
    // DISPLAY USER
    // ==========================================

    const userData =
        localStorage.getItem("uniserveRegistration");


    if (userData) {

        const user =
            JSON.parse(userData);


        const userName =
            document.getElementById("userName");


        if (userName) {

            userName.textContent =
                user.name;

        }

    }


    // ==========================================
    // SERVICE SEARCH
    // ==========================================

    const searchBox =
        document.getElementById("serviceSearch");


    const serviceCards =
        document.querySelectorAll(".service-card");


    if (searchBox) {

        searchBox.addEventListener(
            "input",
            function () {

                const search =
                    searchBox.value.toLowerCase();


                serviceCards.forEach(
                    function (card) {

                        const text =
                            card.textContent.toLowerCase();


                        if (text.includes(search)) {

                            card.style.display =
                                "";

                        } else {

                            card.style.display =
                                "none";

                        }

                    }
                );

            }
        );

    }


    // ==========================================
    // SERVICE CLICK
    // ==========================================

    serviceCards.forEach(function (card) {

        card.addEventListener("click", function () {

            console.log(
                "Service selected:",
                card.textContent.trim()
            );

        });

    });

});