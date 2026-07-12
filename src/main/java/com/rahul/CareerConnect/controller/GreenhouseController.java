package com.rahul.CareerConnect.controller;

import com.rahul.CareerConnect.integration.greenhouse.GreenhouseService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreenhouseController {

    private final GreenhouseService greenhouseService;

    public GreenhouseController(GreenhouseService greenhouseService) {
        this.greenhouseService = greenhouseService;
    }

    @GetMapping("/api/greenhouse/test")
    public String test() {
        return greenhouseService.testConnection();
    }

    @GetMapping("/api/greenhouse/sync")
    public String syncJobs() {

        int imported = greenhouseService.importJobs();

        return imported + " jobs imported successfully.";

    }
}