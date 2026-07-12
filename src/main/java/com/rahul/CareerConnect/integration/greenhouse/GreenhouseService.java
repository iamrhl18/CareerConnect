package com.rahul.CareerConnect.integration.greenhouse;

import com.rahul.CareerConnect.dto.greenhouse.GreenhouseJob;
import com.rahul.CareerConnect.dto.greenhouse.GreenhouseResponse;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestClient;
import com.rahul.CareerConnect.model.JobPost;
import com.rahul.CareerConnect.repo.JobRepo;
import java.util.ArrayList;
import java.util.List;

@Service
public class GreenhouseService {

    private final RestClient restClient;

    private final JobRepo jobRepo;

    private final List<String> companies = List.of(

            "cloudflare",
            "canva",
            "coinbase",
            "figma",
            "reddit",
            "stripe"

    );

    public GreenhouseService(JobRepo jobRepo) {

        this.jobRepo = jobRepo;

        this.restClient = RestClient.create();

    }

    public String testConnection() {

        String url = "https://boards-api.greenhouse.io/v1/boards/cloudflare/jobs";

        GreenhouseResponse response = restClient
                .get()
                .uri(url)
                .retrieve()
                .body(GreenhouseResponse.class);

        StringBuilder builder = new StringBuilder();

        for (GreenhouseJob job : response.getJobs()) {


            builder.append("Job Title : ")
                    .append(job.getTitle())
                    .append("\n");

            builder.append("Company : ")
                    .append(job.getCompany_name())
                    .append("\n");

            builder.append("Location : ")
                    .append(job.getLocation().getName())
                    .append("\n");

            builder.append("Apply : ")
                    .append(job.getAbsolute_url())
                    .append("\n");

            builder.append("---------------------------------\n");

        }

        return builder.toString();
    }

    public int importJobs() {

        int totalImported = 0;

        for (String company : companies) {

            try {

                System.out.println("Importing: " + company);

                totalImported += importCompany(company);

            } catch (Exception e) {

                System.out.println("Skipping " + company + " : " + e.getMessage());

            }

        }

        return totalImported;
    }

    private int importCompany(String company) {

        String url = "https://boards-api.greenhouse.io/v1/boards/" + company + "/jobs";

        GreenhouseResponse response = restClient
                .get()
                .uri(url)
                .retrieve()
                .body(GreenhouseResponse.class);

        int imported = 0;

        for (GreenhouseJob job : response.getJobs()) {

            JobPost post = new JobPost();

            post.setPostProfile(job.getTitle());
            post.setCompanyName(job.getCompany_name());
            post.setLocation(job.getLocation().getName());
            post.setApplyUrl(job.getAbsolute_url());
            post.setSource("Greenhouse");
            post.setExternalJobId(String.valueOf(job.getId()));

            post.setPostDesc("Imported from Greenhouse API");
            post.setReqExperience(0);
            post.setPostTechStack(new ArrayList<>());
            post.setCompanyWebsite("https://www.cloudflare.com");
            post.setCompanyLogo("https://logo.clearbit.com/cloudflare.com");
            post.setJobType("Full Time");
            post.setWorkMode(job.getLocation().getName());
            post.setSalary("Not Disclosed");
            post.setRecruiterEmail("Not Available");
            post.setCategory("Software");
            post.setPostedDate(java.time.LocalDate.now());
            post.setLastDateToApply(java.time.LocalDate.now().plusMonths(1));
            post.setActive(true);

            if (jobRepo.findByExternalJobId(post.getExternalJobId()).isEmpty()) {

                jobRepo.save(post);

                imported++;

            }

        }

        return imported;

    }




}