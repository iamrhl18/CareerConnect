<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>${job.postProfile} | CareerConnect</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">

    <link rel="stylesheet"
          type="text/css"
          href="/style.css">

</head>
<body>

<jsp:include page="common/navbar.jsp"/>

<div class="container mt-5">

    <div class="card shadow-lg border-0 rounded-4">

        <div class="card-body p-5">

            <div class="d-flex align-items-center">

                <img src="${job.companyLogo}"
                     alt="Company Logo"
                     width="90"
                     height="90"
                     class="rounded me-4">

                <div>

                    <h2 class="fw-bold">

                        ${job.companyName}

                    </h2>

                    <h4>

                        ${job.postProfile}

                    </h4>

                    <span class="badge bg-primary">

                        ${job.category}

                    </span>

                </div>

            </div>

        </div>

    </div>

    <div class="card mt-4 shadow-sm">

        <div class="card-body">

            <div class="row">

                <div class="col-md-3">
                    <h6>📍 Location</h6>
                    <p>${job.location}</p>
                </div>

                <div class="col-md-3">
                    <h6>💼 Job Type</h6>
                    <p>${job.jobType}</p>
                </div>

                <div class="col-md-3">
                    <h6>🏠 Work Mode</h6>
                    <p>${job.workMode}</p>
                </div>

                <div class="col-md-3">
                    <h6>💰 Salary</h6>
                    <p>${job.salary}</p>
                </div>

            </div>

        </div>

    </div>

    <div class="card mt-4 shadow-sm">
        <div class="card-body">

            <h4>📄 Job Description</h4>
            <hr>

            <p>${job.postDesc}</p>

        </div>
    </div>

    <div class="card mt-4 shadow-sm">
        <div class="card-body">

            <h4>🛠 Required Skills</h4>
            <hr>

            <c:forEach var="tech" items="${job.postTechStack}">
                <span class="badge bg-primary me-2 mb-2 p-2">
                    ${tech}
                </span>
            </c:forEach>

        </div>
    </div>

    <div class="card mt-4 shadow-sm">
        <div class="card-body">

            <h4>🏢 Company Information</h4>
            <hr>

            <p><strong>Company:</strong> ${job.companyName}</p>

            <p><strong>Website:</strong>
                <a href="${job.companyWebsite}" target="_blank">
                    ${job.companyWebsite}
                </a>
            </p>

            <p><strong>Recruiter:</strong>
                ${job.recruiterEmail}
            </p>

        </div>
    </div>

    <div class="card mt-4 shadow-sm">
        <div class="card-body">

            <h4>📅 Important Dates</h4>
            <hr>

            <p><strong>Posted:</strong> ${job.postedDate}</p>

            <p><strong>Apply Before:</strong> ${job.lastDateToApply}</p>

        </div>
    </div>

    <div class="mt-4 d-flex justify-content-between">

        <a href="/viewalljobs" class="btn btn-secondary">
            ← Back
        </a>

        <a href="${job.applyUrl}"
           target="_blank"
           class="btn btn-success">
            🚀 Apply Now
        </a>

    </div>

</div>


<jsp:include page="common/footer.jsp"/>

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
integrity="sha384-C6RzsynM9kWDrMNeQeRz9Y1Qq46cDfL"
crossorigin="anonymous">
</script>

</body>
</html>