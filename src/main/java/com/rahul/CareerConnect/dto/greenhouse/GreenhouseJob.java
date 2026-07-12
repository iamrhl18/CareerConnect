package com.rahul.CareerConnect.dto.greenhouse;

import lombok.Data;

@Data
public class GreenhouseJob {

    private Long id;

    private String title;

    private String company_name;

    private String absolute_url;

    private String first_published;

    private GreenhouseLocation location;


}