/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.repos;

import bootcamp.project.lmb.model.Hotel;
import java.util.Date;
import java.util.ArrayList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Panos
 */
@Repository
public interface HotelRepo extends JpaRepository <Hotel, Integer> {

    @Query(
        value = "select distinct h.* from hotel h\n" +
                "inner join room r on r.hotel_id = h.id\n" +
                "inner join destination d on h.destination_id = d.id\n" +
                "where :budget > d.ticket_cost + (r.price_per_night*:nights)\n" +
                "and r.id in\n" +
                "(select r.id from room r\n" +
                "inner join room_unavailability ru on ru.room_id=r.id\n" +
                "where (\n" +
                "r.capacity = :persons\n" +
                "and ((ru.start_date > :checkin and ru.start_date > :checkout)\n" +
                "or (ru.end_date < :checkin and ru.end_date < :checkout)\n" +
                ")))",
        nativeQuery = true
    )
    ArrayList <Hotel> findSearchHotels(@Param("budget") Integer budget, @Param("nights") Integer nights, @Param("persons") Integer persons,
                                       @Param("checkin") Date checkin, @Param("checkout") Date checkout);
}
