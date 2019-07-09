/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.dao;

import bootcamp.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bootcamp.project.repos.UserRepo;
import java.util.ArrayList;

/**
 *
 * @author Panos
 */

@Service
public class UserDao {
    
    @Autowired
    UserRepo ur;

    public ArrayList <User> getUsers() {
        ArrayList <User> users = (ArrayList <User>) ur.findAll();
        return users;
    }
    
}
