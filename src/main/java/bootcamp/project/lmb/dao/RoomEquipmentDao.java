/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.dao;
import bootcamp.project.lmb.repos.RoomEquipmentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 *
 * @author minas
 */
@Service
public class RoomEquipmentDao {
    
    @Autowired
    RoomEquipmentRepo rer;
    
    public void insertRoomEquipment(int roomid, int hotelid, int equipmentid ) {
        rer.insertRoomEquipment(roomid, hotelid, equipmentid);
        
    }
    
    public void deleteRoomEquipment(int roomid) {
        rer.deleteRoomEquipment(roomid);   
    }
    
}