/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.dao;

import bootcamp.project.lmb.model.Room;
import bootcamp.project.lmb.repos.RoomRepo;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Panos
 */

@Service
public class RoomDao {
    
    @Autowired
    RoomRepo rr;

    public ArrayList <Room> getRooms() {
        ArrayList <Room> rooms = (ArrayList <Room>) rr.findAll();
        return rooms;
    }

}
