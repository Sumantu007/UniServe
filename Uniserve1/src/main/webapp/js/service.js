// ==========================================
// UNISERVE MORE SERVICES
// File: js/services.js
// ==========================================


document.addEventListener("DOMContentLoaded", function () {


    // ==========================================
    // MORE SERVICES BUTTON
    // ==========================================

    const moreButton =
        document.getElementById("moreServicesBtn");


    const moreServices =
        document.getElementById("moreServices");


    if (moreButton && moreServices) {

        moreButton.addEventListener(
            "click",
            function () {

                moreServices.classList.toggle(
                    "show"
                );


                if (
                    moreServices.classList.contains(
                        "show"
                    )
                ) {

                    moreButton.textContent =
                        "− Less Services";

                } else {

                    moreButton.textContent =
                        "+ More Services";

                }

            }
        );

    }


    // ==========================================
    // SERVICE SEARCH
    // ==========================================

    const serviceSearch =
        document.getElementById(
            "serviceSearch"
        );


    const moreCards =
        document.querySelectorAll(
            ".more-service-card"
        );


    if (serviceSearch) {

        serviceSearch.addEventListener(
            "input",
            function () {

                const searchText =
                    serviceSearch.value
                        .toLowerCase()
                        .trim();


                moreCards.forEach(
                    function (card) {

                        const cardText =
                            card.textContent
                                .toLowerCase();


                        if (
                            cardText.includes(
                                searchText
                            )
                        ) {

                            card.style.display =
                                "flex";

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
    // SERVICE CARD CLICK
    // ==========================================

    moreCards.forEach(function (card) {

        card.addEventListener(
            "click",
            function () {

                const serviceName =
                    card.dataset.service;


                console.log(
                    "Selected service:",
                    serviceName
                );

            }
        );

    });

});