package com.facultycoursemanagement.controller;

import com.facultycoursemanagement.entity.Course;
import com.facultycoursemanagement.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller  // ✅ Ensures it returns JSP views
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    // ✅ Show course registration form
    @GetMapping("/register")
    public String showCourseForm(Model model) {
        model.addAttribute("course", new Course());
        return "course-form";  // ✅ Loads WEB-INF/views/course-form.jsp
    }

    // ✅ Process course registration
    @PostMapping("/register")
    public String registerCourse(@ModelAttribute Course course) {
        courseService.saveCourse(course);
        return "redirect:/course/list";  // ✅ Redirect after saving
    }

    // ✅ Show all courses
    @GetMapping("/list")
    public String getAllCourses(Model model) {
        List<Course> courses = courseService.getAllCourses();
        model.addAttribute("courses", courses);
        return "course-list";  // ✅ Loads WEB-INF/views/course-list.jsp
    }

    // ✅ Show a single course's details
    @GetMapping("/{id}")
    public String getCourseById(@PathVariable Long id, Model model) {
        Optional<Course> course = courseService.getCourseById(id);
        if (course.isPresent()) {
            model.addAttribute("course", course.get());
            return "course-details";  // ✅ Loads WEB-INF/views/course-details.jsp
        } else {
            model.addAttribute("error", "Course not found!");
            return "error-page";  // ✅ Redirect to error page if not found
        }
    }

    // ✅ Delete a course by ID
    @GetMapping("/delete/{id}")
    public String deleteCourse(@PathVariable Long id) {
        courseService.deleteCourse(id);
        return "redirect:/course/list";  // ✅ Redirect after deletion
    }
}
