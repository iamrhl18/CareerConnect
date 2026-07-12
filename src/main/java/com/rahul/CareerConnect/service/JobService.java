package com.rahul.CareerConnect.service;

import com.rahul.CareerConnect.model.JobPost;
import com.rahul.CareerConnect.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepo repo;

    public void addJob(JobPost jobPost) {
        repo.save(jobPost);
    }

    public List<JobPost> getAllJobs() {
        return repo.findAll();
    }

    public Page<JobPost> getJobsByPage(int page, String keyword) {

        Pageable pageable = PageRequest.of(page, 20);

        if (keyword == null || keyword.isBlank()) {

            return repo.findAll(pageable);

        }

        return repo.searchJobs(keyword, pageable);

    }

    // # feature to fetch and edit and delete the job's

    public JobPost getJob(int id) {
        return repo.findById(id).orElse(null);
    }

    public void updateJob(JobPost job) {
        repo.save(job);
    }

    public void deleteJob(int id) {
        repo.deleteById(id);
    }

    // # Feature to search the job


}