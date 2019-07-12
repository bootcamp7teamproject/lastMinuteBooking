/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.controllers;

import bootcamp.project.lmb.dao.RoleDao;
import bootcamp.project.lmb.dao.UserDao;
import bootcamp.project.lmb.model.Role;
import bootcamp.project.lmb.model.User;
import java.util.ArrayList;
import java.util.Base64;
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
    
    @Autowired
    RoleDao rd;
    
    public static Base64.Encoder encoder = Base64.getEncoder();
    
    @RequestMapping(value = "/preregister", method = RequestMethod.GET)
    public String register(ModelMap model) {
        User u = new User();
       model.addAttribute("user", u);
       return "register";
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String doRegister(@ModelAttribute("user")User newUser, ModelMap model) {
        String encryptedPassword = new String(encoder.encode(newUser.getPassword().getBytes()));
        newUser.setPassword(encryptedPassword);
        ArrayList <Role> roles = rd.getRoles();
        newUser.setRole(roles.get(0));
        ud.insertUser(newUser);
        model.addAttribute("success", "You have been successfully registered!");
        return "login";
    }
}
