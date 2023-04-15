<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
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
            padding-top:0%;
        }
        .content {
  grid-area: c;
  grid-row: 1/-1;
  grid-column: 1/12;
}
    </style>
</head>

<body>
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
                            <a href="/Stream/mediaServ?page=home" style="font-weight: lighter;">Home</a></li>
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
                            <a href="playlists.jsp" style="font-weight: bold;">Save </a></li>
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


    <!-- Side Bar Starts -->
    <!-- Grid Layout -->
    <div class="main">
       
        <div class="content">

            <p class="para-format"
                style="font-family: Jaldi; font-weight: lighter; font-size: 150%; margin:1% 0 1% 0;padding-left: 7%;  color:#ffffff;">
                User Saved</p>

            <!-- cards try -->
            <c:forEach items="${mediaList}" var="name">
            <div class="play-flex">

                <div class="card"
                    style="width: 15rem; box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308); margin-left:6%; margin-bottom: 5%; background-color: #1E1F26;">
                    <a href="/Stream/mediaServ?page=newlist&mid=${name.mid}"><img class="card-img-top" src="img/${name.thumb}" alt="Card image cap">
                    <div class="card-body">
<!--                        <a href=""> <img style="float: left; padding-top: 3%; padding-right: 4%; width: 12%"
                                src="img/public2.svg"></a>-->

<h5 class="card-title" style="color:white; display: inline-block;">${name.name}</h5></a>
                        <a href="/Stream/LoginServ?page=deleteSave&mid=${name.mid}"><img style="float: right;  padding-right: 4%; width: 15%;" src="img/delete.svg"></a>

                    </div>
                </div>
                        </c:forEach>
<!--                <div class="card"
                    style="width: 15rem; box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308); margin-left:6%; margin-bottom: 5%; background-color: #1E1F26;">
                    <img class="card-img-top" src="img/original.jfif" alt="Card image cap">
                    <div class="card-body">
                        <a href=""><img style="float: left; padding-top: 4%; padding-right: 4%; width: 12%"
                                src="img/public1.svg"></a>

                        <h5 class="card-title" style="color:white; display: inline-block;">Save #2</h5>
                        <img style="float: right;  padding-right: 4%; width: 15%;" src="img/delete.svg">

                    </div>


                </div>-->
            </div>
            <!-- 2nd row -->



            <!-- pop up for save playlist try -->



            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content w-75" style="background-color: #232323;">
                        <div class="modal-header">
                            <h5 class="modal-title text-light" id="exampleModalLongTitle">Save To Playlist</h5>
                            <button type="button text-light" class="close" data-dismiss="modal" aria-label="Close">
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
                            
                            <c:forEach items="mediaList" var="media">
                            <div class="input-group mb-3">
                                <div class="form-check">
                                    ${media.name}
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Playlist #2
                                    </label>
                                </div>
                            </div>
                            </c:forEach>

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
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
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

    <footer>
        <div class="footer-content">
            <img src="img/up2.png" style=" width:5%;  margin:0;">
            <h3>- Centralized Streaming Platform -</h3>
            <p>Streamly, is to overcome the barrier of having multiple streaming services with specific branded content
                by bringing them under one unified platform.</p>
            <ul class="socials">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
            </ul>
        </div>

        <div class="footer-bottom">
            <p>copyright &copy; <a href="#">Streamly</a> </p>
        </div>

    </footer>

</body>

</html>