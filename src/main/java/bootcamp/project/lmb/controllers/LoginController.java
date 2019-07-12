/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.controllers;


import bootcamp.project.lmb.dao.UserDao;
import bootcamp.project.lmb.model.User;
import java.util.ArrayList;
import java.util.Base64;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Panos
 */

@Controller
@RequestMapping(value = "/user")
public class LoginController {
    
    @Autowired
    UserDao ud;
    
    public static Base64.Decoder decoder = Base64.getDecoder();
    
    @GetMapping("/prelogin")
    public String login(ModelMap model) {
       User u = new User();
       model.addAttribute("user", u);
       return "login";
    }
    
    @PostMapping("/login")
    public String doLogin(@ModelAttribute("user")User loginUser, ModelMap model, HttpSession session) {
        ArrayList <User> users = ud.getUsers();
        for (User user : users) {
//            String decryptedPassword = new String(decoder.decode(user.getPassword().getBytes()));
            if(user.getUsername().equals(loginUser.getUsername()) && user.getPassword().equals(loginUser.getPassword())) {
                session.setAttribute("loggedUser", loginUser);
                switch (user.getRole().getId()) {
                        case 1:                           
                            return "entry";
                        case 2:
                            return "success";
                }
            }
        }
        return "failure";
    }
    
    
}
