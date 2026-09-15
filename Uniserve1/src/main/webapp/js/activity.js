// ==========================================
// UNISERVE ACTIVITY
// File: js/activity.js
// ==========================================

document.addEventListener("DOMContentLoaded", function () {

    const activityContainer =
        document.getElementById(
            "activityContainer"
        );


    if (!activityContainer) {
        return;
    }


    const transaction =
        localStorage.getItem(
            "lastTransaction"
        );


    if (!transaction) {

        activityContainer.innerHTML = `
            <div class="no-activity">
                <h3>No Recent Activity</h3>
                <p>Your transactions and bookings
                will appear here.</p>
            </div>
        `;

        return;

    }


    const data =
        JSON.parse(transaction);


    activityContainer.innerHTML = `

        <div class="activity-card">

            <h3>Payment</h3>

            <p>
                <strong>Receiver:</strong>
                ${data.receiver}
            </p>

            <p>
                <strong>Amount:</strong>
                ₹${data.amount}
            </p>

            <p>
                <strong>Date:</strong>
                ${data.date}
            </p>

            <p>
                <strong>Status:</strong>
                ${data.status}
            </p>

        </div>

    `;

});