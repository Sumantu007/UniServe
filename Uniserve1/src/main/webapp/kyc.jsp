<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String registrationEmail =
        (String) session.getAttribute(
            "registrationEmail"
        );

    if (registrationEmail == null) {

        response.sendRedirect(
            "register.jsp"
        );

        return;
    }
%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>
        UniServe - KYC Verification
    </title>

    <link rel="stylesheet"
          href="css/style.css">

</head>

<body>

<header class="navbar">

    <a href="index.jsp"
       class="logo">

        UNI<span>SERVE</span>

    </a>

    <nav>

        <a href="index.jsp">
            Home
        </a>

    </nav>

</header>


<section class="form-page">

<div class="form-card wide-card">

    <div class="badge">
        PROFILE VERIFICATION
    </div>

    <h1>
        KYC Verification
    </h1>

    <p>
        Enter your identification details
        for your UniServe profile.
    </p>


    <div class="notice">

        <strong>KYC:</strong>

        Use test/demo information while
        developing this project.

    </div>


    <!-- IMPORTANT -->

    <form
        action="kycServlet"
        method="post"
        id="kycForm">


        <!-- ID TYPE -->

        <label>
            Choose ID Type
        </label>

        <select
            id="idType"
            name="idType"
            required>

            <option value="">
                Select ID type
            </option>

            <option value="aadhaar">
                Aadhaar
            </option>

            <option value="pan">
                PAN
            </option>

            <option value="passport">
                Passport
            </option>

            <option value="voter">
                Voter ID
            </option>

            <option value="driving">
                Driving Licence
            </option>

        </select>


        <!-- ID NUMBER -->

        <label>
            ID Number
        </label>

        <input
            type="text"
            id="idNumber"
            name="idNumber"
            placeholder="Enter demo ID number"
            required>


        <!-- DOB -->

        <label>
            Date of Birth
        </label>

        <input
            type="date"
            id="dob"
            name="dob"
            required>


        <!-- ADDRESS -->

        <label>
            Address
        </label>

        <textarea
            id="address"
            name="address"
            rows="4"
            placeholder="Enter address"
            required></textarea>


        <!-- AGREEMENT -->

        <label class="check-label">

            <input
                type="checkbox"
                name="kycAgreement"
                value="yes"
                required>

            I agree to the UniServe KYC terms.

        </label>


        <!-- SUBMIT -->

        <button
            type="submit"
            class="btn btn-primary full-btn">

            Submit KYC

        </button>


    </form>

</div>

</section>


<footer>
    © 2026 UniServe
</footer>


</body>

</html>