package com.iitc.cs487.teamf.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iitc.cs487.teamf.pojo.Home;

@Controller
public class HelloController {

       @RequestMapping(value = "/login", method = RequestMethod.GET)
        public String handle(@ModelAttribute("home") Home home,Model model) {
    	   //System.out.println("Hello");
    	   model.addAttribute("home", home);
           return "login";
        }
       
       @RequestMapping(value = "/logout", method = RequestMethod.GET)
       public String logout(@ModelAttribute("home") Home home,Model model) {
   	   //System.out.println("logout");
   	   model.addAttribute("home", home);
          return "login";
       }
       
}
