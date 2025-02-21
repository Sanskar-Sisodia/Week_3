package com.facultycoursemanagement.service;

import com.facultycoursemanagement.entity.Course;
import com.facultycoursemanagement.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class CourseService {

    @Autowired
    private CourseRepository courseRepository;

    // Get all courses
    public List<Course> getAllCourses() {
        return courseRepository.findAll();
    }

    // Get course by ID
    public Optional<Course> getCourseById(Long id) {
        return courseRepository.findById(id);
    }

    // Save (Add or Update) a course
    public Course saveCourse(Course course) {
        return courseRepository.save(course);
    }

    // Delete a course by ID
    public String deleteCourse(Long id) {
        if (courseRepository.existsById(id)) {
            courseRepository.deleteById(id);
            return "Course deleted successfully!";
        } else {
            return "Course not found!";
        }
    }
}
