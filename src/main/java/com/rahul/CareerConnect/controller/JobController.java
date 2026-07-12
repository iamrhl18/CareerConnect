package com.rahul.CareerConnect.controller;

import com.rahul.CareerConnect.model.JobPost;
import com.rahul.CareerConnect.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.data.domain.Page;

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
    public String viewJobs(

            @RequestParam(defaultValue = "0") int page,

            @RequestParam(required = false, defaultValue = "") String keyword,

            Model model) {

        Page<JobPost> jobPage = service.getJobsByPage(page, keyword);

        model.addAttribute("jobPosts", jobPage.getContent());

        model.addAttribute("currentPage", page);

        model.addAttribute("totalPages", jobPage.getTotalPages());

        int startPage = Math.max(0, page - 2);
        int endPage = Math.min(jobPage.getTotalPages() - 1, page + 2);

        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        model.addAttribute("keyword", keyword);

        return "viewalljobs";
    }

    // # Open Edit page

    @GetMapping("/editjob/{id}")
    public String editJob(@PathVariable int id, Model model) {

        JobPost job = service.getJob(id);

        model.addAttribute("job", job);

        return "editjob";
    }

        // # Save updated job

    @PostMapping("/updatejob")
    public String updateJob(@ModelAttribute JobPost job) {

        service.updateJob(job);

        return "redirect:/viewalljobs";
    }

    @GetMapping("/deletejob/{id}")
    public String deleteJob(@PathVariable int id) {

        service.deleteJob(id);

        return "redirect:/viewalljobs";
    }

    @GetMapping("/job/{id}")
    public String viewJobDetails(@PathVariable int id, Model model) {

        JobPost job = service.getJob(id);

        model.addAttribute("job", job);

        return "jobdetails";
    }


}
