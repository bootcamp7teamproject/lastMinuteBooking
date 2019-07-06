/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.dao;

import bootcamp.project.model.Login;
import bootcamp.project.repos.LoginRepo;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Panos
 */

@Service
public class LoginDao {
    
    @Autowired
    LoginRepo lr;
    
    public ArrayList <Login> getUsers() {
    ArrayList <Login> users = (ArrayList <Login>) lr.findAll();
    return users;
    }
}
