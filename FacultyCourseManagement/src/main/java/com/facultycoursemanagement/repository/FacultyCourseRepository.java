package com.facultycoursemanagement.repository;

import com.facultycoursemanagement.entity.FacultyCourse;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface FacultyCourseRepository extends JpaRepository<FacultyCourse, Long> {
    List<FacultyCourse> findByFacultyId(Long facultyId);
}
