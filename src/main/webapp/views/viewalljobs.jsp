<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Jobs | CareerConnect</title>
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
        Explore Job Opportunities
    </h2>

    <p>
        Find the right role and take the next step in your career.
    </p>

</section>

<!-- Search Section -->

<div class="container">

    <div class="job-search-box">


        <div class="search-title">

            <h3>
                Find Your Next Opportunity
            </h3>

            <p>
                Search jobs based on your skills and interests.
            </p>

        </div>



        <div class="search-bar">


            <div class="search-input">

                🔍

                <input
                    type="text"
                    placeholder="Search jobs, skills, companies...">

            </div>


            <button class="search-btn">

                Search

            </button>


        </div>



        <div class="filter-tags">


            <span>
                Java
            </span>


            <span>
                Spring Boot
            </span>


            <span>
                React
            </span>


            <span>
                Remote
            </span>


            <span>
                Full Stack
            </span>


        </div>


    </div>

</div>

<div class="container mt-5">

    <div class="row row-cols-1 row-cols-md-2">
        <c:forEach var="jobPost" items="${jobPosts}" varStatus="status">

            <div class="col mb-4">
                <div class="card job-card h-100" style="animation-delay: ${status.index * 0.08}s;">
                    <div class="card-body">


                        <div class="job-top">


                            <div>

                                <h5 class="card-title">
                                    ${jobPost.postProfile}
                                </h5>


                                <p class="job-company">
                                    🏢 CareerConnect Partner
                                </p>

                            </div>



                            <span class="badge-experience">

                                ${jobPost.reqExperience} yrs

                            </span>


                        </div>



                        <p class="card-text job-description">

                            ${jobPost.postDesc}

                        </p>



                        <div class="tech-stack">

                            <c:forEach var="tech"
                                       items="${jobPost.postTechStack}">

                                <span class="tech-pill">
                                    ${tech}
                                </span>

                            </c:forEach>

                        </div>



                        <div class="job-footer">

                            <span>
                                📍 Remote / Flexible
                            </span>


                            <a href="#" class="apply-btn">

                                Apply →

                            </a>


                        </div>


                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<jsp:include page="common/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
