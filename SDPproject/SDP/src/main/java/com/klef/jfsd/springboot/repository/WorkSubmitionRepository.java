package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.WorkSubmition;

public interface WorkSubmitionRepository extends JpaRepository<WorkSubmition, Integer>
{
	@Query("SELECT c FROM WorkSubmition c WHERE c.applyIntenships.customer.id= ?1")
	public List<WorkSubmition>  getSubmissionBasedOnStudentId(int id);
}
