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
    <link rel="stylesheet" href="css/movie.css" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="footer.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://vjs.zencdn.net/8.0.4/video-js.css" rel="stylesheet" />
    <link href="https://unpkg.com/@videojs/themes@1/dist/city/homepage.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>


    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            outline: none;
            border: none;
            text-decoration: none;
            text-transform: capitalize;
        }

        body {
            background-color: #1C1C1C;

        }

        .categ-flex-grid {

            margin-top: 0%;

        }

        .title-year {

            margin-bottom: 25%;
        }

        .container {
            max-width: 500%;
            margin: 3% auto;
            display: flex;
            flex-wrap: wrap;
            align-items: flex-start;
            gap: 20px;
            margin: 3% -18%;
        }

        @media (max-width:1100px) {
            .categ-flex-grid {
                height: 75%;


            }
        }

        .categ-flex-grid{
    grid-column: 1/4;
    grid-row: 2/3;
    background-color: #1E1F26;
    border-radius: 30px;
    margin-top: 2%;
    height: 60%;
    box-shadow: -2px 0px 20px rgba(0, 0, 0, 0.25);
    margin-right: 10%;

}
        .container .main-video-container .main-video {
            margin-top: 10%;
            border-radius: 20px;
            width: 330%;

        }

        .container .main-video-container .main-vid-title {
            font-size: 20px;
            color: white;

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

        @media (max-width:1200px) {

            .container {
                margin: 0;
            }

        }

        @media (max-width:450px) {

            .container .main-video-container .main-vid-title {
                font-size: 15px;
                text-align: center;
            }

            .container .video-list-container .list {
                flex-flow: column;
                gap: 10px;
            }

            .container .video-list-container .list .list-video {
                width: 100%;
            }

            .container .video-list-container .list .list-title {
                font-size: 15px;
                text-align: center;
            }

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
    <!-- Nav Bar Ends -->

    <!-- Side Bar Starts -->
    <!-- Grid Layout -->
    <div class="main">
        <!-- Sidebar in Flexbox Column -->
<!--        <div class="sidebar">
             Buttons Start: 
            <div class="menu-bar">
                <div class="menu">
                    <div class="menu-logo">
                         These are just the SVG logo 
                        <svg id="Layer_3" data-name="Layer 3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 128 128">
                            <title>Artboard 111</title>
                            <path
                                d="M97.092,36.078H30.908a2.111,2.111,0,0,0,0,4.222H97.092a2.111,2.111,0,0,0,0-4.222Z" />
                            <path
                                d="M97.092,61.889H30.908a2.111,2.111,0,0,0,0,4.222H97.092a2.111,2.111,0,0,0,0-4.222Z" />
                            <path d="M97.092,87.7H30.908a2.111,2.111,0,0,0,0,4.222H97.092a2.111,2.111,0,0,0,0-4.222Z" />
                        </svg>
                         These are just the SVG logo 

                    </div>
                    <div class="menu-text"> Menu</div>
                </div>

                <div class="watch-later">
                    <div class="watch-later-logo">
                         These are just the SVG logo 
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path
                                d="M20.246,3.754V3.067a2.062,2.062,0,0,0-4.123,0v.687H14.061V3.067a2.061,2.061,0,0,0-4.122,0v.687H7.877V3.067a2.062,2.062,0,0,0-4.123,0v.687A2.751,2.751,0,0,0,1.006,6.5V20.246a2.751,2.751,0,0,0,2.748,2.748H20.246a2.751,2.751,0,0,0,2.748-2.748V6.5A2.751,2.751,0,0,0,20.246,3.754Zm-3.092-.687a1.031,1.031,0,1,1,2.061,0V5.386a1.031,1.031,0,1,1-2.061,0Zm-6.185,0a1.031,1.031,0,1,1,2.062,0V5.386a1.031,1.031,0,1,1-2.062,0Zm-6.184,0a1.031,1.031,0,1,1,2.061,0V5.386a1.031,1.031,0,1,1-2.061,0ZM21.964,20.246a1.72,1.72,0,0,1-1.718,1.718H3.754a1.72,1.72,0,0,1-1.718-1.718V6.5A1.72,1.72,0,0,1,3.754,4.785v.6a2.062,2.062,0,1,0,4.123,0v-.6H9.939v.6a2.061,2.061,0,1,0,4.122,0v-.6h2.062v.6a2.062,2.062,0,1,0,4.123,0v-.6A1.72,1.72,0,0,1,21.964,6.5Z" />
                            <path
                                d="M15,10.349h0a2.768,2.768,0,0,0-3,.64,2.768,2.768,0,0,0-3-.64,3.066,3.066,0,0,0-1.724,2.044,2.688,2.688,0,0,0,.463,2.3c.718.929,3.79,3.683,3.92,3.8a.514.514,0,0,0,.688,0c.13-.117,3.2-2.871,3.92-3.8a2.688,2.688,0,0,0,.463-2.3A3.066,3.066,0,0,0,15,10.349Zm.445,3.714A47.223,47.223,0,0,1,12,17.415a47.016,47.016,0,0,1-3.448-3.352,1.667,1.667,0,0,1-.278-1.424,2.036,2.036,0,0,1,1.153-1.353,1.312,1.312,0,0,1,.559-.124,2.467,2.467,0,0,1,1.616.882.515.515,0,0,0,.4.188h0a.518.518,0,0,0,.4-.186c.043-.052,1.073-1.269,2.175-.76a2.035,2.035,0,0,1,1.154,1.353A1.667,1.667,0,0,1,15.448,14.063Z" />
                        </svg>
                         These are just the SVG logo 

                    </div>
                    <a href="" class="text-white">
                        <div class="menu-text">Watch Later</div>
                    </a>
                </div>
                <div class="coming-soon" style=" padding-left: -21px;">
                    <div class="coming-soon-logo">
                         These are just the SVG logo 

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
                         These are just the SVG logo 
                    </div>
                    <a href="" class="text-white">
                        <div class="menu-text"> Coming Soon</div>
                    </a>
                </div>

                <div class="settings">
                    <div class="settings-logo">
                         These are just the SVG logo 
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
                            <defs>
                                <style>
                                    .cls-1 {
                                        fill: #231f20;
                                    }
                                </style>
                            </defs>
                            <g id="setting">
                                <path class="cls-1"
                                    d="M27.92,18.46l-1.14-.92a.86.86,0,0,1-.31-.65V15.2a.83.83,0,0,1,.31-.65l1.11-.89A2.86,2.86,0,0,0,28.54,10L27.42,8.12A2.76,2.76,0,0,0,24.21,6.9l-1.82.58a.73.73,0,0,1-.64-.09l-1.23-.81A.8.8,0,0,1,20.16,6L19.92,4.4A2.77,2.77,0,0,0,17.18,2H14.93a2.79,2.79,0,0,0-2.77,2.51L12,6a.8.8,0,0,1-.41.63L10,7.48a.79.79,0,0,1-.67,0L8.08,7A2.75,2.75,0,0,0,4.62,8.1L3.48,10a2.84,2.84,0,0,0,.57,3.64L5.4,14.75a.87.87,0,0,1,.29.62l0,1.27a.87.87,0,0,1-.28.65L4,18.61a2.85,2.85,0,0,0-.57,3.52l1,1.84a2.77,2.77,0,0,0,3.42,1.22l1.62-.63a.73.73,0,0,1,.66.05l1.4.84a.76.76,0,0,1,.38.55l.32,1.66A2.81,2.81,0,0,0,15,29.94h2.15a2.79,2.79,0,0,0,2.75-2.39l.26-1.65a.85.85,0,0,1,.4-.6l1.3-.74a.78.78,0,0,1,.65,0l1.64.63a2.76,2.76,0,0,0,3.37-1.2l1.08-1.83A2.86,2.86,0,0,0,27.92,18.46ZM26.85,21.1l-1.08,1.83a.78.78,0,0,1-.94.34l-1.64-.63a2.77,2.77,0,0,0-2.35.19l-1.3.74a2.81,2.81,0,0,0-1.39,2l-.26,1.66a.78.78,0,0,1-.77.69H15a.79.79,0,0,1-.77-.66l-.32-1.66a2.81,2.81,0,0,0-1.33-1.89l-1.4-.84a2.73,2.73,0,0,0-1.41-.39,2.91,2.91,0,0,0-1,.19l-1.62.64a.77.77,0,0,1-1-.35l-1-1.84a.84.84,0,0,1,.16-1l1.48-1.32a2.87,2.87,0,0,0,.94-2.17l0-1.27a2.9,2.9,0,0,0-1-2.11L5.36,12.08A.85.85,0,0,1,5.19,11L6.33,9.14a.76.76,0,0,1,1-.32l1.25.53A2.72,2.72,0,0,0,11,9.23l1.61-.89A2.81,2.81,0,0,0,14,6.17l.16-1.46A.79.79,0,0,1,14.93,4h2.24a.79.79,0,0,1,.78.7l.23,1.61a2.85,2.85,0,0,0,1.24,2l1.23.8A2.72,2.72,0,0,0,23,9.38l1.82-.57a.76.76,0,0,1,.89.34L26.83,11a.86.86,0,0,1-.19,1.09L25.53,13a2.84,2.84,0,0,0-1.06,2.22v1.69a2.81,2.81,0,0,0,1.05,2.2l1.14.92A.86.86,0,0,1,26.85,21.1Z" />
                                <path class="cls-1"
                                    d="M16,11a5,5,0,1,0,5,5A5,5,0,0,0,16,11Zm0,8a3,3,0,1,1,3-3A3,3,0,0,1,16,19.07Z" />
                            </g>
                        </svg>
                         These are just the SVG logo 
                    </div>
                    <a href="" class="text-white">
                        <div class="menu-text"> Settings</div>
                    </a>
                </div>
            </div>
        </div>-->
        <div class="content">

            <div class="content-grid">
                <div class="container">
                    
                        <div class="main-video-container">
                            <video src="video/${media.video}" loop controls class="main-video"></video>
                        </div>

                </div>


                <div class="categ-flex-grid">
                    <div class="categ-flex">
                        <div class="title1">
                            <div class="some">
                                <a href="${media.thumb}" download>
                                    <div class="categ-name">${media.categ}</div>
                                </a>
                            </div>
                            <div class="some">
                                <div class="categ-name">${media.genre}</div>
                            </div>
                        </div>


                    </div>
                    <div class="categ-flex">
                        <!-- first parent flex -->
                        <div class="title1">
                            <!-- more nested flex -->

                            <div class="title-name">${media.name}</div>
                        </div>
                    </div>
                    <div class="categ-flex">
                        <!-- first parent flex -->
                        <div class="title1">
                            <!-- more nested flex -->

                            <div class="title-desc">
                                ${media.des}</div>
                        </div>
                    </div>

                    <div class="categ-flex">
                        <!-- first parent flex -->
                        <div class="title1">
                            <!-- more nested flex -->

                            <div class="title-year">
                                Released on: ${media.year}</div>
                        </div>
                    </div>
                </div>


                <div class="movie-rec">
                    <div class="y-flex">
                        <div>
                            <p class=""
                                style="font-family: Jaldi; font-weight: lighter; font-size: 100%; margin:1% 0 1% 0;color:#ffffff;">
                                More Like This</p>
                        </div>
                        <div>
                            <div class="episode1">Frozen</div>
                            <img style="width:80%; object-fit:cover; border: 1px solid #495579; margin-left: 10%; text-align: center;"
                                src="disney/mando.webp">
                            <div class="epi-time">Year: 2020</div>
                        </div>
                        <div style="margin-bottom: 20%;">
                            <div class="episode1">Frozen</div>
                            <img style="width:80%; object-fit:cover; border: 1px solid #495579; margin-left: 10%; text-align: center;"
                                src="disney/mando.webp">
                            <div class="epi-time">Year: 2020</div>
                        </div>



                    </div>




                </div>
            </div>
        </div>
<!--        <div class="friend">
            <div class="friend-flex">
                <div class="add-friends-logo">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path
                            d="M12,2A10,10,0,1,0,22,12,10,10,0,0,0,12,2Zm4,11H13v3a1,1,0,0,1-2,0V13H8a1,1,0,0,1,0-2h3V8a1,1,0,0,1,2,0v3h3a1,1,0,0,1,0,2Z" />
                    </svg>
                </div>
                <div><img class="friends-pic" src="disneyplus-clone/disney/pp.png"></div>
                <div><img class="friends-pic" src="disneyplus-clone/disney/pp.png"></div>
                <div><img class="friends-pic" src="disneyplus-clone/disney/pp.png"></div>
                <div><img class="friends-pic" src="disneyplus-clone/disney/pp.png"></div>

            </div>
        </div>-->



        <!-- <div class="categ-flex"> -->
        <!-- first parent flex -->
        <!-- <div class="title1"> -->
        <!-- more nested flex -->

        <!-- <div class="title-desc">
                        Lorem Ipsum is simply dummy text of the printing and
                        typesetting industry.
                        Lorem Ipsum has been the industry's standard dummy
                        text ever since the 1500s, when an unknown printer
                        took a galley of type and scrambled it to make a 
                        type specimen book. It has survived not only 
                        five centuries, but also the leap into electronic
                        typesetting, remaining essentially unchanged. </div>
                </div>
            </div> -->

        <!-- <div class="categ-flex"> -->
        <!-- first parent flex -->
        <!-- <div class="title1"> -->
        <!-- more nested flex -->

        <!-- <div class="title-year"> -->
        <!-- Released: 2020 </div> -->
    </div>
    </div>

    </div>
    </div>
    </div>





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
   
        <a href="video/${media.video}"><div class="btn btn-dark">Download</div></a>
        

   
        <div class="footer-bottom">
            <p>copyright &copy; <a href="#" style="color:#224d97">Streamly</a> </p>
        </div>

    </footer>

        
   
</body>

</html>