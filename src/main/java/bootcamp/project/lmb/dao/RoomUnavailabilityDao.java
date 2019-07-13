/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.dao;

import bootcamp.project.lmb.model.RoomUnavailability;
import bootcamp.project.lmb.repos.RoomUnavailabilityRepo;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Panos
 */

@Service
public class RoomUnavailabilityDao {
    
    @Autowired
    RoomUnavailabilityRepo rur;

    public ArrayList <RoomUnavailability> getRoomUnavailability() {
        ArrayList <RoomUnavailability> RoomUnavailability = (ArrayList <RoomUnavailability>) rur.findAll();
        return RoomUnavailability;
    }
}
