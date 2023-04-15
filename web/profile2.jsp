<!DOCTYPE html>
<%@page import="javax.servlet.http.HttpSession" %>

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
                            <a href="homepage.jsp">Home</a></li>
                    </div>
                    <div class="home-flex">
                        <img style="width: 15px;" src="img/search.svg">
                        <li class="home1">
                            <a href="search.jsp">Search</a></li>
                    </div>
                    <div class="home-flex">
                        <img style="width: 15px;" src="img/watch later.svg">
                        <li class="home1">
                            <a href="playlists.jsp">Playlist</a></li>
                    </div>
                    <div class="home-flex">
                        <img style="width: 15px;" src="img/subscriptions.svg">
                        <li class="home1">
                            <a href="categories.jsp">Categories</a></li>
                    </div>
                    <div class="home-flex">
                        <img style="width: 15px;" src="img/tv.svg">
                        <li class="home1">
                            <a href="series.jsp">Series</a></li>
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
        <!-- Sidebar in Flexbox Column -->
        <div class="sidebar">
            <!-- Buttons Start: -->
            <div class="menu-bar">
                <div class="menu">
                    <div class="menu-logo">
                        <!-- These are just the SVG logo -->
                        <svg id="Layer_3" data-name="Layer 3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 128 128">
                            <title>Artboard 111</title>
                            <path
                                d="M97.092,36.078H30.908a2.111,2.111,0,0,0,0,4.222H97.092a2.111,2.111,0,0,0,0-4.222Z" />
                            <path
                                d="M97.092,61.889H30.908a2.111,2.111,0,0,0,0,4.222H97.092a2.111,2.111,0,0,0,0-4.222Z" />
                            <path d="M97.092,87.7H30.908a2.111,2.111,0,0,0,0,4.222H97.092a2.111,2.111,0,0,0,0-4.222Z" />
                        </svg>
                        <!-- These are just the SVG logo -->

                    </div>
                    <div class="menu-text"> Menu</div>
                </div>

                <div class="watch-later">
                    <div class="watch-later-logo">
                        <!-- These are just the SVG logo -->
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path
                                d="M20.246,3.754V3.067a2.062,2.062,0,0,0-4.123,0v.687H14.061V3.067a2.061,2.061,0,0,0-4.122,0v.687H7.877V3.067a2.062,2.062,0,0,0-4.123,0v.687A2.751,2.751,0,0,0,1.006,6.5V20.246a2.751,2.751,0,0,0,2.748,2.748H20.246a2.751,2.751,0,0,0,2.748-2.748V6.5A2.751,2.751,0,0,0,20.246,3.754Zm-3.092-.687a1.031,1.031,0,1,1,2.061,0V5.386a1.031,1.031,0,1,1-2.061,0Zm-6.185,0a1.031,1.031,0,1,1,2.062,0V5.386a1.031,1.031,0,1,1-2.062,0Zm-6.184,0a1.031,1.031,0,1,1,2.061,0V5.386a1.031,1.031,0,1,1-2.061,0ZM21.964,20.246a1.72,1.72,0,0,1-1.718,1.718H3.754a1.72,1.72,0,0,1-1.718-1.718V6.5A1.72,1.72,0,0,1,3.754,4.785v.6a2.062,2.062,0,1,0,4.123,0v-.6H9.939v.6a2.061,2.061,0,1,0,4.122,0v-.6h2.062v.6a2.062,2.062,0,1,0,4.123,0v-.6A1.72,1.72,0,0,1,21.964,6.5Z" />
                            <path
                                d="M15,10.349h0a2.768,2.768,0,0,0-3,.64,2.768,2.768,0,0,0-3-.64,3.066,3.066,0,0,0-1.724,2.044,2.688,2.688,0,0,0,.463,2.3c.718.929,3.79,3.683,3.92,3.8a.514.514,0,0,0,.688,0c.13-.117,3.2-2.871,3.92-3.8a2.688,2.688,0,0,0,.463-2.3A3.066,3.066,0,0,0,15,10.349Zm.445,3.714A47.223,47.223,0,0,1,12,17.415a47.016,47.016,0,0,1-3.448-3.352,1.667,1.667,0,0,1-.278-1.424,2.036,2.036,0,0,1,1.153-1.353,1.312,1.312,0,0,1,.559-.124,2.467,2.467,0,0,1,1.616.882.515.515,0,0,0,.4.188h0a.518.518,0,0,0,.4-.186c.043-.052,1.073-1.269,2.175-.76a2.035,2.035,0,0,1,1.154,1.353A1.667,1.667,0,0,1,15.448,14.063Z" />
                        </svg>
                        <!-- These are just the SVG logo -->

                    </div>
                    <a href="" class="text-white">
                        <div class="menu-text">Watch Later</div>
                    </a>
                </div>
                <div class="coming-soon" style=" padding-left: -21px;">
                    <div class="coming-soon-logo">
                        <!-- These are just the SVG logo -->

                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48">
                            <defs>
                                <style>
                                    .cls-1 {
                                        fill: #ffffff;
                                    }
                                </style>
                            </defs>
                            <title>Asset 431</title>
                            <g id="Layer_2" data-name="Layer 2">
                                <g id="_1" data-name="1">
                                    <path class="cls-1"
                                        d="M24,28a4,4,0,1,1,4-4A4,4,0,0,1,24,28Zm0-6a2,2,0,1,0,2,2A2,2,0,0,0,24,22Z" />
                                    <rect class="cls-1" x="18.07" y="12.92" width="2" height="9.82"
                                        transform="translate(-6.96 15.82) rotate(-38.66)" />
                                    <rect class="cls-1" x="26.16" y="19.77" width="7.3" height="2"
                                        transform="translate(-6.34 17.08) rotate(-29.04)" />
                                    <rect class="cls-1" x="36" y="23" width="2" height="2" />
                                    <rect class="cls-1" x="10" y="23" width="2" height="2" />
                                    <rect class="cls-1" x="23" y="10" width="2" height="2" />
                                    <rect class="cls-1" x="23" y="36" width="2" height="2" />
                                    <path class="cls-1"
                                        d="M24,48A24,24,0,1,1,48,24,24,24,0,0,1,24,48ZM24,2A22,22,0,1,0,46,24,22,22,0,0,0,24,2Z" />
                                    <path class="cls-1"
                                        d="M24,41a17,17,0,1,1,12.75-5.76l-1.5-1.32a15,15,0,1,0-4,3.21l1,1.75A17,17,0,0,1,24,41Z" />
                                    <path class="cls-1" d="M41,36H35a1,1,0,0,1-1-1V29h2v5h5Z" />
                                </g>
                            </g>
                        </svg>
                        <!-- These are just the SVG logo -->
                    </div>
                    <a href="" class="text-white">
                        <div class="menu-text"> Coming Soon</div>
                    </a>
                </div>

                <div class="settings">
                    <div class="settings-logo">
                        <!-- These are just the SVG logo -->
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
                            <defs>

                            </defs>
                            <g id="setting">
                                <path class="cls-1"
                                    d="M27.92,18.46l-1.14-.92a.86.86,0,0,1-.31-.65V15.2a.83.83,0,0,1,.31-.65l1.11-.89A2.86,2.86,0,0,0,28.54,10L27.42,8.12A2.76,2.76,0,0,0,24.21,6.9l-1.82.58a.73.73,0,0,1-.64-.09l-1.23-.81A.8.8,0,0,1,20.16,6L19.92,4.4A2.77,2.77,0,0,0,17.18,2H14.93a2.79,2.79,0,0,0-2.77,2.51L12,6a.8.8,0,0,1-.41.63L10,7.48a.79.79,0,0,1-.67,0L8.08,7A2.75,2.75,0,0,0,4.62,8.1L3.48,10a2.84,2.84,0,0,0,.57,3.64L5.4,14.75a.87.87,0,0,1,.29.62l0,1.27a.87.87,0,0,1-.28.65L4,18.61a2.85,2.85,0,0,0-.57,3.52l1,1.84a2.77,2.77,0,0,0,3.42,1.22l1.62-.63a.73.73,0,0,1,.66.05l1.4.84a.76.76,0,0,1,.38.55l.32,1.66A2.81,2.81,0,0,0,15,29.94h2.15a2.79,2.79,0,0,0,2.75-2.39l.26-1.65a.85.85,0,0,1,.4-.6l1.3-.74a.78.78,0,0,1,.65,0l1.64.63a2.76,2.76,0,0,0,3.37-1.2l1.08-1.83A2.86,2.86,0,0,0,27.92,18.46ZM26.85,21.1l-1.08,1.83a.78.78,0,0,1-.94.34l-1.64-.63a2.77,2.77,0,0,0-2.35.19l-1.3.74a2.81,2.81,0,0,0-1.39,2l-.26,1.66a.78.78,0,0,1-.77.69H15a.79.79,0,0,1-.77-.66l-.32-1.66a2.81,2.81,0,0,0-1.33-1.89l-1.4-.84a2.73,2.73,0,0,0-1.41-.39,2.91,2.91,0,0,0-1,.19l-1.62.64a.77.77,0,0,1-1-.35l-1-1.84a.84.84,0,0,1,.16-1l1.48-1.32a2.87,2.87,0,0,0,.94-2.17l0-1.27a2.9,2.9,0,0,0-1-2.11L5.36,12.08A.85.85,0,0,1,5.19,11L6.33,9.14a.76.76,0,0,1,1-.32l1.25.53A2.72,2.72,0,0,0,11,9.23l1.61-.89A2.81,2.81,0,0,0,14,6.17l.16-1.46A.79.79,0,0,1,14.93,4h2.24a.79.79,0,0,1,.78.7l.23,1.61a2.85,2.85,0,0,0,1.24,2l1.23.8A2.72,2.72,0,0,0,23,9.38l1.82-.57a.76.76,0,0,1,.89.34L26.83,11a.86.86,0,0,1-.19,1.09L25.53,13a2.84,2.84,0,0,0-1.06,2.22v1.69a2.81,2.81,0,0,0,1.05,2.2l1.14.92A.86.86,0,0,1,26.85,21.1Z" />
                                <path class="cls-1"
                                    d="M16,11a5,5,0,1,0,5,5A5,5,0,0,0,16,11Zm0,8a3,3,0,1,1,3-3A3,3,0,0,1,16,19.07Z" />
                            </g>
                        </svg>
                        <!-- These are just the SVG logo -->
                    </div>
                    <a href="" class="text-white">
                        <div class="menu-text"> Settings</div>
                    </a>
                </div>
            </div>
        </div>
        <div class="content">








            <p class="para-format"
                style="font-family: Jaldi; font-weight: lighter; font-size: 150%; margin:3% 0 0% 0;padding-left: 10%;  color:#ffffff;">
                User Profile</p>



            <!-- cards try -->

            <section class="vh-100 ">
                <div class="container py-5 h-100" style="background-color: none;">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col col-xl-10">
                            <div class="card mb-5"
                                style="background-color: #212529; border-radius: 15px; border-style: none; ">
                                <div class="card-body p-4"
                                    style="background: linear-gradient(rgb(48, 50, 62), rgb(30, 31, 42)); border-radius: 20px;">
                                    <h3 class="mb-3 text-light"><%=session.getAttribute("email")%></h3>
                                    <span class="mx-2 text-light">|
                                        <strong class="text-light">Created on 11 April , 2021</p>
                                            <hr class="my-4 text-light">
                                            <div class="d-flex justify-content-start align-items-center">
                                                <p class="mb-0 text-uppercase px-2"><a href="playlists.jsp"> <span
                                                            class="text-muted small">Playlists</span></a></p>
                                                <p class="mb-0 text-uppercase">
                                                    <a href="/Stream/LoginServ?page=user&?edit=testg"><span
                                                            class="text-muted small px-2">Edit Profile</span></a></p>
                                                <p class="mb-0 text-uppercase">
                                                    <form action="/Stream/LoginServ?page=logout"><a href="index.jsp">
                                                            <span class="text-muted small px-2">Log Out</span></a>
                                                    </form>
                                                    <span class="ms-3 me-4 px-2">|</span>
                                                </p>
                                                <a href="#!">
                                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-2.webp"
                                                        alt="avatar" class="img-fluid rounded-circle me-3 " width="35">
                                                </a>

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
                                            <h5 class="modal-title text-light" id="exampleModalLongTitle">Save To
                                                Playlist</h5>
                                            <button type="button text-light" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true" class="text-danger">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body text-light">

                                            <div class="input-group mb-3 ">


                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="defaultCheck1">
                                                    <label class="form-check-label" for="defaultCheck1">
                                                        Playlist #1
                                                    </label>
                                                </div>


                                            </div>

                                            <div class="input-group mb-3">


                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="defaultCheck1">
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
                                            <button type="button" class="btn btn-outline-dark text-white">Save</button>
                                            </form>

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