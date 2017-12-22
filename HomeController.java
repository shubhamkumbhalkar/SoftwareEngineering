package com.iitc.cs487.teamf.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.iitc.cs487.teamf.dao.HomeDAO;
import com.iitc.cs487.teamf.pojo.Home;

@Controller
@SessionAttributes("home")
public class HomeController {

       @RequestMapping(value = "/loadHome", method = RequestMethod.POST)
        public String onLoad(@ModelAttribute("home") Home home,Model model) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   int access = homeDAO.verifyLogin(home.getUsername(),home.getPassword());
    	   if(access==1) {
    		   model.addAttribute("errormsg", "Please enter valid user name");
    		   return "login";
    	   }else if(access==2) {
    		   model.addAttribute("errormsg", "Please enter valid password");
    		   return "login";
    	   }
    	   	String role = homeDAO.getRole(home.getUsername());
    	   	home.setRole(role);
    	   	String student_id = homeDAO.getStudentId(home.getUsername());
    	   	//System.out.println("Studnet Id "+student_id);
    	   	home.setStudentId(student_id);
    	   	if(role.equalsIgnoreCase("admin")) {
    	   		model.addAttribute("home", home);
                return "home_admin";
    	   	} 
    		model.addAttribute("home", home);
            return "home_student";
        }
       
       @RequestMapping(value = "/home_admin", method = RequestMethod.GET)
       public String home_admin(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "home_admin";
       }
       
       @RequestMapping(value = "/home_student", method = RequestMethod.GET)
       public String home_student(@ModelAttribute("home") Home home,Model model) {
    	  
    	   model.addAttribute("home", home);
          return "home_student";
       }
       
       @RequestMapping(value = "/course_admin", method = RequestMethod.GET)
       public String course_admin(@ModelAttribute("home") Home home,Model model) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   ArrayList<Home> allCourses = new ArrayList<Home>();
    	   allCourses = homeDAO.getAllCourses();
		   model.addAttribute("remCourses",allCourses);
    	   model.addAttribute("home", home);
          return "course_admin";
       }
       
       @RequestMapping(value = "/course_add", method = RequestMethod.POST)
       public String course_add(@ModelAttribute("home") Home home,Model model) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   homeDAO.courseAdd(home);
    	   ArrayList<Home> allCourses = new ArrayList<Home>();
    	   allCourses = homeDAO.getAllCourses();
		   model.addAttribute("remCourses",allCourses);
    	   model.addAttribute("home", home);
          return "course_admin";
       }
       
       @RequestMapping(value = "/course_remove", method = RequestMethod.GET)
       public String course_remove(@ModelAttribute("home") Home home,Model model,HttpServletRequest request) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   String courseId = request.getParameter("course_id");
    	   homeDAO.courseRemove(courseId);
    	   ArrayList<Home> allCourses = new ArrayList<Home>();
    	   allCourses = homeDAO.getAllCourses();
		   model.addAttribute("remCourses",allCourses);
    	   model.addAttribute("home", home);
          return "course_admin";
       }
       
       @RequestMapping(value = "/course_student", method = RequestMethod.GET)
       public String course_student(@ModelAttribute("home") Home home,Model model) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   ArrayList<String> courseList = new ArrayList<String>();
    	   ArrayList<Home> courseInfo = new ArrayList<Home>();
    	   courseList = homeDAO.getCoursesRegistered(home.getStudentId());
    	   courseInfo = homeDAO.getCourseInfo(courseList);
    	   model.addAttribute("courseInfo", courseInfo);
    	   if(courseList.size()!=0) {
        	   ArrayList<Home> remCourses = new ArrayList<Home>();
        	   remCourses = homeDAO.remCourses(courseList);
        	   model.addAttribute("remCourses", remCourses);
        	   }else {
        		   ArrayList<Home> allCourses = new ArrayList<Home>();
            	   allCourses = homeDAO.getAllCourses();
        		   model.addAttribute("remCourses",allCourses );
        	   }
    	   model.addAttribute("home", home);
          return "course_student";
       }
       
       @RequestMapping(value = "/add_course", method = RequestMethod.GET)
       public String add_course(HttpServletRequest request,@ModelAttribute("home") Home home,Model model) {
    	   String courseId = request.getParameter("course_id");
    	   HomeDAO homeDAO = new HomeDAO();
    	   homeDAO.addCourse(courseId,home.getStudentId());
    	   ArrayList<String> courseList = new ArrayList<String>();
    	   ArrayList<Home> courseInfo = new ArrayList<Home>();
    	   courseList = homeDAO.getCoursesRegistered(home.getStudentId());
    	   courseInfo = homeDAO.getCourseInfo(courseList);
    	   model.addAttribute("courseInfo", courseInfo);
    	   if(courseList.size()!=0) {
        	   ArrayList<Home> remCourses = new ArrayList<Home>();
        	   remCourses = homeDAO.remCourses(courseList);
        	   model.addAttribute("remCourses", remCourses);
        	   }else {
        		   ArrayList<Home> allCourses = new ArrayList<Home>();
            	   allCourses = homeDAO.getAllCourses();
        		   model.addAttribute("remCourses",allCourses );
        	   }
    	   model.addAttribute("home", home);
          return "course_student";
       }
       
       @RequestMapping(value = "/remove_course", method = RequestMethod.GET)
       public String remove_course(HttpServletRequest request,@ModelAttribute("home") Home home,Model model) {
    	   String courseId = request.getParameter("course_id");
    	   HomeDAO homeDAO = new HomeDAO();
    	   homeDAO.removeCourse(courseId,home.getStudentId());
    	   ArrayList<String> courseList = new ArrayList<String>();
    	   ArrayList<Home> courseInfo = new ArrayList<Home>();
    	   courseList = homeDAO.getCoursesRegistered(home.getStudentId());
    	   courseInfo = homeDAO.getCourseInfo(courseList);
    	   model.addAttribute("courseInfo", courseInfo);
    	   if(courseList.size()!=0) {
    	   ArrayList<Home> remCourses = new ArrayList<Home>();
    	   remCourses = homeDAO.remCourses(courseList);
    	   model.addAttribute("remCourses", remCourses);
    	   }else {
    		   ArrayList<Home> allCourses = new ArrayList<Home>();
        	   allCourses = homeDAO.getAllCourses();
    		   model.addAttribute("remCourses",allCourses );
    	   }
    	   model.addAttribute("home", home);
          return "course_student";
       }
       
       @RequestMapping(value = "/library_admin", method = RequestMethod.GET)
       public String library_admin(@ModelAttribute("home") Home home,Model model) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   ArrayList<Home> allList = new ArrayList<Home>();
    	   allList = homeDAO.getAllBooks();
    	   model.addAttribute("libInfo",allList);
    	   ArrayList<Home> regList = new ArrayList<Home>();
    	   regList = homeDAO.getAllBooksRegistered();
    	   model.addAttribute("mylib", regList);
    	   model.addAttribute("home", home);
    	   return "library_admin";
       }
       
       @RequestMapping(value = "/return_book", method = RequestMethod.GET)
       public String return_book(HttpServletRequest request,@ModelAttribute("home") Home home,Model model) {
    	   String bookId = request.getParameter("book_id");
    	   String studentId = request.getParameter("student_id");
    	   HomeDAO homeDAO = new HomeDAO();
    	   System.out.println("Student Id for return book: "+studentId);
    	   homeDAO.returnBook(bookId,studentId);
    	   ArrayList<Home> allList = new ArrayList<Home>();
    	   allList = homeDAO.getAllBooks();
    	   model.addAttribute("libInfo",allList);
    	   ArrayList<Home> regList = new ArrayList<Home>();
    	   regList = homeDAO.getAllBooksRegistered();
    	   model.addAttribute("mylib", regList);
    	   model.addAttribute("home", home);
          return "library_admin";
       }
       
       @RequestMapping(value = "/library_student", method = RequestMethod.GET)
       public String library_student(@ModelAttribute("home") Home home,Model model) {
    	  
    	   ArrayList<Home> mylib = new ArrayList<Home>();
    	   HomeDAO homeDAO = new HomeDAO();
    	   ArrayList<String> bookedList = new ArrayList<String>();
    	   bookedList = homeDAO.getBooksRegistered(home.getStudentId());
    	   mylib = homeDAO.getMylib(bookedList);
    	   model.addAttribute("mylib", mylib);
    	   if(bookedList.size()!=0) {
        	   ArrayList<Home> remBooks = new ArrayList<Home>();
        	   remBooks = homeDAO.remBooks(bookedList);
        	   model.addAttribute("libInfo", remBooks);
        	   }else {
        		   ArrayList<Home> allBooks = new ArrayList<Home>();
        		   allBooks = homeDAO.getAllBooks();
        		   model.addAttribute("libInfo",allBooks);
        	   }
    	   model.addAttribute("home", home);
          return "library_student";
       }
       
       @RequestMapping(value = "/pre_book", method = RequestMethod.GET)
       public String pre_book(HttpServletRequest request,@ModelAttribute("home") Home home,Model model) {
    	   String bookId = request.getParameter("book_id");
    	   HomeDAO homeDAO = new HomeDAO();
    	   homeDAO.addBook(bookId,home.getStudentId());
    	   ArrayList<Home> mylib = new ArrayList<Home>();
    	   ArrayList<String> bookedList = new ArrayList<String>();
    	   bookedList = homeDAO.getBooksRegistered(home.getStudentId());
    	   mylib = homeDAO.getMylib(bookedList);
    	   model.addAttribute("mylib", mylib);
    	   if(bookedList.size()!=0) {
        	   ArrayList<Home> remBooks = new ArrayList<Home>();
        	   remBooks = homeDAO.remBooks(bookedList);
        	   model.addAttribute("libInfo", remBooks);
        	   }else {
        		   ArrayList<Home> allBooks = new ArrayList<Home>();
        		   allBooks = homeDAO.getAllBooks();
        		   model.addAttribute("libInfo",allBooks);
        	   }
    	   model.addAttribute("home", home);
          return "library_student";
       }
       
       @RequestMapping(value = "/news_admin", method = RequestMethod.GET)
       public String news_admin(@ModelAttribute("home") Home home,Model model) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   ArrayList<Home> news = new ArrayList<Home>();
    	   news = homeDAO.getNews();
    	   model.addAttribute("news", news);
    	   model.addAttribute("home", home);
          return "news_admin";
       }
       
       @RequestMapping(value = "/news_add", method = RequestMethod.POST)
       public String news_add(@ModelAttribute("home") Home home,Model model) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   homeDAO.addNews(home);
    	   ArrayList<Home> news = new ArrayList<Home>();
    	   news = homeDAO.getNews();
    	   model.addAttribute("news", news);
          return "news_admin";
       }
       
       @RequestMapping(value = "/delete_news", method = RequestMethod.GET)
       public String delete_news(@ModelAttribute("home") Home home,Model model,HttpServletRequest request) {
    	   String newsId = request.getParameter("news_id");
    	   HomeDAO homeDAO = new HomeDAO();
    	   homeDAO.deleteNews(newsId);
    	   ArrayList<Home> news = new ArrayList<Home>();
    	   news = homeDAO.getNews();
    	   model.addAttribute("news", news);
    	   model.addAttribute("home", home);
    	   return "news_admin";
       }
       
       @RequestMapping(value = "/news_student", method = RequestMethod.GET)
       public String news_student(@ModelAttribute("home") Home home,Model model) {
    	   HomeDAO homeDAO = new HomeDAO();
    	   ArrayList<Home> news = new ArrayList<Home>();
    	   news = homeDAO.getNews();
    	   model.addAttribute("news", news);
          return "news_student";
       }
       
       @RequestMapping(value = "/academic_admin", method = RequestMethod.GET)
       public String academic_admin(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "academic_admin";
       }
       
       @RequestMapping(value = "/academic_student", method = RequestMethod.GET)
       public String academic_student(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "academic_student";
       }
       
       @RequestMapping(value = "/emergency_admin", method = RequestMethod.GET)
       public String emergency_admin(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "emergency_admin";
       }
       
       @RequestMapping(value = "/emergency_student", method = RequestMethod.GET)
       public String emergency_student(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "emergency_student";
       }
       
       @RequestMapping(value = "/oncampus_admin", method = RequestMethod.GET)
       public String oncampus_admin(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "oncampus_admin";
       }
       
       @RequestMapping(value = "/oncampus_student", method = RequestMethod.GET)
       public String oncampus_student(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "oncampus_student";
       }
       
       @RequestMapping(value = "/discussion_admin", method = RequestMethod.GET)
       public String discussion_admin(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "discussion_admin";
       }
       
       @RequestMapping(value = "/discussion_student", method = RequestMethod.GET)
       public String discussion_student(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "discussion_student";
       }
       
       @RequestMapping(value = "/dining_admin", method = RequestMethod.GET)
       public String dining_admin(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "dining_admin";
       }
       
       @RequestMapping(value = "/dining_student", method = RequestMethod.GET)
       public String dining_student(@ModelAttribute("home") Home home,Model model) {
    	   model.addAttribute("home", home);
          return "dining_student";
       }
       
       @ModelAttribute("home")
       public Home getHome () {
           return new Home();
       }

}
