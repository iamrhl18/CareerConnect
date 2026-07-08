package com.rahul.CareerConnect.service;
import java.util.List;

import com.rahul.CareerConnect.model.JobPost;
import com.rahul.CareerConnect.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JobService {
    @Autowired
    private JobRepo repo;


    public void addJob(JobPost jobPost){
        repo.addJob(jobPost);
    }

    public  List<JobPost> getAllJobs(){
        return repo.getAllJobs();
    }



}
