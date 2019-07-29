<%-- 
    Document   : customer_services
    Created on : 28 Ιουλ 2019, 9:36:40 μμ
    Author     : minas
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

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../resources/css/customer_services.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >

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

        <div class="container">
            <div class="row">

                <aside class="col-md-2 col-sm-2 col-xs-2 bg-navy" style="padding-top: 35px;left:-100px;padding-bottom: 400px;">
                    <ul class="list-group border-color-navy rounded">
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy disabled"> <button
                                id="btn" class="btn btn-primary custom" type="button" data-toggle="collapse"
                                data-target="#multiCollapseExample1" aria-expanded="false"
                                aria-controls="multiCollapseExample1">
                                <h2><strong>Services</strong></h2> </button></li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btn0"
                                                                                                              class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                              data-target="#multiCollapseExample0" aria-expanded="false"
                                                                                                              aria-controls="multiCollapseExample0">Bookings</button></li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"> <button id="btn1"
                                                                                                              class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                              data-target="#multiCollapseExample1" aria-expanded="false"
                                                                                                              aria-controls="multiCollapseExample1">Reviews</button></li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"><button id="btn2"
                                                                                                             class="btn btn-primary custom" type="button" data-toggle="collapse"
                                                                                                             data-target="#multiCollapseExample2" aria-expanded="false"
                                                                                                             aria-controls="multiCollapseExample2">Settings</button></li>
                        <li class="list-group-item-secondary text-center py-2 list-unstyled bg-navy"><a
                                href="${pageContext.request.contextPath}/user/logout"> <button
                                    class="btn btn-warning custom" type="button" data-toggle="collapse"
                                    data-target="#multiCollapseExample2" aria-expanded="false"
                                    aria-controls="multiCollapseExample2">Sign out</button></a></li>
                    </ul>

                </aside>
                <aside class="col-md-10 col-sm-10 col-xs-10 ">
                    <div class="jumbotron jumbotron-fluid  pad-top">
                        <div class="container">
                            <div class="row">

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="collapse multi-collapse" id="Bookings_context">
                                        <div class="card card-body fluid">


                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="collapse multi-collapse" id="Reviews_context">
                                        <div class="card card-body border-color-navy rounded">
                                            <h3 display="none"><p id="insertTextHere" class="text text-center"></p></h3>
                                            <div id="ratingform">
                                                <form class="form-signin"
                                                      action="${pageContext.request.contextPath}/user/submitRating" method="POST">
                                                    <label class="bg-warning rounded block text-white text-center"><h3>Please, complete the assessment form for your residence from ${sessionScope.availableRatings.startdate} to ${sessionScope.availableRatings.enddate} at ${sessionScope.hotelRating.name},${sessionScope.hotelRating.destinationid.name}</h3></label>
                                                    <hr style="border-top: 1px solid #8c8b8b; margin-top: 0px;">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                                <label><h4>General Assessment</h4></label>
                                                                <div class="rating">
                                                                    <input type="radio" name="GeneralAssessment" value="5" id="star1"><label for="star1">           
                                                                    </label>
                                                                    <input type="radio" name="GeneralAssessment" value="4" id="star2"><label for="star2">           
                                                                    </label>
                                                                    <input type="radio" name="GeneralAssessment" value="3"  id="star3"><label for="star3">           
                                                                    </label>
                                                                    <input type="radio" name="GeneralAssessment" value="2" id="star4"><label for="star4">           
                                                                    </label>
                                                                    <input type="radio" name="GeneralAssessment" value="1" id="star5"><label for="star5">           
                                                                    </label>
                                                                </div>
                                                                <label><h4>Cleanliness</h4></label>
                                                                <div class="rating">
                                                                    <input type="radio" name="Cleanliness" value="5" id="star6"><label for="star6">           
                                                                    </label>
                                                                    <input type="radio" name="Cleanliness" value="4" id="star7"><label for="star7">           
                                                                    </label>
                                                                    <input type="radio" name="Cleanliness" value="3"  id="star8"><label for="star8">           
                                                                    </label>
                                                                    <input type="radio" name="Cleanliness" value="2" id="star9"><label for="star9">           
                                                                    </label>
                                                                    <input type="radio" name="Cleanliness" value="1" id="star10"><label for="star10">           
                                                                    </label>
                                                                </div>
                                                                <label><h4>Staffing</h4></label>
                                                                <div class="rating">
                                                                    <input type="radio" name="Staffing" value="5" id="star11"><label for="star11">           
                                                                    </label>
                                                                    <input type="radio" name="Staffing" value="4" id="star12"><label for="star12">           
                                                                    </label>
                                                                    <input type="radio" name="Staffing" value="3"  id="star13"><label for="star13">           
                                                                    </label>
                                                                    <input type="radio" name="Staffing" value="2" id="star14"><label for="star14">           
                                                                    </label>
                                                                    <input type="radio" name="Staffing" value="1" id="star15"><label for="star15">           
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                                <label><h4>Hotel Facilities</h4></label>
                                                                <div class="rating">
                                                                    <input type="radio" name="HotelFacilities" value="5" id="star16"><label for="star16">           
                                                                    </label>
                                                                    <input type="radio" name="HotelFacilities" value="4" id="star17"><label for="star17">           
                                                                    </label>
                                                                    <input type="radio" name="HotelFacilities" value="3"  id="star18"><label for="star18">           
                                                                    </label>
                                                                    <input type="radio" name="HotelFacilities" value="2" id="star19"><label for="star19">           
                                                                    </label>
                                                                    <input type="radio" name="HotelFacilities" value="1" id="star20"><label for="star20">           
                                                                    </label>
                                                                </div>
                                                                <label><h4>Room Equipment</h4></label>
                                                                <div class="rating">
                                                                    <input type="radio" name="RoomEquipment" value="5" id="star21"><label for="star21">           
                                                                    </label>
                                                                    <input type="radio" name="RoomEquipment" value="4" id="star22"><label for="star22">           
                                                                    </label>
                                                                    <input type="radio" name="RoomEquipment" value="3"  id="star23"><label for="star23">           
                                                                    </label>
                                                                    <input type="radio" name="RoomEquipment" value="2" id="star24"><label for="star24">           
                                                                    </label>
                                                                    <input type="radio" name="RoomEquipment" value="1" id="star25"><label for="star25">           
                                                                    </label>
                                                                </div>

                                                            </div>
                                                            <label><h4>Comments</h4></label>
                                                            <textarea name="Comments" class="form-control rounded-0" id="description" rows="5"></textarea>
                                                        </div>
                                                    </div>
                                                    <button class="btn btn-lg btn-primary btn-block mt-2"
                                                            type="submit">Submit</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="collapse multi-collapse" id="Settings_context">
                                        <div class="card card-body border-color-navy rounded">
                                            <form:form class="form-signin"
                                                       action="${pageContext.request.contextPath}/owner/settings" method="POST"
                                                       modelAttribute="updateUser">
                                                <h1 class="h3 mb-3 font-weight-normal">Please update your personal
                                                    information</h1>
                                                <form:label path="name">Type your first name
                                                </form:label>
                                                <form:input class="form-control mb-2" style="display:none"
                                                            placeholder="First name" required="true" autofocus="true" path="id"
                                                            value="${loggedUser.id}" />
                                                <form:input class="form-control mb-2" id="nameUP"
                                                            value="${sessionScope.loggedUser.name}" placeholder="First name"
                                                            required="true" autofocus="true" path="name" />
                                                <form:label path="surname">Type your last name
                                                </form:label>
                                                <form:input class="form-control mb-2" id="surnameUP"
                                                            value="${sessionScope.loggedUser.surname}" placeholder="Last name"
                                                            required="true" path="surname" />
                                                <form:label path="address">Type your home address
                                                </form:label>
                                                <form:input class="form-control mb-2" id="addressUP"
                                                            value="${sessionScope.loggedUser.address}" placeholder="Address"
                                                            required="true" path="address" />
                                                <form:label path="city">Type your city
                                                </form:label>
                                                <form:input class="form-control mb-2" id="cityUP"
                                                            value="${sessionScope.loggedUser.city}" placeholder="City"
                                                            required="true" path="city" />
                                                <form:label path="postcode">Type your postcode area
                                                </form:label>
                                                <form:input class="form-control mb-2" id="postcodeUP"
                                                            value="${sessionScope.loggedUser.postcode}" placeholder="Postcode"
                                                            required="true" path="postcode" />
                                                <form:label path="phone">Type your phone number
                                                </form:label>
                                                <form:input class="form-control mb-2" id="phoneUP"
                                                            value="${sessionScope.loggedUser.phone}" placeholder="Phone number"
                                                            required="true" path="phone" />
                                                <form:label path="email">Type your email address
                                                </form:label>
                                                <form:input class="form-control mb-2" id="emailUP"
                                                            value="${sessionScope.loggedUser.email}" placeholder="Email address"
                                                            required="true" path="email" />
                                                <form:label path="username">Type your username
                                                </form:label>
                                                <form:input class="form-control mb-2" id="usernameUP"
                                                            value="${sessionScope.loggedUser.postcode}" placeholder="Username"
                                                            required="true" path="username" />
                                                <form:label path="password">Type your password
                                                </form:label>
                                                <form:input type="password" class="form-control mb-2" required="true"
                                                            path="password" />

                                                <button class="btn btn-lg btn-primary btn-block mt-2"
                                                        type="submit">Submit</button>

                                            </form:form>
                                        </div>
                                    </div>
                                </div>





                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>

        <script>



//            $('#btn0').click(function () {
//                $('#Bookings_context').show();
//                $('#Reviews_context').hide();
//                $('#Settings_context').hide();
//
//            });

            $('#btn1').click(function () {
                $('#Bookings_context').hide();
                $('#Reviews_context').show();
                $('#Settings_context').hide();
            });

            $('#btn2').click(function () {
                $('#Bookings_context').hide();
                $('#Reviews_context').hide();
                $('#Settings_context').show();
            });

            var ratingform = document.getElementById("ratingform");
            document.querySelector("#btn1").addEventListener("click", function () {
                displayblock();

            });
            function displayblock() {

            <c:if test="${availableRatings.userid== null}" >
                ratingform.style.display = "none";
                $("#insertTextHere").text("You don't have to rate any hotel");
                $("#insertTextHere").style.display = "block";
            </c:if>
            }

        </script>

    </body>

</html>
