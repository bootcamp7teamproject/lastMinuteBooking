/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.dao;

import bootcamp.project.lmb.model.RoomStatus;
import bootcamp.project.lmb.repos.RoomStatusRepo;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Panos
 */

@Service
public class RoomStatusDao {
    
    @Autowired
    RoomStatusRepo rsr;

    public ArrayList <RoomStatus> getRoomStatus() {
        ArrayList <RoomStatus> roomStatus = (ArrayList <RoomStatus>) rsr.findAll();
        return roomStatus;
    }
    
}
