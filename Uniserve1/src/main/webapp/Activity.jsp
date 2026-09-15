<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>UniServe - Activity</title>

<link rel="stylesheet" href="css/style.css">

<style>

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f5f5f5;
    }

    .activity-container {
        width: 90%;
        max-width: 900px;
        margin: 40px auto;
    }

    .activity-header {
        background: white;
        padding: 25px;
        border-radius: 15px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.10);
        margin-bottom: 25px;
    }

    .activity-header h1 {
        margin: 0 0 10px 0;
    }

    .activity-header p {
        color: #666;
    }

    .activity-list {
        background: white;
        border-radius: 15px;
        padding: 10px 25px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.10);
    }

    .activity-item {
        padding: 18px 10px;
        border-bottom: 1px solid #ddd;
        font-size: 16px;
    }

    .activity-item:last-child {
        border-bottom: none;
    }

    .activity-icon {
        margin-right: 10px;
    }

    .no-activity {
        text-align: center;
        padding: 40px;
        color: #777;
    }

    .back-btn {
        display: inline-block;
        margin-top: 25px;
        padding: 12px 25px;
        background: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 8px;
    }

    .back-btn:hover {
        background: #0056b3;
    }

</style>


</head>

<body>

<div class="activity-container">


<div class="activity-header">

    <h1>📋 My Activity</h1>

    <p>
        Welcome,
        
    </p>

    <p>
        Here you can see your UniServe activity history.
    </p>

</div>


<div class="activity-list">

    <h2>Recent Activities</h2>



        <div class="no-activity">

            <h3>📭 No Activity Found</h3>

            <p>
                Your UniServe activities will appear here.
            </p>

        </div>

        <div class="activity-item">

            <span class="activity-icon">
                🕒
            </span>

         

        </div>



   

</div>


<a href="index.jsp" class="back-btn">
    ← Back to UniServe
</a>


</div>

</body>

</html>
