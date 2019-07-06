/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.controllers;

import bootcamp.project.dao.LoginDao;
import bootcamp.project.model.Login;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Panos
 */

@Controller
public class LoginController {
    
    @Autowired
    LoginDao ld;
    
    @PostMapping("/login")
    public String login(@ModelAttribute("login")Login userInput) {
        ArrayList <Login> users = ld.getUsers();
        for (Login user : users) {
            if(!(user.getUsername().equals(userInput.getUsername()) && user.getPassword().equals(userInput.getPassword())))
                return "failure";   
        }
        return "success";
    }
}
