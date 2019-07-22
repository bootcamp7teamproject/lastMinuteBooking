/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.controllers;

import bootcamp.project.lmb.dao.DestinationDao;
import bootcamp.project.lmb.dao.HotelDao;
import bootcamp.project.lmb.dao.HotelFacilitiesDao;
import bootcamp.project.lmb.dao.RoomDao;
import bootcamp.project.lmb.dao.RoomEquipmentDao;
import bootcamp.project.lmb.dao.UserDao;
import bootcamp.project.lmb.model.Destination;
import bootcamp.project.lmb.model.Hotel;
import bootcamp.project.lmb.model.Room;
import bootcamp.project.lmb.model.User;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author minas
 */
@Controller
@SessionAttributes({"loggedUser", "hotels"})
@RequestMapping(value = "/owner")
public class OwnerController {

    @Autowired
    UserDao ud;

    @Autowired
    HotelDao hd;

    @Autowired
    DestinationDao dd;

    @Autowired
    HotelFacilitiesDao hfd;

    @Autowired
    RoomDao rd;

    @Autowired
    RoomEquipmentDao red;

    @GetMapping("/owner_central")
    public String ownerServices(ModelMap model, HttpSession session) {
        Hotel newhotel = new Hotel();
        Hotel updatehotel = new Hotel();
        Room newroom = new Room();
        Room updateroom = new Room();
        User updateUser = new User();

        session.setAttribute("destinations", dd.getDestinations());
        model.addAttribute("newhotel", newhotel);
        model.addAttribute("updatehotel", updatehotel);
        model.addAttribute("newroom", newroom);
        model.addAttribute("updateroom", updateroom);
        model.addAttribute("updateUser", updateUser);

        return "owner_central";
    }

    @PostMapping("/addHotel")
    public String ownerAddHotel(ModelMap model,
            @ModelAttribute("newhotel") Hotel hotel,
            @ModelAttribute("loggedUser") User user,
            @RequestParam(value = "FamilyRooms", required = false, defaultValue = "false") boolean FamilyRooms,
            @RequestParam(value = "FreeWifi", required = false, defaultValue = "false") boolean FreeWifi,
            @RequestParam(value = "Nonsmokingroom", required = false, defaultValue = "false") boolean Nonsmokingroom,
            @RequestParam(value = "Parking", required = false, defaultValue = "false") boolean Parking,
            @RequestParam(value = "Petsallowed", required = false, defaultValue = "false") boolean Petsallowed,
            @RequestParam(value = "Swimmingpool", required = false, defaultValue = "false") boolean Swimmingpool,
            @RequestParam(value = "Spaandwellnesscenter", required = false, defaultValue = "false") boolean Spaandwellnesscenter,
            @RequestParam(value = "Bar", required = false, defaultValue = "false") boolean Bar
    ) {

//        Insert hotel
        hotel.setOwnerid(user);
       
        hd.insertHotel(hotel);
//        ------------

//        Insert HotelFacilities
        Hotel newhotel = hd.getHotelsByUserIdandName(user.getId(), hotel.getName());

        if (FreeWifi) {
            hfd.insertHotelFacilities(newhotel.getId(), 1);
        }
        if (Nonsmokingroom) {
            hfd.insertHotelFacilities(newhotel.getId(), 2);
        }
        if (FamilyRooms) {
            hfd.insertHotelFacilities(newhotel.getId(), 3);
        }
        if (Parking) {
            hfd.insertHotelFacilities(newhotel.getId(), 5);
        }
        if (Petsallowed) {
            hfd.insertHotelFacilities(newhotel.getId(), 6);
        }
        if (Swimmingpool) {
            hfd.insertHotelFacilities(newhotel.getId(), 8);
        }
        if (Spaandwellnesscenter) {
            hfd.insertHotelFacilities(newhotel.getId(), 9);
        }
        if (Bar) {
            hfd.insertHotelFacilities(newhotel.getId(), 10);
        }
//        ------------

        return "owner_central";
    }

    @PostMapping("/updateHotel")
    public String ownerUpdateHotel(ModelMap model,
            @ModelAttribute("updatehotel") Hotel hotel,
            @ModelAttribute("loggedUser") User user,
            @RequestParam(value = "FamilyRooms", required = false, defaultValue = "false") boolean FamilyRooms,
            @RequestParam(value = "FreeWifi", required = false, defaultValue = "false") boolean FreeWifi,
            @RequestParam(value = "Nonsmokingroom", required = false, defaultValue = "false") boolean Nonsmokingroom,
            @RequestParam(value = "Parking", required = false, defaultValue = "false") boolean Parking,
            @RequestParam(value = "Petsallowed", required = false, defaultValue = "false") boolean Petsallowed,
            @RequestParam(value = "Swimmingpool", required = false, defaultValue = "false") boolean Swimmingpool,
            @RequestParam(value = "Spaandwellnesscenter", required = false, defaultValue = "false") boolean Spaandwellnesscenter,
            @RequestParam(value = "Bar", required = false, defaultValue = "false") boolean Bar
    ) {

//        Insert hotel
//        hotel.setOwnerid(user.getId());
        Destination destination = dd.getDestinationById(2);
        hotel.setDestinationid(destination);

        hd.insertHotel(hotel);
//        ------------

//        Delete HotelFacilities with hotelId
        hfd.deleteHotelFacilities(hotel.getId());
//        ------------

//        Insert HotelFacilities
        if (FreeWifi) {
            hfd.insertHotelFacilities(hotel.getId(), 1);
        }
        if (Nonsmokingroom) {
            hfd.insertHotelFacilities(hotel.getId(), 2);
        }
        if (FamilyRooms) {
            hfd.insertHotelFacilities(hotel.getId(), 3);
        }
        if (Parking) {
            hfd.insertHotelFacilities(hotel.getId(), 5);
        }
        if (Petsallowed) {
            hfd.insertHotelFacilities(hotel.getId(), 6);
        }
        if (Swimmingpool) {
            hfd.insertHotelFacilities(hotel.getId(), 8);
        }
        if (Spaandwellnesscenter) {
            hfd.insertHotelFacilities(hotel.getId(), 9);
        }
        if (Bar) {
            hfd.insertHotelFacilities(hotel.getId(), 10);
        }
//        ------------

        return "owner_central";
    }

