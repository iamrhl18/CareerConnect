package com.rahul.CareerConnect.service;

import com.rahul.CareerConnect.model.JobPost;
import com.rahul.CareerConnect.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}