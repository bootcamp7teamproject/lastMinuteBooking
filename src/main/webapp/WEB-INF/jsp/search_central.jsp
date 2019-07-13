<%-- 
    Document   : search_central
    Created on : 13 ???? 2019, 3:06:04 ??
    Author     : minas
--%>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="../resources/search_central.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylecentral" href="styles.css">
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
        <a class="navbar-brand" href="#"><img src='logo.jpg'></a>
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
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        CustomerName
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </form>
        </div>
    </nav>



    <div class="container">
        <div class="row">
            <aside class="col-md-12 col-sm-12 col-xs-12">
                <p>Space</p>
                <div class="row">
                    <aside class="col-md-3 col-sm-3 col-xs-3">
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
                                            </label> <!-- form-check.// -->
                                            <label class="form-check">
                                                <input class="form-check-input" type="checkbox" value="">
                                                <span class="form-check-label">
                                                    2 Star
                                                </span>
                                            </label> <!-- form-check.// -->
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
                                            </label> <!-- form-check.// -->
                                        </form>

                                    </div> <!-- card-body.// -->
                                </div>
                            </article> <!-- card-group-item.// -->

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
                                                </label> <!-- form-check.// -->
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        Double bed
                                                    </span>
                                                </label> <!-- form-check.// -->
                                            </form>
                                        </div> <!-- card-body.// -->
                                    </div>
                                </article> <!-- card-group-item.// -->


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
                                                </label> <!-- form-check.// -->
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        Non-smoking rooms
                                                    </span>
                                                </label> <!-- form-check.// -->
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
                                </article> <!-- card-group-item.// -->

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
                                                </label> <!-- form-check.// -->
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-label">
                                                        Private bathroom
                                                    </span>
                                                </label> <!-- form-check.// -->
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
                                </article> <!-- card-group-item.// -->


                            </div> <!-- card.// -->
                    </aside>


                    <aside class="col-md-9 col-sm-9 col-xs-9">
                        <div class="container" style="margin-top: 40px">
                            <div class="jumbotron jumbotron-fluid bg-white rounded  border-color-navy"
                                style="padding-top:15px; padding-bottom:15px">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4 col-xs-4">
                                            <div class="text-center">
                                                <img src="room.jpg" class="rounded" style="width:100%">
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                            <p class="text-left">
                                                <h1 class="title text-navy" style="font-weight: bold">Hotel Title</h1>
                                            </p>
                                            <p class="text-left">
                                                    <h2 class="title text-navy">Rating</h2>
                                            </p>
                                            <p class="text-left">
                                                <h2 class="title text-navy">Cost per night</h2>
                                            </p>
                                            <div class="btn" style="padding-left:300px">
                                                <button class="btn bg-navy text-white " id="Search" name="Search">
                                                    Choose your room >
                                                </button>
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
    </aside>

    </div>

    </div>

</body>

</html>