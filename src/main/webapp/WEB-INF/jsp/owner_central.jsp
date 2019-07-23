<%-- 
    Document   : owner_central
    Created on : Jul 6, 2019, 2:48:58 PM
    Author     : Panos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage your hotels</title>
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
              integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
              crossorigin=""/>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../resources/css/owner_central.css">

        <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
                integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
                crossorigin="">
        </script>
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDt8otviU1hSrLQenHKOgpOVH8yUZl2LUI&callback=myMap"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    </head>

    <body>

        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-lg navbar-light bg-navy">
            <a class="navbar-brand"><img src='../resources/media/logo.jpg'></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <!-- <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li>
               
                <li class="nav-item">
                  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li> -->
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <ul class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Welcome, ${sessionScope.loggedUser.name} ${sessionScope.loggedUser.surname}
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">View your profile</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/user/logout">Sign out</a>
                        </div>
                    </ul>
                </form>
            </div>
        </nav>

        <!--        <div class ="container" id="hotelsmap" style="height: 80vh"></div>
        
                <script>
        
                    var mymap = L.map('hotelsmap').setView([38.632353, 22.851563], 7);
        
        <%--<c:forEach items = "${hotels}" var = "hotel">--%>
            var currenthotel = L.marker([${hotel.longtitude}, ${hotel.latitude}]).addTo(mymap);
            currenthotel.bindPopup("${hotel.name}");
        <%--</c:forEach>--%>

        L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
            maxZoom: 18,
            id: 'mapbox.streets',
            accessToken: 'pk.eyJ1IjoiYW5kcm84OSIsImEiOiJjanhkZjRubHIwYWF4M3puemh1bzlmazd5In0.EFiEAz-JFSR5bw4cE2HE5w'
        }).addTo(mymap);
    </script>-->
        <div class="container">
            <div class="row">

                <aside class="col-md-2 col-sm-2 col-xs-2" style="padding-top: 35px;">
                    <!-- <h1><span class="badge badge-primary bg-navy custom">&nbspServices&nbsp&nbsp</span></h1> -->
                    <ul class="list-group border-color-navy rounded">
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy disabled"> <button
                                id="btn" class="btn btn-primary custom" type="button" data-toggle="collapse"
                                data-target="#multiCollapseExample1" aria-expanded="false"
                                aria-controls="multiCollapseExample1">
                                <h2><strong>Services</strong></h2>
                            </button></li><li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btnmap"
                                                                                                                            class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                                            data-target="#multiCollapseExamplemap" aria-expanded="false"
                                                                                                                            aria-controls="multiCollapseExamplemap" >Show on Map</button></li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btn0"
                                                                                                              class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                              data-target="#multiCollapseExample0" aria-expanded="false"
                                                                                                              aria-controls="multiCollapseExample0">Hotel List</button></li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btn1"
                                                                                                              class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                              data-target="#multiCollapseExample1" aria-expanded="false"
                                                                                                              aria-controls="multiCollapseExample1">Add Hotel</button></li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"><button id="btn2"
                                                                                                             class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                             data-target="#multiCollapseExample2" aria-expanded="false"
                                                                                                             aria-controls="multiCollapseExample2">Update Hotel</button></li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btn3"
                                                                                                              class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                              data-target="#multiCollapseExample3" aria-expanded="false"
                                                                                                              aria-controls="multiCollapseExample3">Add Room</button> </li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btn4"
                                                                                                              class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                              data-target="#multiCollapseExample4" aria-expanded="false"
                                                                                                              aria-controls="multiCollapseExample4">Update Room</button> </li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btn5"
                                                                                                              class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                              data-target="#multiCollapseExample5" aria-expanded="false"
                                                                                                              aria-controls="multiCollapseExample5">Declare Room Unavailability</button> </li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btn6"
                                                                                                              class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                              data-target="#multiCollapseExample6" aria-expanded="false"
                                                                                                              aria-controls="multiCollapseExample6">Settings</button> </li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button
                                class="btn btn-warning custom" type="button" data-toggle="collapse"
                                data-target="#multiCollapseExample2" aria-expanded="false"
                                aria-controls="multiCollapseExample2" href="${pageContext.request.contextPath}/user/logout">Sign out</button></li>
                    </ul>






                </aside>

                <aside class="col-md-9 col-sm-9 col-xs-9">
                    <!-- Hotel -->
                    <div id="example" class="container">
                        <div class="jumbotron jumbotron-fluid bg-white pad-top">
                            <div class="container">
                                <div class="row">

                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div id="myModal" class="modal">
                                            <!-- Modal content -->
                                            <div class="modal-content">
                                                <span class="close">&times;</span>
                                                <div class ="container" id="hotelsmap" style="height: 80vh"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="collapse multi-collapse" id="Map_context">
                                            <div class="card card-body border-color-navy rounded">

                                                <div id="map"></div>
                                                <!--<div class ="container" id="hotelsmap" style="height: 80vh"></div>-->

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="collapse multi-collapse" id="HotelList_context">
                                            <div class="card card-body border-color-navy rounded">
                                                <!--HOTEL LIST-->
                                                <table class="table-Primary table-bordered rounded">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Brand Name</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Postcode</th>
                                                            <th scope="col">Stars</th>
                                                            <th scope="col">Phone</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Website</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items = "${hotels}" var = "hotel"> 
                                                            <tr>
                                                                <td>${hotel.name}</td>
                                                                <td>${hotel.address}</td>
                                                                <td>${hotel.postcode}</td>
                                                                <td>${hotel.starsnumber}</td>
                                                                <td>${hotel.phone}</td>
                                                                <td>${hotel.email}</td>
                                                                <td>${hotel.siteurl}</td>
                                                            </tr>
                                                        </c:forEach> 
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="collapse multi-collapse" id="AddHotel_context">
                                            <div class="card card-body border-color-navy rounded">
                                                <!--ADD HOTEL - FORM-->
                                                <form:form class="form-signin" action="${pageContext.request.contextPath}/owner/addHotel" method="POST" modelAttribute="newhotel" > 

                                                    <h1 class="h3 mb-3 font-weight-normal">Please information for new hotel
                                                    </h1>
                                                    <form:label class="sr-only" path="name">Brand Name
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Brand Name" required="true"
                                                                autofocus="true" path="name" />
                                                    <form:select path="destinationid" class="browser-default custom-select mb-2">
                                                        <option selected>Area</option>
                                                        <c:forEach items = "${destinations}" var = "destinations"> 
                                                            <option value="${destinations.id}">${destinations.name}</option>
                                                        </c:forEach>                                                                                     
                                                    </form:select>
                                                    <form:label class="sr-only" path="address">Address
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Address" required="true"
                                                                path="address" />
                                                    <form:label class="sr-only" path="postcode">Postcode
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Postcode" required="true"
                                                                path="postcode" />
                                                    <form:label class="sr-only" path="starsnumber">Stars</form:label>

                                                    <form:select path="starsnumber" class="browser-default custom-select mb-2">
                                                        <option selected>Number of Stars</option>
                                                        <option value="1">1 Star</option>
                                                        <option value="2">2 Stars</option>
                                                        <option value="3">3 Stars</option>
                                                        <option value="4">4 Stars</option>
                                                        <option value="5">5 Stars</option>
                                                        <option value="6">Unrated</option>                                                        
                                                    </form:select>

                                                    <form:label class="sr-only" path="siteurl">URL
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="URL" required="true"
                                                                path="siteurl" />
                                                    <form:label class="sr-only" path="phone">Phone
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Phone number" required="true"
                                                                path="phone" />
                                                    <form:label class="sr-only" path="email">Email
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Email" required="true"
                                                                path="email" />

                                                    <div class="form-group">
                                                        <form:label for="exampleFormControlTextarea1" path="description">Hotel Description</form:label>
                                                        <form:textarea path="description" class="form-control rounded-0" id="description" rows="10"></form:textarea>
                                                        </div>

                                                        <!--ADD HOTEL - CHECHBOXES -->

                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Free Wifi" name="FreeWifi" />
                                                                        <label class="custom-control-label" for="Free Wifi" name="FreeWifi">Free Wifi</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Non-smoking room" name="Nonsmokingroom" />
                                                                        <label class="custom-control-label"
                                                                               for="Non-smoking room" name="Nonsmokingroom">Non-smoking room</label>
                                                                    </div>

                                                                </div>
                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Family Rooms" name="FamilyRooms" />
                                                                        <label class="custom-control-label"
                                                                               for="Family Rooms" name="FamilyRooms">Family Rooms</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Parking" name="Parking" />
                                                                        <label class="custom-control-label"
                                                                               for="Parking" name="Parking">Parking</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Pets allowed" name="Petsallowed" />
                                                                        <label class="custom-control-label" for="Pets allowed" name="Petsallowed">Pets
                                                                            allowed</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Swimming pool" name="Swimmingpool" />
                                                                        <label class="custom-control-label"
                                                                               for="Swimming pool" name="Swimmingpool">Swimming pool</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 col-sm-3 col-xs-3">

                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Spa and wellness center" name="Spaandwellnesscenter" />
                                                                        <label class="custom-control-label"
                                                                               for="Spa and wellness center" name="Spaandwellnesscenter">Spa and wellness
                                                                            center</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Bar" name="Bar" />
                                                                        <label class="custom-control-label" for="Bar" name="Bar">Bar</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>





                                                        <button class="btn btn-lg btn-primary btn-block mt-2"
                                                                type="submit">Submit</button>
                                                </form:form> 

                                            </div>
                                        </div>
                                    </div>

                                    <!--UPDATE HOTEL-->

                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="collapse multi-collapse" id="UpdateHotel_context">
                                            <div class="card card-body border-color-navy rounded">
                                                <form:form class="form-signin"
                                                           action="${pageContext.request.contextPath}/owner/updateHotel" method="POST"
                                                           modelAttribute="updatehotel"> 

                                                    <h1 class="h3 mb-3 font-weight-normal">Update your hotel
                                                    </h1>

                                                    <label class="sr-only" name="HotelName">Choose hotel</label>

                                                    <form:select class="browser-default custom-select mb-2" path="id">
                                                        <option selected>Select Hotel</option>
                                                        <c:forEach items = "${hotels}" var = "hotel"> 
                                                            <option value="${hotel.id}">${hotel.name}</option>
                                                        </c:forEach> 
                                                    </form:select>

                                                    <form:label class="sr-only" path="name">Brand Name
                                                    </form:label>
                                                    <form:input class="form-control mb-2" id="nameUD" placeholder="Brand Name" required="true"
                                                                autofocus="true" path="name" />
                                                    <form:select path="destinationid" class="browser-default custom-select mb-2">
                                                        <option selected>Area</option>
                                                        <c:forEach items = "${destinations}" var = "destinations"> 
                                                            <option value="${destinations.id}">${destinations.name}</option>
                                                        </c:forEach>                                                                                     
                                                    </form:select>
                                                    <form:label class="sr-only" path="address">Address
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Address" required="true"
                                                                path="address" />
                                                    <form:label class="sr-only" path="postcode">Postcode
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Postcode" required="true"
                                                                path="postcode" />


                                                    <form:select path="starsnumber" class="browser-default custom-select mb-2">
                                                        <option selected>Number of Stars</option>
                                                        <option value="1">1 Star</option>
                                                        <option value="2">2 Stars</option>
                                                        <option value="3">3 Stars</option>
                                                        <option value="4">4 Stars</option>
                                                        <option value="5">5 Stars</option>
                                                        <option value="6">Unrated</option>                                                        
                                                    </form:select>

                                                    <form:label class="sr-only" path="siteurl">URL
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="URL" required="true"
                                                                path="siteurl" />
                                                    <form:label class="sr-only" path="phone">Phone
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Phone number" required="true"
                                                                path="phone" />
                                                    <form:label class="sr-only" path="email">Email
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Email" required="true"
                                                                path="email" />
                                                    <div class="form-group">
                                                        <form:label for="exampleFormControlTextarea1" path="description">Hotel Description</form:label>
                                                        <form:textarea path="description" class="form-control rounded-0" id="description" rows="10"></form:textarea>
                                                        </div>

                                                        <!--UPDATE HOTEL - CHECHBOXES -->

                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Free Wifi" name="FreeWifi" />
                                                                        <label class="custom-control-label" for="Free Wifi" name="FreeWifi">Free Wifi</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Non-smoking room" name="Nonsmokingroom" />
                                                                        <label class="custom-control-label"
                                                                               for="Non-smoking room" name="Nonsmokingroom">Non-smoking room</label>
                                                                    </div>

                                                                </div>
                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Family Rooms" name="FamilyRooms" />
                                                                        <label class="custom-control-label"
                                                                               for="Family Rooms" name="FamilyRooms">Family Rooms</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Parking" name="Parking" />
                                                                        <label class="custom-control-label"
                                                                               for="Parking" name="Parking">Parking</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Pets allowed" name="Petsallowed" />
                                                                        <label class="custom-control-label" for="Pets allowed" name="Petsallowed">Pets
                                                                            allowed</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Swimming pool" name="Swimmingpool" />
                                                                        <label class="custom-control-label"
                                                                               for="Swimming pool" name="Swimmingpool">Swimming pool</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 col-sm-3 col-xs-3">

                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Spa and wellness center" name="Spaandwellnesscenter" />
                                                                        <label class="custom-control-label"
                                                                               for="Spa and wellness center" name="Spaandwellnesscenter">Spa and wellness
                                                                            center</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input"
                                                                               id="Bar" name="Bar" />
                                                                        <label class="custom-control-label" for="Bar" name="Bar">Bar</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button class="btn btn-lg btn-primary btn-block mt-2"
                                                                type="submit">Update</button>
                                                        <button class="btn btn-lg btn-warning btn-block" href=""
                                                                type="submit">Delete</button>

                                                </form:form> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="collapse multi-collapse" id="AddRoom_context">
                                            <div class="card card-body border-color-navy rounded">

                                                <!--ADD ROOM -->

                                                <form:form class="form-signin"
                                                           action="${pageContext.request.contextPath}/owner/addRoom" method="POST"
                                                           modelAttribute="newroom"> 

                                                    <h1 class="h3 mb-3 font-weight-normal">Add your Room
                                                    </h1>

                                                    <form:select path="hotelid" class="browser-default custom-select mb-2">
                                                        <option selected>Select Hotel</option>
                                                        <c:forEach items = "${hotels}" var = "hotel"> 
                                                            <form:option value="${hotel.id}">${hotel.name}</form:option>
                                                        </c:forEach> 
                                                    </form:select>

                                                    <form:label class="sr-only" path="name">Room Name
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Room Name" required="true"
                                                                autofocus="true" path="name" />
                                                    <form:label class="sr-only" path="capacity">Capacity
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Max Capacity" required="true"
                                                                autofocus="true" path="capacity" />
                                                    <form:label class="sr-only" path="pricepernight">Price per night
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Price per night"
                                                                required="true" path="pricepernight" />



                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Kitchen" name="Kitchen" >
                                                                    <label class="custom-control-label"
                                                                           for="Kitchen">Kitchen</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Private bathroom" name="Privatebathroom" >
                                                                    <label class="custom-control-label"
                                                                           for="Private bathroom">Private bathroom</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Air conditioning" name="AirConditioning" >
                                                                    <label class="custom-control-label"
                                                                           for="Air conditioning">Air conditioning</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Bath" name="Bath" >
                                                                    <label class="custom-control-label" for="Bath">Bath</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Flat-screen TV" name="FlatscreenTV" >
                                                                    <label class="custom-control-label"
                                                                           for="Flat-screen TV">Flat-screen TV</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Washing Machine" name="WashingMachine" >
                                                                    <label class="custom-control-label"
                                                                           for="Washing Machine">Washing Machine</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="View" name="View" >
                                                                    <label class="custom-control-label" for="View">View</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Coffee/tea maker" name="CoffeeteaMaker" >
                                                                    <label class="custom-control-label"
                                                                           for="Coffee/tea maker">Coffee/tea maker</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Coffee machine" name="CoffeeMachine" >
                                                                    <label class="custom-control-label"
                                                                           for="Coffee machine">Coffee machine</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 col-sm-3 col-xs-3">

                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Electric kettle" name="Electrickettle" >
                                                                    <label class="custom-control-label"
                                                                           for="Electric kettle">Electric kettle</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Double bed" name="DoubleBed" >
                                                                    <label class="custom-control-label" for="Double bed">Double
                                                                        bed</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Single Bed" name="SingleBed" >
                                                                    <label class="custom-control-label" for="Single Bed">Single
                                                                        Bed</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <button class="btn btn-lg btn-primary btn-block mt-2"
                                                            type="submit">Submit</button>

                                                </form:form> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="collapse multi-collapse" id="UpdateRoom_context">
                                            <div class="card card-body border-color-navy rounded">
                                                <!--UPDATE ROOM -->

                                                <form:form class="form-signin"
                                                           action="${pageContext.request.contextPath}/owner/updateRoom" method="POST"
                                                           modelAttribute="updateroom"> 

                                                    <h1 class="h3 mb-3 font-weight-normal">Update your Room
                                                    </h1>

                                                    <form:select path="hotelid" class="browser-default custom-select mb-2">
                                                        <option selected>Select Hotel</option>
                                                        <c:forEach items = "${hotels}" var = "hotel"> 
                                                            <option value="${hotel.id}">${hotel.name}</option>
                                                        </c:forEach> 
                                                    </form:select>
                                                    <form:select path="Id" class="browser-default custom-select mb-2">
                                                        <option selected>Select Room</option>
                                                        <c:forEach items = "${rooms}" var = "rooms"> 
                                                            <option value="${rooms.id}">${rooms.name}</option>
                                                        </c:forEach> 
                                                    </form:select>

                                                    <form:label class="sr-only" path="name">Capacity
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Room Name" required="true"
                                                                autofocus="true" path="name" />

                                                    <form:label class="sr-only" path="capacity">Capacity
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Max Capacity" required="true"
                                                                autofocus="true" path="capacity" />
                                                    <form:label class="sr-only" path="pricepernight">Price per night
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Price per night"
                                                                required="true" path="pricepernight" />

                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Kitchen" name="Kitchen" >
                                                                    <label class="custom-control-label"
                                                                           for="Kitchen">Kitchen</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Private bathroom" name="Privatebathroom" >
                                                                    <label class="custom-control-label"
                                                                           for="Private bathroom">Private bathroom</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Air conditioning" name="AirConditioning" >
                                                                    <label class="custom-control-label"
                                                                           for="Air conditioning">Air conditioning</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Bath" name="Bath" >
                                                                    <label class="custom-control-label" for="Bath">Bath</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Flat-screen TV" name="FlatscreenTV" >
                                                                    <label class="custom-control-label"
                                                                           for="Flat-screen TV">Flat-screen TV</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Washing Machine" name="WashingMachine" >
                                                                    <label class="custom-control-label"
                                                                           for="Washing Machine">Washing Machine</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="View" name="View" >
                                                                    <label class="custom-control-label" for="View">View</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Coffee/tea maker" name="CoffeeteaMaker" >
                                                                    <label class="custom-control-label"
                                                                           for="Coffee/tea maker">Coffee/tea maker</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Coffee machine" name="CoffeeMachine" >
                                                                    <label class="custom-control-label"
                                                                           for="Coffee machine">Coffee machine</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 col-sm-3 col-xs-3">

                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Electric kettle" name="Electrickettle" >
                                                                    <label class="custom-control-label"
                                                                           for="Electric kettle">Electric kettle</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Double bed" name="DoubleBed" >
                                                                    <label class="custom-control-label" for="Double bed">Double
                                                                        bed</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="Single Bed" name="SingleBed" >
                                                                    <label class="custom-control-label" for="Single Bed">Single
                                                                        Bed</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <button class="btn btn-lg btn-primary btn-block mt-2"
                                                            type="submit">Update</button>
                                                    <button class="btn btn-lg btn-warning btn-block" href=""
                                                            type="submit">Delete</button>

                                                </form:form> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="collapse multi-collapse" id="DeclareUnavailability_context">
                                            <div class="card card-body border-color-navy rounded">

                                                <!--DECLARE UNAVAILABILITY-->

                                                <%--<form:form class="form-signin"--%>
                                                <%--action="${pageContext.request.contextPath}/owner/unavailability" method="POST"--%>
                                                <%--modelAttribute="unavailability">--%> 
                                <!-- <a href="${pageContext.request.contextPath}"><img class="mb-4"
                                                        src="../resources/media/template.jpg" alt="" width="300"
                                                        height="150"></a> -->
                                                <h1 class="h3 mb-3 font-weight-normal">Declare Room unavailability
                                                </h1>


                                                <label class="sr-only" path="HotelNameUn">Choose hotel</label>

                                                <div class="input-group">
                                                    <input type="TextBox" id="HotelNameUn" Class="form-control  mb-2"
                                                           placeholder="Choose hotel" path="HotelNameUn"></input>
                                                    <div class="input-group-btn">
                                                        <button type="button" class="btn dropdown-toggle"
                                                                data-toggle="dropdown">
                                                            <span class="caret"></span>
                                                        </button>
                                                        <ul id="HotellistUn" class="dropdown-menu">
                                                            <c:forEach items = "${hotels}" var = "hotel">
                                                                <li><a href="#">Hotel Name</a></li>
                                                                </c:forEach> 
                                                        </ul>
                                                    </div>
                                                </div>

                                                <label class="sr-only" path="HotelName">Choose Room</label>

                                                <div class="input-group">
                                                    <input type="TextBox" id="RoomNameUn" Class="form-control  mb-2"
                                                           placeholder="Choose room" path="RoomNameUn"></input>
                                                    <div class="input-group-btn">
                                                        <button type="button" class="btn dropdown-toggle"
                                                                data-toggle="dropdown">
                                                            <span class="caret"></span>
                                                        </button>

                                                        <ul id="RoomlistUn" class="dropdown-menu">
                                                            <c:forEach items = "${hotels}" var = "hotel"> 
                                                                <li><a href="#">Room Name</a></li>
                                                                </c:forEach> 
                                                        </ul>
                                                    </div>
                                                </div>

                                                <label class="sr-only" path="StartDate">Date from</label>
                                                <input type="date" class="form-control mb-2" placeholder="Room Name"
                                                       required="true" autofocus="true" path="StartDate" />
                                                <label class="sr-only" path="EndDate">Date to</label>
                                                <input type="date" class="form-control mb-2" placeholder="Room Name"
                                                       required="true" autofocus="true" path="EndDate" />


                                                <button class="btn btn-lg btn-primary btn-block mt-2"
                                                        type="submit">Submit</button>

                                                <%--</form:form>--%> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="collapse multi-collapse" id="Settings_context">
                                            <div class="card card-body border-color-navy rounded ">
                                                <form:form class="form-signin"
                                                           action="${pageContext.request.contextPath}/owner/settings" method="POST"
                                                           modelAttribute="updateUser"> 

                                                    <h1 class="h3 mb-3 font-weight-normal">Please update your personal
                                                        information</h1>
                                                    <form:label class="sr-only" path="name">Type your first name
                                                    </form:label>
                                                    <form:input class="invisible form-control mb-2" style="display:none" placeholder="First name" required="true"
                                                                autofocus="true" path="id" value="${loggedUser.id}" />
                                                    <form:input class="form-control mb-2" placeholder="First name" required="true"
                                                                autofocus="true" path="name" />
                                                    <form:label class="sr-only" path="surname">Type your last name
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Last name" required="true"
                                                                path="surname" />
                                                    <form:label class="sr-only" path="address">Type your home address
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Address" required="true"
                                                                path="address" />
                                                    <form:label class="sr-only" path="city">Type your city
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="City" required="true"
                                                                path="city" />
                                                    <form:label class="sr-only" path="postcode">Type your postcode area
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Postcode" required="true"
                                                                path="postcode" />
                                                    <form:label class="sr-only" path="phone">Type your phone number
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Phone number" required="true"
                                                                path="phone" />
                                                    <form:label class="sr-only" path="email">Type your email address
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Email address" required="true"
                                                                path="email" />
                                                    <form:label class="sr-only" path="username">Type your username
                                                    </form:label>
                                                    <form:input class="form-control mb-2" placeholder="Username" required="true"
                                                                path="username" />
                                                    <form:label class="sr-only" path="password">Type your password
                                                    </form:label>
                                                    <form:input type="password" class="form-control mb-2" placeholder="Password"
                                                                required="true" path="password" />

                                                    <button class="btn btn-lg btn-primary btn-block"
                                                            type="submit">Submit</button>

                                                </form:form> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </aside>
                            </div>
                        </div>

                        <script>



                    $('#Starslist li a').on('click', function () {
                        $('#StarsAH').val($(this).html());
                    });
                    $('#StarslistUp li a').on('click', function () {
                        $('#StarsUp').val($(this).html());
                    });
                    $('#Hotellist li a').on('click', function () {
                        $('#HotelNameUD').val($(this).html());
                    });
                    $('#HotellistRoom li a').on('click', function () {
                        $('#HotelNameRoom').val($(this).html());
                    });
                    $('#HotellistUn li a').on('click', function ()
                    {
                        $('#HotelNameUn').val($(this).html());
                    });
                    $('#RoomlistUn li a').on('click', function () {
                        $('#RoomNameUn').val($(this).html());
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
                    }

                        </script>



                        </body>

                        </html>
