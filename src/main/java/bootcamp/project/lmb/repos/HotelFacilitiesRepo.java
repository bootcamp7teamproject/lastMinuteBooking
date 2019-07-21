/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.repos;
import bootcamp.project.lmb.model.HotelFacilities;
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
public interface HotelFacilitiesRepo extends JpaRepository <HotelFacilities, Integer> {
    
    @Modifying
    @Query(value="insert into hotel_facilities(Hotel_id , Facility_id) values ( ?1 , ?2 ) ;", nativeQuery=true)
    void insertHotelFacilities(int hotelid, int facilityid);
    
    @Modifying
    @Query(value="delete from hotel_facilities where Hotel_id=?1 ;", nativeQuery=true)
    void deleteHotelFacilities(Integer hotelid);
    
}