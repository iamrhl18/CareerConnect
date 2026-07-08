<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.rahul.CareerConnect.model.JobPost" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Job Posted | CareerConnect</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>

<jsp:include page="common/navbar.jsp"/>

<section class="page-header">

    <h2>
        Job Posted Successfully 🎉
    </h2>

    <p>
        Your opportunity is now visible to candidates.
    </p>

</section>

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<div class="container success-container">


    <div class="success-icon">

        ✓

    </div>



    <h2 class="success-title">

        Job Posted Successfully!

    </h2>



    <p class="success-message">

        Your job opportunity has been added to CareerConnect.

    </p>




    <div class="success-card">


        <h3>

            💼 <%= myJobPost.getPostProfile() %>

        </h3>



        <div class="success-detail">

            <span>
                📝 Description
            </span>

            <p>
                <%= myJobPost.getPostDesc() %>
            </p>

        </div>




        <div class="success-detail">

            <span>
                ⚡ Experience
            </span>

            <p>
                <%= myJobPost.getReqExperience() %> years
            </p>

        </div>




        <div class="success-detail">

            <span>
                🛠 Tech Stack
            </span>


            <div class="tech-stack">


                <% for (String tech : myJobPost.getPostTechStack()) { %>


                    <span class="tech-pill">

                        <%= tech %>

                    </span>


                <% } %>


            </div>


        </div>



    </div>



    <a href="/viewalljobs" class="success-btn">

        View All Jobs →

    </a>


</div>

<jsp:include page="common/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
