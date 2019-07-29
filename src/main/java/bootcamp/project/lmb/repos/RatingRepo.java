/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.repos;

import bootcamp.project.lmb.model.Rating;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Panos
 */

@Repository
@Transactional
public interface RatingRepo extends JpaRepository <Rating, Integer> {
    
    @Modifying
    @Query(value="insert into rating(User_id,Hotel_id ,Customer_rating,Comments) values ( ?1 , ?2 , ?3 , ?4) ;", nativeQuery=true)
    void insertRating(int userid,int hotelid,float rating, String Comments);
}
