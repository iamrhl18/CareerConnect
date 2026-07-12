package com.rahul.CareerConnect.repo;

import com.rahul.CareerConnect.model.JobPost;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.Optional;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface JobRepo extends JpaRepository<JobPost, Integer> {

    @Query(
            value = """
        SELECT * FROM job_post
        WHERE LOWER(post_profile) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(company_name) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(location) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(category) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(job_type) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(work_mode) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(post_tech_stack) LIKE LOWER(CONCAT('%', :keyword, '%'))
        """,
            countQuery = """
        SELECT COUNT(*) FROM job_post
        WHERE LOWER(post_profile) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(company_name) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(location) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(category) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(job_type) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(work_mode) LIKE LOWER(CONCAT('%', :keyword, '%'))
           OR LOWER(post_tech_stack) LIKE LOWER(CONCAT('%', :keyword, '%'))
        """,
            nativeQuery = true
    )
    Page<JobPost> searchJobs(
            @Param("keyword") String keyword,
            Pageable pageable);


    Optional<JobPost> findByExternalJobId(String externalJobId);

}