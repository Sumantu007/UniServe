// ==========================================
// UNISERVE OTP VERIFICATION
// File: js/otp.js
// ==========================================

document.addEventListener("DOMContentLoaded", function () {

    const otpForm =
        document.getElementById("otpForm");

    if (!otpForm) {
        return;
    }


    const otpInput =
        document.getElementById("otp");


    // ==========================================
    // VERIFY OTP
    // ==========================================

    otpForm.addEventListener("submit", function (event) {

        event.preventDefault();


        const enteredOTP =
            otpInput.value.trim();


        const savedOTP =
            sessionStorage.getItem("uniserveOTP");


        if (!enteredOTP) {

            alert("Please enter OTP.");
            return;

        }


        if (enteredOTP === savedOTP) {

            alert("Mobile number verified successfully!");


            sessionStorage.setItem(
                "mobileVerified",
                "true"
            );


            sessionStorage.removeItem(
                "uniserveOTP"
            );


            window.location.href =
                "dashboard.html";

        } else {

            alert("Invalid OTP. Please try again.");

        }

    });


    // ==========================================
    // RESEND OTP
    // ==========================================

    const resendButton =
        document.getElementById("resendOTP");


    if (resendButton) {

        resendButton.addEventListener(
            "click",
            function () {

                const newOTP =
                    Math.floor(
                        100000 +
                        Math.random() * 900000
                    );


                sessionStorage.setItem(
                    "uniserveOTP",
                    newOTP
                );


                alert(
                    "New Demo OTP: " + newOTP
                );

            }
        );

    }

});