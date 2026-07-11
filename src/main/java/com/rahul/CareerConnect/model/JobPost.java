package com.rahul.CareerConnect.model;
import java.time.LocalDate;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import org.springframework.stereotype.Component;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class JobPost {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int postId;

    private String postProfile;
    @Column(length = 5000)
    private String postDesc;
    private int reqExperience;
    private List<String> postTechStack;


    private String companyName;

    @Column(length = 1000)
    private String companyLogo;

    @Column(length = 1000)
    private String companyWebsite;

    private String location;

    private String jobType;          // Full Time, Internship...

    private String workMode;         // Remote, Hybrid, Onsite

    private String salary;

    private String recruiterEmail;

    @Column(length = 1000)
    private String applyUrl;

    private String category;

    private LocalDate postedDate;

    private LocalDate lastDateToApply;

    private boolean active;


}
