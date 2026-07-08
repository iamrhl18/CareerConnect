<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CareerConnect | Job Portal</title>

    <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/style.css">
    <link rel="stylesheet" type="text/css" href="/style1.css">

</head>
<body>

<!-- Compact navbar -->
<jsp:include page="common/navbar.jsp"/>
<!-- Hero Section -->
<section class="hero">
    <div class="container">
        <div class="row align-items-center">

            <!-- Left Side -->
            <div class="col-lg-6 text-lg-start text-center">

                <span class="hero-badge">
                    🚀 Trusted by Job Seekers
                </span>

                <h1 class="hero-title mt-3">
                    Find Your <span>Dream Job</span><br>
                    Build Your Career
                </h1>

                <p class="hero-tagline mt-4">
                    Discover thousands of verified jobs from top companies.
                    Whether you're starting your career or looking for your
                    next opportunity, CareerConnect helps you get there.
                </p>

                <div class="hero-buttons mt-4">

                    <a href="/viewalljobs" class="btn btn-light btn-lg me-3">
                        Browse Jobs
                    </a>

                    <a href="/addjob" class="btn btn-outline-light btn-lg">
                        Post a Job
                    </a>

                </div>

            </div>

           <!-- Right Illustration -->
           <div class="col-lg-6 text-center mt-5 mt-lg-0">

               <div class="hero-visual">

                   <div class="floating-card card-one">
                       <span>💼</span>
                       <div>
                           <strong>Software Engineer</strong>
                           <small>Google • Remote</small>
                       </div>
                   </div>


                   <div class="main-circle">

                       <div class="profile-icon">
                           👨‍💻
                       </div>

                   </div>


                   <div class="floating-card card-two">

                       <span>🚀</span>

                       <div>
                           <strong>500+ Jobs</strong>
                           <small>Available Now</small>
                       </div>

                   </div>


                   <div class="floating-icon icon-one">
                       📄
                   </div>


                   <div class="floating-icon icon-two">
                       🔍
                   </div>


               </div>

           </div>

            </div>

        </div>
    </div>
</section>
<!-- Opportunity Cards -->

<div class="container opportunity-section">

    <div class="row g-4">


        <!-- Browse Jobs -->

        <div class="col-lg-6">

            <div class="opportunity-card">


                <div class="opportunity-icon">
                    🔍
                </div>


                <h3>
                    Browse Jobs
                </h3>


                <p>
                    Explore thousands of job opportunities
                    from companies looking for talented people.
                </p>


                <a href="/viewalljobs" class="card-btn">

                    Explore Jobs
                    <span>→</span>

                </a>


            </div>

        </div>




        <!-- Post Job -->


        <div class="col-lg-6">

            <div class="opportunity-card">


                <div class="opportunity-icon">
                    🚀
                </div>


                <h3>
                    Post a Job
                </h3>


                <p>
                    Find skilled candidates and hire the
                    right talent for your organization.
                </p>


                <a href="/addjob" class="card-btn">

                    Create Job
                    <span>→</span>

                </a>


            </div>

        </div>



    </div>

</div>


<!-- Statistics Section -->

<section class="stats-section">

    <div class="container">

        <div class="stats-wrapper">


            <div class="stat-item">

                <div class="stat-number">
                    500+
                </div>

                <div class="stat-label">
                    Jobs Available
                </div>

            </div>



            <div class="stat-item">

                <div class="stat-number">
                    120+
                </div>

                <div class="stat-label">
                    Companies
                </div>

            </div>



            <div class="stat-item">

                <div class="stat-number">
                    2500+
                </div>

                <div class="stat-label">
                    Candidates
                </div>

            </div>



            <div class="stat-item">

                <div class="stat-number">
                    95%
                </div>

                <div class="stat-label">
                    Hiring Success
                </div>

            </div>


        </div>

    </div>

</section>

<!-- Why Choose Section -->

<section class="why-section">

    <div class="container">


        <div class="section-title">

            <h2>
                Why Choose CareerConnect?
            </h2>

            <p>
                Everything you need to connect with the right opportunities.
            </p>

        </div>



        <div class="row g-4">


            <div class="col-md-3">

                <div class="feature-card">

                    <div class="feature-icon">
                        🔒
                    </div>

                    <h4>
                        Verified Companies
                    </h4>

                    <p>
                        Find opportunities from trusted organizations.
                    </p>

                </div>

            </div>



            <div class="col-md-3">

                <div class="feature-card">

                    <div class="feature-icon">
                        ⚡
                    </div>

                    <h4>
                        Quick Apply
                    </h4>

                    <p>
                        Apply to jobs easily and save your time.
                    </p>

                </div>

            </div>



            <div class="col-md-3">

                <div class="feature-card">

                    <div class="feature-icon">
                        🎯
                    </div>

                    <h4>
                        Better Matches
                    </h4>

                    <p>
                        Discover jobs that match your skills.
                    </p>

                </div>

            </div>



            <div class="col-md-3">

                <div class="feature-card">

                    <div class="feature-icon">
                        🌎
                    </div>

                    <h4>
                        Career Growth
                    </h4>

                    <p>
                        Build your professional journey.
                    </p>

                </div>

            </div>


        </div>


    </div>


</section>



<!-- Footer -->
<jsp:include page="common/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
       integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
       crossorigin="anonymous"></script>
</body>
</html>
