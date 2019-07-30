<%-- 
    Document   : room
    Created on : 21 Ιουλ 2019, 9:11:09 μμ
    Author     : minas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../../resources/css/room.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>

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
            <a class="navbar-brand" href="#"><img src='../../resources/media/logo.jpg'></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto ">
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
                            CustomerName
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
                <aside class="col-md-3 col-sm-3 col-xs-3" style="padding-top: 35px;">
                    <div class="card">
                        <article class="card-group-item">
                            <header class="card-header bg-navy">
                                <h6 class="title text-white">Show on Map</h6>
                            </header>
                            <div class="filter-content">
                                <div class="card-body">

                                </div>

                                <div class="card">
                                    <article class="card-group-item">
                                        <header class="card-header bg-navy">
                                            <h6 class="title text-white">Comments</h6>
                                        </header>
                                        <table class="table ">

                                            <tbody>
                                                <tr>
                                                    <td align="center"> <texterea>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                                                sunt in culpa qui officia deserunt mollit anim id
                                                est laborum.</texterea></td>

                                            </tr>
                                            </tbody>
                                        </table>
                                        <table class="table ">

                                            <tbody>
                                                <tr>
                                                    <td align="center"> <texterea>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                                                sunt in culpa qui officia deserunt mollit anim id
                                                est laborum.</texterea></td>

                                            </tr>
                                            </tbody>
                                        </table>
                                        </aside>

                                        <!-- Hote List -->
                                        <aside class="col-md-9 col-sm-9 col-xs-9">
                                            <!-- Hotel -->
                                            <div class="container">
                                                <div class="jumbotron jumbotron-fluid bg-white " style="padding-top:15px; padding-bottom:15px">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                                <p class="text-left">
                                                                <h1 class="title text-navy" style="font-weight: bold; ">Hotel Title</h1>
                                                                </p>
                                                            </div>
                                                            <div class="col-md-12 col-sm-12 col-xs-12 " >
                                                                <div class="text-center">
                                                                    <hr>


                                                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                                                        <!-- Carousel indicators -->
                                                                        <ol class="carousel-indicators">
                                                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                                                        </ol>
                                                                        <!-- Wrapper for carousel items -->
                                                                        <div class="carousel-inner">
                                                                            <div class="carousel-item active">
                                                                                <img src="../resources/media/room.jpg" alt="First Slide">
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="../resources/media/room.jpg" alt="Second Slide">
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="../resources/media/room.jpg" alt="Third Slide">
                                                                            </div>
                                                                        </div>
                                                                        <!-- Carousel controls -->
                                                                        <a class="carousel-control-prev text-navy" href="#myCarousel" data-slide="prev">
                                                                            <span class="carousel-control-prev-icon"></span>
                                                                        </a>
                                                                        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                                                                            <span class="carousel-control-next-icon"></span>
                                                                        </a>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                                <hr>
                                                                <p class="text-left">
                                                                <h3 class="title text-navy" style="font-weight: bold">Description</h3>
                                                                </p>
                                                                <texterea>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                                    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                                    dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                                                                    sunt in culpa qui officia deserunt mollit anim id
                                                                    est laborum.</texterea>
                                                            </div>



                                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                                <hr>
                                                                <p class="text-left">
                                                                <h3 class="title text-navy" style="font-weight: bold">Most popular facilities
                                                                </h3>
                                                                </p>
                                                                <div class="d-flex justify-content-start">
                                                                    <div class="important_facility" id="Non_Smoking_Room">
                                                                        <img style="width:20px;height:20px" src="no-smoking.svg">
                                                                        Non Smoking Room&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </div>
                                                                    <div class="important_facility" id="Pool">
                                                                        <img style="width:20px;height:20px" src="swimming-silhouette.svg">
                                                                        Pool&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </div>
                                                                    <div class="important_facility" id="Bar">
                                                                        <img style="width:20px;height:20px" src="cocktail.svg">
                                                                        Bar&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </div>
                                                                    <div class="important_facility" id="Free_Wi-fi">
                                                                        <img style="width:20px;height:20px" src="wifi.svg">
                                                                        Free Wi-fi&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </div>
                                                                    <div class="important_facility" id="Parking">
                                                                        <img style="width:20px;height:20px" src="swimming-silhouette.svg">
                                                                        Parking
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                                <hr>
                                                                <p class="text-left">
                                                                <h3 class="title text-navy" style="font-weight: bold">Availability</h3>
                                                                </p>
                                                                <table class="table table-bordered">
                                                                    <thead>
                                                                        <tr align="center">
                                                                            <th class="bg-navy text-white">Room Type</th>
                                                                            <th class="bg-navy text-white">Sleeps</th>
                                                                            <th class="bg-navy text-white">Room Facilities</th>
                                                                            <th class="bg-navy text-white">Price for x nights</th>
                                                                            <th class="bg-navy text-white"></th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td align="center" style="vertical-align:middle;">Double Room</td>
                                                                            <td align="center" style="vertical-align:middle;">2 persons</td>
                                                                            <td align="center" style="vertical-align:middle;">
                                                                                <ul class="list-group list-group-flush">
                                                                                    <li class="list-group-item py-0 ">Air conditioning </li>
                                                                                    <li class="list-group-item py-0 ">Flat-screen TV</li>
                                                                                    <li class="list-group-item py-0 ">View </li>
                                                                                    <li class="list-group-item py-0 ">Coffee/tea maker</li>
                                                                                    <li class="list-group-item py-0 ">Private bathroom</li>
                                                                                </ul></td>
                                                                            <td align="center" style="vertical-align:middle;">500€</td>
                                                                            <td align="center" style="vertical-align:middle;"><a type="button" 
                                                                                                                                 class="btn bg-navy text-white" href="">I'll reserve</a></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>



                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            <!-- End Hotel -->
                                        </aside>
                                        <!-- End Hotel List-->

                                </div>
                            </div>

                            <script>
                                $(document).ready(function () {
                                    $("#myCarousel").carousel();
                                });
                            </script>

                            </body>
                            </html>
