package com.rahul.CareerConnect;

import com.rahul.CareerConnect.model.JobPost;
import com.rahul.CareerConnect.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

@Controller
public class JobController {
    @Autowired
    private JobService service;

    @RequestMapping({"/","home"})
    public String home(){
        return "home";
    }

    @RequestMapping("addjob")
    public String addJob(){
        return "addjob";
    }

    @PostMapping("handleForm")
    public String handleForm(@ModelAttribute JobPost jobPost){
        System.out.println(jobPost);
        service.addJob(jobPost);
        return "success";
    }

    @RequestMapping("viewalljobs")
    public String veiwJobs(Model m){
        List<JobPost> jobs = service.getAllJobs();
        m.addAttribute("jobPosts",jobs);
        return "viewalljobs";
    }

}
