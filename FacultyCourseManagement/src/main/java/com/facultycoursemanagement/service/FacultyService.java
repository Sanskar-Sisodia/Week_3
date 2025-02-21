package com.facultycoursemanagement.service;

import com.facultycoursemanagement.entity.Faculty;
import com.facultycoursemanagement.entity.FacultyCourse;
import com.facultycoursemanagement.entity.Course;
import com.facultycoursemanagement.repository.FacultyRepository;
import com.facultycoursemanagement.repository.FacultyCourseRepository;
import com.facultycoursemanagement.repository.CourseRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;

    @Autowired
    private CourseRepository courseRepository;

    @Autowired
    private FacultyCourseRepository facultyCourseRepository;

    // Get all faculties
    public List<Faculty> getAllFaculties() {
        return facultyRepository.findAll();
    }

    // Save faculty
    public Faculty saveFaculty(Faculty faculty) {
        return facultyRepository.save(faculty);
    }

    // Assign Course to Faculty
    public String assignCourseToFaculty(Long facultyId, Long courseId) {
        Optional<Faculty> faculty = facultyRepository.findById(facultyId);
        Optional<Course> course = courseRepository.findById(courseId);

        if (faculty.isPresent() && course.isPresent()) {
            FacultyCourse facultyCourse = new FacultyCourse();
            facultyCourse.setFaculty(faculty.get());
            facultyCourse.setCourse(course.get());
            facultyCourseRepository.save(facultyCourse);
            return "Course assigned successfully!";
        } else {
            return "Faculty or Course not found!";
        }
    }

    // Get assigned courses for a faculty
    public List<FacultyCourse> getAssignedCourses(Long facultyId) {
        return facultyCourseRepository.findByFacultyId(facultyId);
    }
}
