<%-- 
    Document   : search_central
    Created on : 13 ???? 2019, 3:06:04 ??
    Author     : minas
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../resources/css/search_central.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Available Hotels</title>
        <link rel="stylecentral" href="styles.css">
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDt8otviU1hSrLQenHKOgpOVH8yUZl2LUI&callback=myMap"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">
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
        <nav class="navbar navbar-expand-lg navbar-white bg-navy">
            <a class="navbar-brand"><img src='../resources/media/logo.jpg'></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav  ml-auto">
                    <!-- <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li> -->

                    <li class="nav-item">
                        <a id="home_link" class="nav-link rounded" href="" tabindex="-1" aria-disabled="true">Home</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <ul id="dropdown_customer" class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Welcome, ${sessionScope.loggedUser.name} ${sessionScope.loggedUser.surname}
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/user/customer_services">Services</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/user/logout">Sign out</a>
                        </div>
                    </ul>
                </form>
            </div>
        </nav>



        <div class="container">
            <div class="row">
                <aside class="col-md-12 col-sm-12 col-xs-12">

                    <!--SEARCH BOX-->
                    <div id="Search_box" class="container">
                        <div id="Search_box_inside" class="jumbotron jumbotron-fluid bg-white rounded border-color-navy shadow">

                            <label id="Search_text" class="control-label  w3-lobster w3-xxxlarge">
                                <h1>Search</h1>
                            </label>

                            <div class="container w3-lobster w3-xlarge ">
                                <form action = "${pageContext.request.contextPath}/user/search" method="post">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="row">
                                                <div class="col-md-2 col-sm-2 col-xs-2">
                                                    <div class="form-group ">
                                                        <label class="control-label" for="budget">
                                                            Total Budget
                                                        </label>
                                                        <input class="form-control" id="budget" name="budget" type="text" />
                                                    </div>
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-xs-2">
                                                    <div class="form-group ">
                                                        <label class="control-label" for="persons">
                                                            Number of persons
                                                        </label>
                                                        <input class="form-control" id="persons" name="persons" type="text" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                    <div class="form-group ">
                                                        <label class="control-label" for="checkin">
                                                            Check in
                                                        </label>
                                                        <input class="form-control" id="date" name="checkin" type="date" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                    <div class="form-group ">
                                                        <label class="control-label" for="checkout">
                                                            Check out
                                                        </label>
                                                        <input class="form-control" id="date" name="checkout" type="date" />
                                                    </div>
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-xs-2">
                                                    <div id="button_search" class="form-group ">
                                                        <button class="btn btn-lg bg-navy text-white w3-lobster w3-xlarge " id="Search" name="Search" type="submit" >
                                                            &nbsp;&nbsp;&nbsp;Search&nbsp;&nbsp;&nbsp;
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <aside class="col-md-3 col-sm-3 col-xs-3">

                            <!-- Trigger/Open The Modal -->

                            <h6 class="title text-white"> <button class="btn btn-warning btn-lg btn-block" type="button" id="myBtn">Show hotels on Map</button></h6>



                            <!-- The Modal -->
                            <div id="myModal" class="modal">
                                <!-- Modal content -->
                                <div class="modal-content">
                                    <span class="close" style="close">&times;</span>
                                    <div id="map">
                                        <div class ="container" id="hotelsmap" style="height: 100vh"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <article class="card-group-item">
                                    <header class="card-header bg-navy">
                                        <h6 class="title text-white">Star Rating </h6>
                                    </header>
                                    <div class="filter-content">
                                        <div class="card-body">
                                            <form>
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        1 Star
                                                    </span>
                                                </label> 
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        2 Star
                                                    </span>
                                                </label> 
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        3 Star
                                                    </span>
                                                </label>
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        4 Star
                                                    </span>
                                                </label>
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        5 Star
                                                    </span>
                                                </label>
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        Unrated
                                                    </span>
                                                </label>
                                                </label> 
                                            </form>
                                        </div> 
                                    </div>
                                </article> 

                                <div class="card">
                                    <article class="card-group-item">
                                        <header class="card-header bg-navy">
                                            <h6 class="title text-white">Bed Preference </h6>
                                        </header>
                                        <div class="filter-content">
                                            <div class="card-body">
                                                <form>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Twin beds
                                                        </span>
                                                    </label> 
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Double bed
                                                        </span>
                                                    </label> 
                                                </form>
                                            </div> 
                                        </div>
                                    </article> 


                                    <article class="card-group-item">
                                        <header class="card-header bg-navy">
                                            <h6 class="title text-white">Hotel Facilities </h6>
                                        </header>
                                        <div class="filter-content">
                                            <div class="card-body">
                                                <form>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Free WiFi
                                                        </span>
                                                    </label> 
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Non-smoking rooms
                                                        </span>
                                                    </label> 
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Family rooms
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Airport shuttle
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Parking
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Pets allowed
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Room service
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Swimming pool
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Spa and wellness centre
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Bar
                                                        </span>
                                                    </label>
                                                </form>
                                            </div>
                                    </article> 

                                    <article class="card-group-item">
                                        <header class="card-header bg-navy">
                                            <h6 class="title text-white">Room Facilities </h6>
                                        </header>
                                        <div class="filter-content">
                                            <div class="card-body">
                                                <form>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Kitchen
                                                        </span>
                                                    </label> 
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Private bathroom
                                                        </span>
                                                    </label> 
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Air conditioning
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Bath
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Flat-screen TV
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Washing Machine
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            View
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Coffee/tea maker
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Coffee machine
                                                        </span>
                                                    </label>
                                                    <label class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="">
                                                        <span class="form-check-label">
                                                            Electric kettle
                                                        </span>
                                                    </label>
                                                </form>
                                            </div>
                                    </article> 
                                </div> 
                        </aside>


                        <aside class="col-md-9 col-sm-9 col-xs-9">
                            <div class="container">
                                <div class="jumbotron jumbotron-fluid bg-white shadow rounded border-color-navy2 "
                                     style="padding-top:15px; padding-bottom:15px">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-4 col-sm-4 col-xs-4">
                                                <div class="text-center">
                                                    <img src="../resources/media/room.jpg" class="rounded" style="width:100%">
                                                </div>
                                            </div>
                                            <c:forEach items = "${searchHotels}" var = "hotel">
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <p class="text-left">
                                                    <h1 class="w3-lobster  w3-xxlarge" >${hotel.name}</h1>
                                                    </p>                         
                                                    <p class="text-left">
                                                    <h2 class="w3-lobster w3-xlarge">${hotel.address},${hotel.destinationid.name}</h2>
                                                    </p>
                                                    <p class="text-left">
                                                    <h2 class="title text-navy">Rating</h2>
                                                    </p>
                                                    <div class="btn" style="padding-left:300px">
                                                        <a href="${pageContext.request.contextPath}/user/search/${hotel.id}"><button class="btn bg-navy w3-lobster w3-xlarge text-white " id="Search" name="Search">
                                                                Choose your room >
                                                            </button></a>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
            </div>
        </div>

        <script>
            // Get the modal
            var modal = document.getElementById("myModal");

// Get the button that opens the modal
            var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
            btn.onclick = function () {
                modal.style.display = "block";


                var options = {
                    zoom: 6,
                    center: {lat: 37.9838, lng: 23.7275}
                }

                var map = new google.maps.Map(document.getElementById('map'), options);

            <c:forEach items = "${searchHotels}" var = "hotel">
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

// When the user clicks on <span> (x), close the modal
            span.onclick = function () {
                modal.style.display = "none";
            }

// When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }


        </script>
    </body>
</html>