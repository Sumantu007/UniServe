// ==========================================
// UNISERVE PAYMENT
// File: js/payment.js
// ==========================================

document.addEventListener("DOMContentLoaded", function () {

    const paymentForm =
        document.getElementById("paymentForm");


    if (!paymentForm) {
        return;
    }


    paymentForm.addEventListener(
        "submit",
        function (event) {

            event.preventDefault();


            const receiver =
                document.getElementById(
                    "receiver"
                )?.value.trim();


            const amount =
                document.getElementById(
                    "amount"
                )?.value;


            if (!receiver) {

                alert(
                    "Please enter receiver details."
                );

                return;

            }


            if (!amount || amount <= 0) {

                alert(
                    "Please enter a valid amount."
                );

                return;

            }


            const transaction = {

                receiver: receiver,

                amount: amount,

                date:
                    new Date().toLocaleString(),

                status: "Successful"

            };


            localStorage.setItem(
                "lastTransaction",
                JSON.stringify(transaction)
            );


            alert(
                "Demo payment successful!"
            );


            window.location.href =
                "activity.html";

        }
    );

});