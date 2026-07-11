package com.rahul.CareerConnect.model;
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


}
