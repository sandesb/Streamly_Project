<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stream.ly</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jaldi:wght@400;700&display=swap" />
    <link rel="stylesheet" href="css/flex.css" />
    <link rel="stylesheet" href="css/grid.css" />
    <link rel="stylesheet" href="css/best_1.css" />
    <link rel="stylesheet" href="css/footer.css" />
    <link rel="stylesheet" href="css/nav.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .sidebar {
            height: 100%;
        }

        body {
            background-color: #1A1D29;
            width: 100%;
            --font-jaldi: Jaldi;
            --font-inherit: inherit;
        }

        a {
            text-decoration: none !important;
            color: white;
        }

        a:hover {
            text-decoration: none !important;
            color: white;
        }

        .friend {
            grid-row: 1/1;
            grid-column: 12/-1;
            /* grid-area: f; */
            height: 100%;
            margin-top: 10%;
            margin-right: 18%;
            background-color: #1E1F26;
            box-shadow: -2px 0px 20px rgba(0, 0, 0, 0.25);
            border-radius: 9px;
        }

        .friend-flex {
            display: flex;
            flex-direction: column;
            padding-left: 35%;
            padding-top: 30%;


        }

        .add-friends-logo {
            width: 40%;
            padding-bottom: 50%;
        }


        .searchbar {
            margin-bottom: auto;
            margin-top: auto;
            height: 60px;
            background-color: #353b48;
            border-radius: 30px;
            padding: 10px;
            transform: rotate(-90deg);
        }

        .search_input {
            color: white;
            border: 0;
            outline: 0;
            background: none;
            width: 0;
            caret-color: transparent;
            line-height: 40px;
            transition: width 0.4s linear;
            transform: rotate(90deg);
        }

        .searchbar:hover>.search_input {
            padding: 0 10px;
            width: 50px;
            transition: width 0.4s linear;
        }

        .searchbar:hover {
            color: #e74c3c;
        }

        .search_icon {
            height: 40px;
            width: 20px;
            float: right;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
            color: white;
            text-decoration: none;
            display: block;
        }

        .add-friends-logo path {
            fill: #D1C236;
        }

        .friends-pic {
            width: 40%;
            margin-bottom: 50%;
            margin-right: 0;
            padding-right: 0;
            border-style: solid;
            border: #D1C236;
            border-bottom-width: 1px;
            border-bottom-style: solid;
            margin-right: 0px;
            border-top-width: 1px;
            border-top-style: solid;
            border-left-width: 1px;
            border-left-style: solid;
            border-right-width: 1px;
            border-right-style: solid;
            border-radius: 50%;
        }
        .home1{
            padding-top:0;
        }
    </style>
</head>

<!-- Navigation Bar Starts -->

<div class="first-flex">
        <div class="logo">
            <img class="image" src="img/up2.png">
        </div>
        <div class="nav-flex">
            <nav>
                <ul class="ul-flex">
                    <div class="home-flex">
                        <img style="width: 15px;" src="img/home.svg">
                        <li class="home1">
                            <a href="/Stream/mediaServ?page=home" style="font-weight: bold;">Home</a></li>
                    </div>
                      <div class="home-flex">
                        <img style="width: 15px;" src="img/subscriptions.svg">
                        <li class="home1">
                            <a href="categories.jsp" style="font-weight: lighter;">Categories</a></li>
                    </div>
                    
                 
                  
                    <div class="home-flex">
                        <img style="width: 15px;" src="img/tv.svg">
                        <li class="home1">
                            <a href="series.jsp" style="font-weight: lighter;">Series</a></li>
                    </div>
                    
                    <div class="home-flex">
                        <img style="width: 15px;" src="img/watch later.svg">
                        <li class="home1">
                            <a href="playlists.jsp" style="font-weight: lighter;">Save</a></li>
                    </div>
                    
                      <div class="home-flex">
                          <img style="width: 15px; transform:rotate(-90deg); " src="img/act.svg">
                        <li class="home1">
                            <a href="search.jsp" style="font-weight: lighter;">About</a></li>
                    </div>
                </ul>
            </nav>
        </div>

        <div class="last" style="flex:2; flex-grow: 1; margin-right: 3%;">
            <div class="last-flex" style="display: flex; width:100%; align-items: center; 
  
      ">
                <div class="n">
                    <a href="" data-toggle="modal" data-target="#exampleModal"> <img class="notif"
                            src="img/notif2.svg"></a>
                </div>
                <a href="profile1.jsp">
                    <div class="p">
                        <img class="pp" src="img/pp.png">
                    </div>
                </a>
            </div>

        </div>


    </div>
