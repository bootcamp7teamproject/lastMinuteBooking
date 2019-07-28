<%-- 
    Document   : owner_central_js
    Created on : 27 Ιουλ 2019, 9:08:51 μμ
    Author     : minas
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 
                         $('#datepicker').datepicker({

                            format : 'YYYY-MM-dd'

                        });
                        

                    $('#btnmap').click(function () {
                        $('#Map_context').show();
                        $('#HotelList_context').hide();
                        $('#UpdateHotel_context').hide();
                        $('#AddRoom_context').hide();
                        $('#UpdateRoom_context').hide();
                        $('#DeclareUnavailability_context').hide();
                        $('#Settings_context').hide();
                        $('#AddHotel_context').hide();
                    });

                    $('#btn0').click(function () {
                        $('#Map_context').hide();
                        $('#HotelList_context').show();
                        $('#UpdateHotel_context').hide();
                        $('#AddRoom_context').hide();
                        $('#UpdateRoom_context').hide();
                        $('#DeclareUnavailability_context').hide();
                        $('#Settings_context').hide();
                        $('#AddHotel_context').hide();
                    });

                    $('#btn1').click(function () {
                        $('#Map_context').hide();
                        $('#HotelList_context').hide();
                        $('#UpdateHotel_context').hide();
                        $('#AddRoom_context').hide();
                        $('#UpdateRoom_context').hide();
                        $('#DeclareUnavailability_context').hide();
                        $('#Settings_context').hide();
                        $('#AddHotel_context').show();
                    });

                    $('#btn2').click(function () {
                        $('#Map_context').hide();
                        $('#HotelList_context').hide();
                        $('#AddHotel_context').hide();
                        $('#UpdateHotel_context').show();
                        $('#AddRoom_context').hide();
                        $('#UpdateRoom_context').hide();
                        $('#DeclareUnavailability_context').hide();
                        $('#Settings_context').hide();
                    });

                    $('#btn3').click(function () {
                        $('#Map_context').hide();
                        $('#HotelList_context').hide();
                        $('#AddHotel_context').hide();
                        $('#UpdateHotel_context').hide();
                        $('#AddRoom_context').show();
                        $('#UpdateRoom_context').hide();
                        $('#DeclareUnavailability_context').hide();
                        $('#Settings_context').hide();
                    });

                    $('#btn4').click(function () {
                        $('#Map_context').hide();
                        $('#HotelList_context').hide();
                        $('#AddHotel_context').hide();
                        $('#UpdateHotel_context').hide();
                        $('#AddRoom_context').hide();
                        $('#UpdateRoom_context').show();
                        $('#DeclareUnavailability_context').hide();
                        $('#Settings_context').hide();
                    });

                    $('#btn5').click(function () {
                        $('#Map_context').hide();
                        $('#HotelList_context').hide();
                        $('#AddHotel_context').hide();
                        $('#UpdateHotel_context').hide();
                        $('#AddRoom_context').hide();
                        $('#UpdateRoom_context').hide();
                        $('#DeclareUnavailability_context').show();
                        $('#Settings_context').hide();
                    });

                    $('#btn6').click(function () {
                        $('#Map_context').hide();
                        $('#HotelList_context').hide();
                        $('#AddHotel_context').hide();
                        $('#UpdateHotel_context').hide();
                        $('#AddRoom_context').hide();
                        $('#UpdateRoom_context').hide();
                        $('#DeclareUnavailability_context').hide();
                        $('#Settings_context').show();
                    });


                    var nameUH = document.getElementById("nameUH");
                    var hotelnamesel = document.getElementById("selectUH_hotel");
                    var destinationUH = document.getElementById("destinationUH");
                    var addressUH = document.getElementById("addressUH");
                    var postcodeUH = document.getElementById("postcodeUH");
                    var urlUH = document.getElementById("urlUH");
                    var phoneUH = document.getElementById("phoneUH");
                    var emailUH = document.getElementById("emailUH");
                    var longtitudeUH = document.getElementById("longtitudeUH");
                    var latitudeUH = document.getElementById("latitudeUH");
                    var imagespathUH = document.getElementById("imagespathUH");
                    var descriptionUH = document.getElementById("descriptionUH");
                    var starsnumberUH = document.getElementById("starsnumberUH");
                    var deleteHotelUH = document.getElementById("deleteHotelUH");
                    


                    var roomidsel = document.getElementById("roomidsel");
                    var hotelidsel = document.getElementById("hotelidsel");
                    var RoomName = document.getElementById("RoomName");
                    var MaxCapacity = document.getElementById("MaxCapacity");
                    var Price = document.getElementById("Price");
                    var descriptionUR = document.getElementById("descriptionUR");
                    var deleteRoomUR = document.getElementById("deleteRoomUR");


                    document.querySelector("#selectUH_hotel").addEventListener("click", function () {
                        updatehotel();

                    });

                    function updatehotel() {
                            <c:forEach items = "${hotels}" var = "hotel">
                            
                        if (hotelnamesel.value == "${hotel.id}") {
                            nameUH.value = "${hotel.name}" ;
                            destinationUH.value = "${hotel.destinationid.id}";
                            console.log("${hotel.destinationid}");
                            addressUH.value = "${hotel.address}";
                            postcodeUH.value = "${hotel.postcode}";
                            urlUH.value = "${hotel.siteurl}";
                            phoneUH.value = "${hotel.phone}";
                            emailUH.value = "${hotel.email}";
                            longtitudeUH.value = "${hotel.longtitude}";
                            latitudeUH.value = "${hotel.latitude}";
                            imagespathUH.value = "${hotel.imagespath}";
                            descriptionUH.value = "${hotel.description}";
                            starsnumberUH.value = "${hotel.starsnumber}";
                            deleteHotelUH.href = "/owner/deletehotel/"+hotelnamesel.value ;

                            document.getElementById("FreeWifiUH").checked = false;
                            document.getElementById("Non-smokingroomUH").checked = false;
                            document.getElementById("FamilyRoomsUH").checked = false;
                            document.getElementById("ParkingUH").checked = false;
                            document.getElementById("PetsallowedUH").checked = false;
                            document.getElementById("SwimmingpoolUH").checked = false;
                            document.getElementById("SpaandwellnesscenterUH").checked = false;
                            document.getElementById("BarUH").checked = false;

                                <c:forEach items = "${hotelFacilities}" var = "hotelFacilities">
                            if ("${hotelFacilities.hotel.id}" == hotelnamesel.value) {
                                if ("${hotelFacilities.facilities.id}" == 1) {
                                    document.getElementById("FreeWifiUH").checked = true;
                                }
                                if ("${hotelFacilities.facilities.id}" == 2) {
                                    document.getElementById("Non-smokingroomUH").checked = true;
                                }
                                if ("${hotelFacilities.facilities.id}" == 3) {
                                    document.getElementById("FamilyRoomsUH").checked = true;
                                }
                                if ("${hotelFacilities.facilities.id}" == 5) {
                                    document.getElementById("ParkingUH").checked = true;
                                }
                                if ("${hotelFacilities.facilities.id}" == 6) {
                                    document.getElementById("PetsallowedUH").checked = true;
                                }
                                if ("${hotelFacilities.facilities.id}" == 8) {
                                    document.getElementById("SwimmingpoolUH").checked = true;
                                }
                                if ("${hotelFacilities.facilities.id}" == 9) {
                                    document.getElementById("SpaandwellnesscenterUH").checked = true;
                                }
                                if ("${hotelFacilities.facilities.id}" == 10) {
                                    document.getElementById("BarUH").checked = true;
                                }
                            }
                                </c:forEach>
                        }
                            </c:forEach>
                    }
                    ;


                    document.querySelector("#roomidsel").addEventListener("change", function () {
                        updateroom();

                    });
                    document.querySelector("#hotelidsel").addEventListener("change", function () {
                        updateroomnames();

                    });

                    function updateroomnames() {

                        for (var i = 0; i < roomidsel.length; i++) {

                            roomidsel.options[i].style.display = "block";

                        }

                        RoomName.value = " ";
                        MaxCapacity.value = " ";
                        Price.value = " ";
                        descriptionUR.value = " ";
                        roomidsel.value = " ";

                        document.getElementById("KitchenUR").checked = false;
                        document.getElementById("PrivatebathroomUR").checked = false;
                        document.getElementById("AirconditioningUR").checked = false;
                        document.getElementById("BathUR").checked = false;
                        document.getElementById("FlatscreenTVUR").checked = false;
                        document.getElementById("WashingMachineUR").checked = false;
                        document.getElementById("ViewUR").checked = false;
                        document.getElementById("CoffeeteamakerUR").checked = false;
                        document.getElementById("CoffeemachineUR").checked = false;
                        document.getElementById("ElectrickettleUR").checked = false;
                        document.getElementById("DoublebedUR").checked = false;
                        document.getElementById("SingleBedUR").checked = false;

                            <c:forEach items = "${rooms}" var = "room">
                        if (("${room.hotelid.id}") != hotelidsel.value) {

                            for (var i = 0; i < roomidsel.length; i++) {
                                if (roomidsel.options[i].value == "${room.id}") {

                                    roomidsel.options[i].style.display = "none";
                                }
                            }
                        }
                            </c:forEach>


                    }
                    ;

                    function updateroom() {



                            <c:forEach items = "${rooms}" var = "room">
                        if (roomidsel.value == "${room.id}") {
                            RoomName.value = "${room.name}";
                            MaxCapacity.value = "${room.capacity}";
                            Price.value = "${room.pricepernight}";
                            descriptionUR.value = "${room.description}";
                            deleteRoomUR.href = "/owner/deleteroom/"+roomidsel.value ;
                            
                            document.getElementById("KitchenUR").checked = false;
                            document.getElementById("PrivatebathroomUR").checked = false;
                            document.getElementById("AirconditioningUR").checked = false;
                            document.getElementById("BathUR").checked = false;
                            document.getElementById("FlatscreenTVUR").checked = false;
                            document.getElementById("WashingMachineUR").checked = false;
                            document.getElementById("ViewUR").checked = false;
                            document.getElementById("CoffeeteamakerUR").checked = false;
                            document.getElementById("CoffeemachineUR").checked = false;
                            document.getElementById("ElectrickettleUR").checked = false;
                            document.getElementById("DoublebedUR").checked = false;
                            document.getElementById("SingleBedUR").checked = false;

                                <c:forEach items = "${roomEquipments}" var = "roomEquipments">
                            if ("${roomEquipments.room.id}" == roomidsel.value) {
                                if ("${roomEquipments.equipment.id}" == 1) {
                                    document.getElementById("KitchenUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 2) {
                                    document.getElementById("PrivatebathroomUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 3) {
                                    document.getElementById("AirconditioningUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 4) {
                                    document.getElementById("BathUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 5) {
                                    document.getElementById("FlatscreenTVUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 6) {
                                    document.getElementById("WashingMachineUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 7) {
                                    document.getElementById("ViewUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 8) {
                                    document.getElementById("CoffeeteamakerUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 9) {
                                    document.getElementById("CoffeemachineUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 10) {
                                    document.getElementById("ElectrickettleUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 11) {
                                    document.getElementById("DoublebedUR").checked = true;
                                }
                                if ("${roomEquipments.equipment.id}" == 12) {
                                    document.getElementById("SingleBedUR").checked = true;
                                }

                            }
                                </c:forEach>
                        }
                            </c:forEach>
                    }
                    ;

                    document.querySelector("#btnmap").addEventListener("click", function () {
                        myMap();

                    });

                    function myMap() {
                        var options = {
                            zoom: 6,
                            center: {lat: 37.9838, lng: 23.7275}
                        }

                        var map = new google.maps.Map(document.getElementById('map'), options);

                            <c:forEach items = "${hotels}" var = "hotel">
                        addMarker({coords: {lat:${hotel.longtitude}, lng:${hotel.latitude}},
                            content: '<h1>${hotel.name}</h1>'
                        });
                            </c:forEach>

                        function addMarker(props) {
                            var marker = new google.maps.Marker({
                                position: props.coords,
                                map: map
                            });

                            if (props.content) {
                                var infoWindow = new google.maps.InfoWindow({
                                    content: props.content

                                });
                                marker.addListener('click', function () {
                                    infoWindow.open(map, marker);
                                });
                            }
                        }
                    }}



