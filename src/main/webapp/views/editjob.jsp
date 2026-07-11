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
        Edit Job ✏️
    </h2>

    <p>
        Update the job details below.
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
                        Edit Job
                    </h3>

                    <p>
                        Update the job information.
                    </p>

				</div>


				<form action="/updatejob" method="post">

				        <input type="hidden"
                               name="postId"
                               value="${job.postId}">


						<div class="mb-3">
							<label for="postProfile" class="form-label">Post Profile</label>
							<input type="text" class="form-control" id="postProfile" name="postProfile" value="${job.postProfile}" required>
						</div>

						<div class="mb-3">
                            <label class="form-label">Company Name</label>
                            <input type="text"
                                   class="form-control"
                                   name="companyName"
                                   placeholder="e.g. Google"
                                   value="${job.companyName}"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Category</label>

                            <select class="form-select" name="category">

                                <option value="Software Development"
                                    ${job.category == 'Software Development' ? 'selected' : ''}>
                                    Software Development
                                </option>

                                <option value="AI / ML"
                                    ${job.category == 'AI / ML' ? 'selected' : ''}>
                                    AI / ML
                                </option>

                                <option value="Data Science"
                                    ${job.category == 'Data Science' ? 'selected' : ''}>
                                    Data Science
                                </option>

                                <option value="Cloud Computing"
                                    ${job.category == 'Cloud Computing' ? 'selected' : ''}>
                                    Cloud Computing
                                </option>

                                <option value="Cyber Security"
                                    ${job.category == 'Cyber Security' ? 'selected' : ''}>
                                    Cyber Security
                                </option>

                                <option value="DevOps"
                                    ${job.category == 'DevOps' ? 'selected' : ''}>
                                    DevOps
                                </option>

                                <option value="UI/UX"
                                    ${job.category == 'UI/UX' ? 'selected' : ''}>
                                    UI/UX
                                </option>

                                <option value="Mobile Development"
                                    ${job.category == 'Mobile Development' ? 'selected' : ''}>
                                    Mobile Development
                                </option>

                            </select>
                        </div>
                        <div class="mb-3">

                        <label class="form-label">
                        Job Type
                        </label>

                        <select class="form-select"
                                name="jobType">

                            <option value="Full Time"
                                ${job.jobType == 'Full Time' ? 'selected' : ''}>
                                Full Time
                            </option>

                            <option value="Part Time"
                                ${job.jobType == 'Part Time' ? 'selected' : ''}>
                                Part Time
                            </option>

                            <option value="Internship"
                                ${job.jobType == 'Internship' ? 'selected' : ''}>
                                Internship
                            </option>

                            <option value="Contract"
                                ${job.jobType == 'Contract' ? 'selected' : ''}>
                                Contract
                            </option>

                        </select>

                        </div>



						<div class="mb-3">
							<label for="postDesc" class="form-label">Post Description</label>
							<textarea class="form-control" id="postDesc" name="postDesc" rows="2" required>${job.postDesc}</textarea>
						</div>

						<div class="mb-3">
							<label for="reqExperience" class="form-label">Required
								Experience</label>
							<input type="number" class="form-control" id="reqExperience" name="reqExperience" value="${job.reqExperience}" required>
						</div>

						<div class="mb-3">

                        <label class="form-label">
                        Work Mode
                        </label>

                        <select class="form-select"
                                name="workMode">

                            <option value="Remote"
                                ${job.workMode == 'Remote' ? 'selected' : ''}>
                                Remote
                            </option>

                            <option value="Hybrid"
                                ${job.workMode == 'Hybrid' ? 'selected' : ''}>
                                Hybrid
                            </option>

                            <option value="Onsite"
                                ${job.workMode == 'Onsite' ? 'selected' : ''}>
                                Onsite
                            </option>

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
                        value="${job.salary}"
                        >

                        </div>

                        <div class="col">

                        <label class="form-label">
                        Location
                        </label>

                        <input
                        type="text"
                        class="form-control"
                        name="location"
                        value="${job.location}"
                        >

                        </div>

                        </div>

                        <div class="mb-3">

                        <label class="form-label">
                        Company Website
                        </label>

                        <input
                        type="url"
                        class="form-control"
                        name="companyWebsite" value="${job.companyWebsite}">

                        </div>

                        <div class="mb-3">

                        <label class="form-label">
                        Company Logo URL
                        </label>

                        <input
                        type="url"
                        class="form-control"
                        name="companyLogo" value="${job.companyLogo}">

                        </div>

                        <div class="row">

                        <div class="col">

                        <label class="form-label">
                        Posted Date
                        </label>

                        <input
                        type="date"
                        class="form-control"
                        name="postedDate"
                        value="${job.postedDate}">

                        </div>

                        <div class="col">

                        <label class="form-label">
                        Last Date To Apply
                        </label>

                        <input
                        type="date"
                        class="form-control"
                        name="lastDateToApply"
                        value="${job.lastDateToApply}">

                        </div>

                        </div>

                        <div class="mb-3">

                        <label class="form-label">
                        Recruiter Email
                        </label>

                        <input
                        type="email"
                        class="form-control"
                        name="recruiterEmail" value="${job.recruiterEmail}">

                        </div>

                        <div class="mb-3">

                        <label class="form-label">
                        Apply URL
                        </label>

                        <input
                        type="url"
                        class="form-control"
                        name="applyUrl" value="${job.applyUrl}">

                        </div>

                        <div class="form-check">

                        <input
                        class="form-check-input"
                        type="checkbox"
                        name="active"
                        ${job.active ? 'checked' : ''}>

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

                        	Update Job

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