    @PostMapping("/addRoom")
    public String ownerAddRoom(ModelMap model,
            @ModelAttribute("newRoom") Room room,
            @ModelAttribute("loggedUser") User user,
            @RequestParam("Kitchen") boolean Kitchen,
            @RequestParam(value = "Privatebathroom", required = false, defaultValue = "false") boolean Privatebathroom,
            @RequestParam(value = "AirConditioning", required = false, defaultValue = "false") boolean AirConditioning,
            @RequestParam(value = "Bath", required = false, defaultValue = "false") boolean Bath,
            @RequestParam(value = "FlatscreenTV", required = false, defaultValue = "false") boolean FlatscreenTV,
            @RequestParam(value = "WashingMachine", required = false, defaultValue = "false") boolean WashingMachine,
            @RequestParam(value = "View", required = false, defaultValue = "false") boolean View,
            @RequestParam(value = "CoffeeteaMaker", required = false, defaultValue = "false") boolean CoffeeteaMaker,
            @RequestParam(value = "CoffeeMachine", required = false, defaultValue = "false") boolean CoffeeMachine,
            @RequestParam(value = "Electrickettle", required = false, defaultValue = "false") boolean Electrickettle,
            @RequestParam(value = "DoubleBed", required = false, defaultValue = "false") boolean DoubleBed,
            @RequestParam(value = "SingleBed", required = false, defaultValue = "false") boolean SingleBed
    ) {

        //        Insert hotel

        rd.insertRoom(room);
        //        ------------

        //        Insert RoomEquipment
         Room newroom = rd.getRoomByUserIdandName(user.getId(), room.getName());
         
        if (Kitchen) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 1);
        }
        if (Privatebathroom) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 2);
        }
        if (AirConditioning) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 3);
        }
        if (Bath) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 4);
        }
        if (FlatscreenTV) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 5);
        }
        if (WashingMachine) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 6);
        }
        if (View) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 7);
        }
        if (CoffeeteaMaker) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 8);
        }
        if (CoffeeMachine) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 9);
        }
        if (Electrickettle) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 10);
        }
        if (DoubleBed) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 11);
        }
        if (SingleBed) {
            red.insertRoomEquipment(newroom.getId(),room.getHotelid().getId(), 12);
        }
        
        return "owner_central";
    }

    @PostMapping("/updateRoom")
    public String ownerUpdateRoom(ModelMap model,
            @ModelAttribute("updateRoom") Room room,
            @ModelAttribute("loggedUser") User user,
            @RequestParam(value = "Kitchen", required = false, defaultValue = "false") boolean Kitchen,
            @RequestParam(value = "Privatebathroom", required = false, defaultValue = "false") boolean Privatebathroom,
            @RequestParam(value = "AirConditioning", required = false, defaultValue = "false") boolean AirConditioning,
            @RequestParam(value = "Bath", required = false, defaultValue = "false") boolean Bath,
            @RequestParam(value = "FlatscreenTV", required = false, defaultValue = "false") boolean FlatscreenTV,
            @RequestParam(value = "WashingMachine", required = false, defaultValue = "false") boolean WashingMachine,
            @RequestParam(value = "View", required = false, defaultValue = "false") boolean View,
            @RequestParam(value = "CoffeeteaMaker", required = false, defaultValue = "false") boolean CoffeeteaMaker,
            @RequestParam(value = "CoffeeMachine", required = false, defaultValue = "false") boolean CoffeeMachine,
            @RequestParam(value = "Electrickettle", required = false, defaultValue = "false") boolean Electrickettle,
            @RequestParam(value = "DoubleBed", required = false, defaultValue = "false") boolean DoubleBed,
            @RequestParam(value = "SingleBed", required = false, defaultValue = "false") boolean SingleBed
    ) {

        //        Insert hotel

        rd.insertRoom(room);
        //        ------------

        //        Delete RoomEquipment
        red.deleteRoomEquipment(room.getId());

        //        Insert RoomEquipment
       if (Kitchen) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 1);
        }
        if (Privatebathroom) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 2);
        }
        if (AirConditioning) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 3);
        }
        if (Bath) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 4);
        }
        if (FlatscreenTV) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 5);
        }
        if (WashingMachine) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 6);
        }
        if (View) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 7);
        }
        if (CoffeeteaMaker) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 8);
        }
        if (CoffeeMachine) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 9);
        }
        if (Electrickettle) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 10);
        }
        if (DoubleBed) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 11);
        }
        if (SingleBed) {
            red.insertRoomEquipment(room.getId(),room.getHotelid().getId(), 12);
        }

        return "owner_central";
    }

    @PostMapping("/settings")
    public String ownerUpdateRoom(ModelMap model,
            @ModelAttribute("updateUser") User updateUser,
            @ModelAttribute("loggedUser") User user
    ) {

        ud.insertUser(updateUser);

        return "owner_central";
    }

}
