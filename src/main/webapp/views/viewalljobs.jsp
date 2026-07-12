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



        <form action="/viewalljobs" method="get">

            <div class="row g-3">

                <div class="col-md-4">

                    <input
                            type="text"
                            name="keyword"
                            value="${keyword}"
                            class="form-control"
                            placeholder="🔍 Search jobs, companies...">

                </div>

                <div class="col-md-2">

                    <input
                            type="text"
                            name="company"
                            class="form-control"
                            placeholder="Company">

                </div>

                <div class="col-md-2">

                    <input
                            type="text"
                            name="location"
                            class="form-control"
                            placeholder="Location">

                </div>

                <div class="col-md-2">

                    <select
                            name="workMode"
                            class="form-select">

                        <option value="">
                            Work Mode
                        </option>

                        <option>
                            Remote
                        </option>

                        <option>
                            Hybrid
                        </option>

                        <option>
                            Onsite
                        </option>

                    </select>

                </div>

                <div class="col-md-2">

                    <button
                            class="btn btn-primary w-100">

                        Search

                    </button>

                </div>

            </div>

        </form>


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

    <h5 class="mb-4">
            Found ${jobPosts.size()} job(s)
    </h5>

    <c:if test="${empty jobPosts}">

            <div class="alert alert-warning text-center mt-4">

                <h4>😔 No Jobs Found</h4>

                <p>Try another keyword.</p>

            </div>

    </c:if>



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

<nav class="mt-5">

    <ul class="pagination justify-content-center">

        <!-- Previous -->

        <li class="page-item ${currentPage == 0 ? 'disabled' : ''}">

            <a class="page-link"
               href="/viewalljobs?page=${currentPage > 0 ? currentPage - 1 : 0}">

                ← Previous

            </a>

        </li>

        <c:forEach begin="${startPage}" end="${endPage}" var="i">

            <li class="page-item ${i == currentPage ? 'active' : ''}">

                <a class="page-link"
                   href="/viewalljobs?page=${i}">

                    ${i + 1}

                </a>

            </li>

        </c:forEach>

        <!-- Next -->

        <li class="page-item ${currentPage == totalPages-1 ? 'disabled' : ''}">

            <a class="page-link"
               href="/viewalljobs?page=${currentPage < totalPages-1 ? currentPage + 1 : totalPages-1}">

                Next →

            </a>

        </li>

    </ul>

</nav>

<jsp:include page="common/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