<!-- Nav Bar Ends -->

<!-- Side Bar Starts -->
<!-- Grid Layout -->
<div class="main">
   
    <div class="content">








        <p class="para-format"
            style="font-family: Jaldi; font-weight: lighter; font-size: 150%; margin:5% 0 0% 0;padding-left: 22%;  color:#ffffff;">
            User Profile</p>



        <!-- cards try -->

        <section class="vh-100 ">
            <div class="container py-5 h-100 w-75" style="background-color: none;">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card mb-5"
                            style="background-color: #212529; border-radius: 15px; border-style: none; ">
                            <div class="card-body p-4"
            style="background: linear-gradient(rgb(48, 50, 62), rgb(30, 31, 42)); border-radius: 20px;">
                                <form action="/Stream/UserServlet?page=editProfile&edit=${user.uid}" method="post">
                                    <div class="form-group row">
                                        <label for="staticEmail"
                                            class="col-sm-2 col-form-label text-light">Email</label>
                                        <div class="col-sm-10">
                                            <input type="text" value="${user.email}"readonly name="email" class="form-control-plaintext text-light"
                                                id="staticEmail" value="email@example.com">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        
                                        <label for="inputPassword" class="col-sm-2 col-form-label text-light">
                                            Full Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" value="${user.fullname}" name="fullname" class="form-control" id="inputPassword" placeholder="">
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-outline-dark text-light"
                                        style="margin-left: 45%;">Submit</button>

                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- 2nd row -->



                    <!-- pop up for save playlist try -->



                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content w-75" style="background-color: #232323;">
                                <div class="modal-header">
                                    <h5 class="modal-title text-light" id="exampleModalLongTitle">Save To Playlist</h5>
                                    <button type="button text-light" class="close" data-dismiss="modal"
                                        aria-label="Close">
                                        <span aria-hidden="true" class="text-danger">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body text-light">

                                    <div class="input-group mb-3 ">


                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Playlist #1
                                            </label>
                                        </div>


                                    </div>

                                    <div class="input-group mb-3">


                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Playlist #2
                                            </label>
                                        </div>


                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <div class="input-group">
                                        <div class="input-group-prepend">


                                            <!-- Servlet ma pathaune Playlist_FORM -->
                                            <form action="" method="">
                                                <span class="input-group-text" id="">New Playlist:</span>
                                        </div>
                                        <input type="text" name="newplaylist" class="form-control">
                                    </div>
                                    <button type="button" class="btn btn-outline-dark text-white">Save</button></form>

                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- <div class="footer-flex">
    <div class="null1">1</div>
    <div class="null2">
        <div class="footer-grid">
            <div class="logo-footer"><div class="logo-flex"><img src="img/up2.png" style="padding-top:2%; width:30%;  margin:0;"> </div></div>
            <div class="p">

                <p class="para-format"> Privacy Policy</p>
                <p class="para-format">  &#169;	Disney. All Rights Reserved.</p>
                <p class="para-format"> Agreement</p>
                <p class="para-format"> Help</p>
                <p class="para-format"> About Us</p>
            </div>

        </div>
    </div>
    <div class="null3">3</div>
    </div>   -->
                </div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content" style="background-color:#1E1F26">

                            <div class="modal-header">
                                <h5 class="modal-title text-light" id="exampleModalLabel">Notifcations</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true" class="text-danger">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body text-light">
                                No New Notifications
                            </div>

                        </div>
                    </div>
                </div>







            </div>
    </div>
</div>


</body>

</html>