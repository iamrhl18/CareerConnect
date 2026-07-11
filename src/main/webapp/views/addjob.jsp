<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Post a Job | CareerConnect</title>

	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
			crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="/style.css">
	<link rel="stylesheet" type="text/css" href="/style1.css">

</head>
<body>

<jsp:include page="common/navbar.jsp"/>

<section class="page-header">

    <h2>
        Create New Opportunity 🚀
    </h2>

    <p>
        Connect with talented people and build your team.
    </p>

</section>

<div class="container mt-5">

	<div class="row justify-content-center">

		<div class="col-lg-7">

			<div class="job-form-card">


				<div class="form-heading">

					<div class="form-icon">
						🚀
					</div>


					<h3>
						Post a Job
					</h3>


					<p>
						Fill the details below to publish your opening.
					</p>

				</div>


				<form action="handleForm" method="post">
						

						<div class="mb-3">
							<label for="postProfile" class="form-label">Post Profile</label>
							<input type="text" class="form-control" id="postProfile" name="postProfile" required>
						</div>

						<div class="mb-3">
                            <label class="form-label">Company Name</label>
                            <input type="text"
                                   class="form-control"
                                   name="companyName"
                                   placeholder="e.g. Google"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Category</label>

                            <select class="form-select" name="category">

                                <option>Software Development</option>
                                <option>AI / ML</option>
                                <option>Data Science</option>
                                <option>Cloud Computing</option>
                                <option>Cyber Security</option>
                                <option>DevOps</option>
                                <option>UI/UX</option>
                                <option>Mobile Development</option>

                            </select>
                        </div>
                        <div class="mb-3">

                        <label class="form-label">
                        Job Type
                        </label>

                        <select class="form-select"
                                name="jobType">

                        <option>Full Time</option>
                        <option>Part Time</option>
                        <option>Internship</option>
                        <option>Contract</option>

                        </select>

                        </div>



						<div class="mb-3">
							<label for="postDesc" class="form-label">Post Description</label>
							<textarea class="form-control" id="postDesc" name="postDesc" rows="2" required></textarea>
						</div>

						<div class="mb-3">
							<label for="reqExperience" class="form-label">Required
								Experience</label>
							<input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
						</div>

						<div class="mb-3">

                        <label class="form-label">
                        Work Mode
                        </label>

                        <select class="form-select"
                                name="workMode">

                        <option>Remote</option>
                        <option>Hybrid</option>
                        <option>Onsite</option>

                        </select>

                        </div>




                        <div class="row">

                        <div class="col">

                        <label class="form-label">
                        Salary
                        </label>

                        <input
                        type="text"
                        class="form-control"
                        name="salary"
                        placeholder="₹12-18 LPA">

                        </div>

                        <div class="col">

                        <label class="form-label">
                        Location
                        </label>

                        <input
                        type="text"
                        class="form-control"
                        name="location"
                        placeholder="Bangalore">

                        </div>

                        </div>

                        <div class="mb-3">

                        <label class="form-label">
                        Company Website
                        </label>

                        <input
                        type="url"
                        class="form-control"
                        name="companyWebsite">

                        </div>

                        <div class="mb-3">

                        <label class="form-label">
                        Company Logo URL
                        </label>

                        <input
                        type="url"
                        class="form-control"
                        name="companyLogo">

                        </div>

                        <div class="row">

                        <div class="col">

                        <label class="form-label">
                        Posted Date
                        </label>

                        <input
                        type="date"
                        class="form-control"
                        name="postedDate">

                        </div>

                        <div class="col">

                        <label class="form-label">
                        Last Date To Apply
                        </label>

                        <input
                        type="date"
                        class="form-control"
                        name="lastDateToApply">

                        </div>

                        </div>

                        <div class="mb-3">

                        <label class="form-label">
                        Recruiter Email
                        </label>

                        <input
                        type="email"
                        class="form-control"
                        name="recruiterEmail">

                        </div>

                        <div class="mb-3">

                        <label class="form-label">
                        Apply URL
                        </label>

                        <input
                        type="url"
                        class="form-control"
                        name="applyUrl">

                        </div>

                        <div class="form-check">

                        <input
                        class="form-check-input"
                        type="checkbox"
                        name="active"
                        checked>

                        <label class="form-check-label">

                        Active Job

                        </label>

                        </div>



						<div class="mb-3">
							<label for="postTechStack" class="form-label">Tech Stack</label>
							<select multiple class="form-select" id="postTechStack" name="postTechStack" size="8" required>

								<option value="Java">Java</option>
								<option value="JavaScript">JavaScript</option>
								<option value="Swift">Swift</option>
								<option value="TypeScript">TypeScript</option>
								<option value="Go">Go</option>
								<option value="Kotlin">Kotlin</option>
								<option value="Rust">Rust</option>
								<option value="PHP">PHP</option>
								<option value="HTML5">HTML5</option>
								<option value="CSS3">CSS3</option>
								<option value="GraphQL">GraphQL</option>
								<option value="Raspberry Pi">Raspberry Pi</option>
								<option value="Arduino">Arduino</option>
								<option value="IoT (Internet of Things)">IoT (Internet of Things)</option>
								<option value="Apache Kafka">Apache Kafka</option>
								<option value="Elasticsearch">Elasticsearch</option>
								<option value="Unity">Unity</option>
								<option value="Game Development">Game Development</option>
								<option value="Vue.js">Vue.js</option>
								<option value="Angular">Angular</option>
								<option value="React Native">React Native</option>
								<option value="Flutter">Flutter</option>
								<option value="Node.js">Node.js</option>
								<option value="Express.js">Express.js</option>
								<option value="Django">Django</option>
								<option value="Flask">Flask</option>
								<option value="Ruby on Rails">Ruby on Rails</option>
								<option value="Laravel">Laravel</option>
								<option value="TensorFlow">TensorFlow</option>
								<option value="PyTorch">PyTorch</option>
								<option value="Kubernetes">Kubernetes</option>
								<option value="Docker">Docker</option>
								<option value="Jenkins">Jenkins</option>
								<option value="AWS (Amazon Web Services)">AWS (Amazon Web Services)</option>
								<option value="Azure">Azure</option>
								<option value="Google Cloud">Google Cloud</option>
								<option value="DevOps">DevOps</option>
								<option value="Blockchain">Blockchain</option>
								<option value="Machine Learning">Machine Learning</option>
								<option value="Artificial Intelligence">Artificial Intelligence</option>
								<option value="Cybersecurity">Cybersecurity</option>
								<option value="CISSP (Certified Information Systems Security Professional)">CISSP (Certified Information Systems Security Professional)</option>
								<option value="CompTIA Security+">CompTIA Security+</option>
								<option value="Certified Ethical Hacker (CEH)">Certified Ethical Hacker (CEH)</option>
								<option value="Scrum">Scrum</option>
								<option value="Agile">Agile</option>
								<option value="Kanban">Kanban</option>
							</select>
							<small class="text-muted">
                                Hold CTRL (Windows) or CMD (Mac) to select multiple technologies
                            </small>
						</div>

						<button type="submit" class="job-submit-btn">

                        	Create Job

                        	<span>
                        		→
                        	</span>
                        </button>

                </form>

            </div>

        </div>

    </div>

</div>

<jsp:include page="common/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
