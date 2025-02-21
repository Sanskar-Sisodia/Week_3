package com.facultycoursemanagement.controller;

import com.facultycoursemanagement.entity.Faculty;
import com.facultycoursemanagement.entity.FacultyCourse;
import com.facultycoursemanagement.service.FacultyService;
import com.facultycoursemanagement.service.CourseService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller  // ✅ Use @Controller to return JSP views
@RequestMapping("/faculty")
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    @Autowired
    private CourseService courseService;

    // ✅ Show faculty registration form
    @GetMapping("/register")
    public String showFacultyForm(Model model) {
        model.addAttribute("faculty", new Faculty());
        return "faculty-form"; // ✅ Renders WEB-INF/views/faculty-form.jsp
    }

    // ✅ Process faculty registration
    @PostMapping("/register")
    public String registerFaculty(@ModelAttribute Faculty faculty) {
        facultyService.saveFaculty(faculty);
        return "redirect:/faculty/list"; // ✅ Redirect to faculty list page
    }

    // ✅ Show list of faculties
    @GetMapping("/list")
    public String getAllFaculties(Model model) {
        List<Faculty> facultyList = facultyService.getAllFaculties();
        model.addAttribute("faculties", facultyList);
        return "faculty-list"; // ✅ Renders WEB-INF/views/faculty-list.jsp
    }

    // ✅ Show assign course form
    @GetMapping("/assign-course")
    public String showAssignCoursePage(Model model) {
        model.addAttribute("faculties", facultyService.getAllFaculties());
        model.addAttribute("courses", courseService.getAllCourses());
        return "assign-course"; // ✅ Renders WEB-INF/views/assign-course.jsp
    }

    // ✅ Process assigning course to faculty
    @PostMapping("/assign-course")
    public String assignCourse(@RequestParam Long facultyId, @RequestParam Long courseId) {
        facultyService.assignCourseToFaculty(facultyId, courseId);
        return "redirect:/faculty/list"; // ✅ Redirect after assigning
    }

    // ✅ Show assigned courses for a faculty
    @GetMapping("/{facultyId}/courses")
    public String getAssignedCourses(@PathVariable Long facultyId, Model model) {
        List<FacultyCourse> assignedCourses = facultyService.getAssignedCourses(facultyId);
        model.addAttribute("assignedCourses", assignedCourses);
        return "faculty-courses"; // ✅ Renders WEB-INF/views/faculty-courses.jsp
    }
}
