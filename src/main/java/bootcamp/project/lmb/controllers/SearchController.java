/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.controllers;

import bootcamp.project.lmb.dao.HotelDao;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Panos
 */

@Controller
@RequestMapping(value = "/user")
public class SearchController {
    
    @Autowired
    HotelDao hd;
    
    @PostMapping("/search")
    public String fetchHotels(HttpSession session,@RequestParam("budget") Integer budget, @RequestParam("persons") Integer persons,
                                @RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        LocalDate checkIn = sdf.parse(checkin).toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        LocalDate checkOut = sdf.parse(checkout).toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        Integer nights = checkOut.getDayOfYear() - checkIn.getDayOfYear();             
        session.setAttribute("searchHotels", hd.getUserSearchHotels(budget, nights, persons, sdf.parse(checkin), sdf.parse(checkout)));
        return "search_central";
    }
}
