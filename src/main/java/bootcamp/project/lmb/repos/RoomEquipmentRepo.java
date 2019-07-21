/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.repos;
import bootcamp.project.lmb.model.Room;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
/**
 *
 * @author minas
 */
@Repository
@Transactional
public interface RoomEquipmentRepo extends JpaRepository<Room, Integer> {
    @Modifying
    @Query(value = "insert into room_equipment(Room_id , Hotel_id , Equipment_id ) values ( ?1 , ?2 , ?3 ) ;", nativeQuery = true)
    void insertRoomEquipment(Integer roomid, Integer hotelid, Integer equipmentid);
    @Modifying
    @Query(value = "delete from room_equipment where Room_id=?1 ;", nativeQuery = true)
    void deleteRoomEquipment(Integer roomid);
}