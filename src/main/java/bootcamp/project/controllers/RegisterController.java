/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.controllers;

import bootcamp.project.dao.UserDao;
import bootcamp.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Panos
 */

@Controller
@RequestMapping(value = "/user")
public class RegisterController {
    
    @Autowired
    UserDao ud;
    
    @RequestMapping(value = "/preregister", method = RequestMethod.GET)
    public String register(ModelMap model) {
        User u = new User();
       model.addAttribute("user", u);
       return "register";
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String doRegister(@ModelAttribute("user")User newUser, ModelMap model) {
        ud.insertUser(newUser);
        model.addAttribute("success", "You have been successfully registered!");
        model.addAttribute("registeredUser", newUser);
        return "login";
    }
}
