<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String userName = (String) session.getAttribute("userName");
    String userEmail = (String) session.getAttribute("userEmail");
    String userMobile = (String) session.getAttribute("userMobile");

    if (userName == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String profilePhoto = (String) session.getAttribute("profilePhoto");

    String kycIdType = (String) session.getAttribute("kycIdType");
    String kycUniqueId = (String) session.getAttribute("kycUniqueId");
    String kycAddress = (String) session.getAttribute("kycAddress");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>UniServe - My Profile</title>

<style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f4f7fb;
}

.profile-container {

    width: 500px;

    margin: 40px auto;

    background: white;

    padding: 35px;

    border-radius: 18px;

    box-shadow:
        0 5px 25px
        rgba(0,0,0,0.1);

}

h1 {
    text-align: center;
    margin-bottom: 25px;
}

h2 {
    margin-top: 35px;
    border-bottom: 1px solid #ddd;
    padding-bottom: 10px;
}

/* PROFILE PHOTO */

.photo-section {
    text-align: center;
    margin-bottom: 30px;
}

.profile-photo {

    width: 120px;
    height: 120px;

    border-radius: 50%;

    object-fit: cover;

    border: 4px solid #eee;

    display: block;

    margin: 0 auto 15px;
}

.photo-input {
    margin: 10px;
}

/* PROFILE DETAILS */

.profile-item {

    padding: 15px;

    margin-bottom: 15px;

    background: #f7f8fa;

    border-radius: 10px;

}

.label {

    color: #777;

    font-size: 13px;

}

.value {

    margin-top: 5px;

    font-size: 17px;

    font-weight: bold;

}

/* KYC */

.kyc-form {

    background: #f7f8fa;

    padding: 20px;

    border-radius: 12px;

}

.kyc-form label {

    display: block;

    margin-top: 12px;

    margin-bottom: 6px;

    font-weight: bold;

}

.kyc-form select,
.kyc-form input,
.kyc-form textarea {

    width: 100%;

    padding: 12px;

    box-sizing: border-box;

    border: 1px solid #ddd;

    border-radius: 8px;

    font-size: 15px;

}

.kyc-form textarea {

    height: 100px;

    resize: vertical;

}

.save-button {

    width: 100%;

    margin-top: 20px;

    padding: 13px;

    border: none;

    border-radius: 8px;

    background: #2563eb;

    color: white;

    font-size: 16px;

    cursor: pointer;

}

.save-button:hover {

    background: #1d4ed8;

}

/* KYC DISPLAY */

.kyc-display {

    margin-top: 20px;

    background: #eef6ff;

    padding: 15px;

    border-radius: 10px;

}

.back-button {

    display: block;

    text-align: center;

    margin-top: 30px;

    text-decoration: none;

}

.logout-button {

    display: block;

    text-align: center;

    margin-top: 15px;

    color: red;

    text-decoration: none;

}

</style>

</head>

<body>

<div class="profile-container">

    <h1>My Profile</h1>


    <!-- ========================= -->
    <!-- PROFILE PHOTO -->
    <!-- ========================= -->

    <div class="photo-section">

        <%
            if (profilePhoto != null && !profilePhoto.isEmpty()) {
        %>

            <img
                src="<%= profilePhoto %>"
                class="profile-photo"
                alt="Profile Photo">

        <%
            } else {
        %>

            <img
                src="images/default-profile.png"
                class="profile-photo"
                alt="Default Profile">

        <%
            }
        %>


        <form
            action="uploadProfilePhoto"
            method="post"
            enctype="multipart/form-data">

            <input
                type="file"
                name="profilePhoto"
                class="photo-input"
                accept="image/*"
                required>

            <br>

            <button
                type="submit"
                class="save-button">

                Upload Photo

            </button>

        </form>

    </div>


    <!-- ========================= -->
    <!-- USER INFORMATION -->
    <!-- ========================= -->

    <div class="profile-item">

        <div class="label">
            Full Name
        </div>

        <div class="value">
            <%= userName %>
        </div>

    </div>


    <div class="profile-item">

        <div class="label">
            Email Address
        </div>

        <div class="value">
            <%= userEmail %>
        </div>

    </div>


    <div class="profile-item">

        <div class="label">
            Mobile Number
        </div>

        <div class="value">
            <%= userMobile %>
        </div>

    </div>


    <!-- ========================= -->
    <!-- KYC SECTION -->
    <!-- ========================= -->

    <h2>KYC Information</h2>


    <form
        action="saveKYC"
        method="post"
        class="kyc-form">


        <!-- ID TYPE -->

        <label>
            Select ID Type
        </label>

        <select name="idType" required>

            <option value="">
                -- Select ID --
            </option>

            <option value="Aadhaar">
                Aadhaar Card
            </option>

            <option value="PAN">
                PAN Card
            </option>

            <option value="Voter ID">
                Voter ID
            </option>

            <option value="Driving Licence">
                Driving Licence
            </option>

            <option value="Other">
                Other
            </option>

        </select>


        <!-- UNIQUE ID -->

        <label>
            Unique ID Number
        </label>

        <input
            type="text"
            name="uniqueId"
            placeholder="Enter your ID number"
            required>


        <!-- ADDRESS -->

        <label>
            Address
        </label>

        <textarea
            name="address"
            placeholder="Enter your complete address"
            required></textarea>


        <!-- SAVE -->

        <button
            type="submit"
            class="save-button">

            Save KYC Information

        </button>

    </form>


    <!-- ========================= -->
    <!-- SAVED KYC -->
    <!-- ========================= -->

    <%
        if (kycIdType != null && kycUniqueId != null) {
    %>

        <div class="kyc-display">

            <h3>Saved KYC Information</h3>

            <p>
                <b>ID Type:</b>
                <%= kycIdType %>
            </p>

            <p>
                <b>Unique ID:</b>
                <%= kycUniqueId %>
            </p>

            <p>
                <b>Address:</b>
                <%= kycAddress %>
            </p>

        </div>

    <%
        }
    %>


    <!-- ========================= -->
    <!-- NAVIGATION -->
    <!-- ========================= -->

    <a
        href="index.jsp"
        class="back-button">

        ← Back to UniServe

    </a>


    <a
        href="logout"
        class="logout-button">

        🚪 Logout

    </a>

</div>

</body>

</html>