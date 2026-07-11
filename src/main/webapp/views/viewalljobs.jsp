<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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

                <div class="card shadow-sm border-0 rounded-4 h-100 job-card">

                    <div class="card-body">

                        <!-- Header -->

                        <div class="d-flex justify-content-between">

                            <div class="d-flex">

                                <c:set var="logoFallback"
                                       value="https://ui-avatars.com/api/?name=${fn:replace(jobPost.companyName,' ','+')}&background=2563EB&color=fff"/>

                                <img
                                        src="${empty jobPost.companyLogo ? logoFallback : jobPost.companyLogo}"
                                        width="60"
                                        height="60"
                                        class="rounded me-3"
                                        onerror="this.onerror=null;this.src='${logoFallback}'">

                                <div>

                                    <h5 class="mb-1">
                                        ${jobPost.companyName}
                                    </h5>

                                    <h6 class="text-dark">
                                        ${jobPost.postProfile}
                                    </h6>

                                    <span class="badge bg-primary">

                                        ${jobPost.category}

                                    </span>

                                </div>

                            </div>

                            <div>

                                <c:choose>

                                    <c:when test="${jobPost.active}">

                                        <span class="badge bg-success">

                                            Active

                                        </span>

                                    </c:when>

                                    <c:otherwise>

                                        <span class="badge bg-danger">

                                            Closed

                                        </span>

                                    </c:otherwise>

                                </c:choose>

                            </div>

                        </div>

                        <hr>

                        <!-- Job Information -->

                        <div class="row text-center">

                            <div class="col-6 col-lg-3">

                                📍<br>

                                <strong>${jobPost.location}</strong>

                            </div>

                            <div class="col-6 col-lg-3">

                                💼<br>

                                <strong>${jobPost.jobType}</strong>

                            </div>

                            <div class="col-6 col-lg-3">

                                🏠<br>

                                <strong>${jobPost.workMode}</strong>

                            </div>

                            <div class="col-6 col-lg-3">

                                💰<br>

                                <strong>${jobPost.salary}</strong>

                            </div>

                        </div>

                        <hr>

                        <!-- Skills -->

                        <div class="tech-stack mb-3">

                            <c:forEach var="tech" items="${jobPost.postTechStack}">

                                <span class="tech-pill">

                                    ${tech}

                                </span>

                            </c:forEach>

                        </div>

                        <!-- Buttons -->

                        <div class="d-flex justify-content-between">

                            <a href="/job/${jobPost.postId}"
                               class="btn btn-primary">

                                👁 View Details

                            </a>

                            <div>

                                <a href="/editjob/${jobPost.postId}"
                                   class="btn btn-warning">

                                    ✏ Edit

                                </a>

                                <a href="/deletejob/${jobPost.postId}"
                                   class="btn btn-danger"
                                   onclick="return confirm('Delete this job?')">

                                    🗑 Delete

                                </a>

                            </div>

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
