<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link rel="stylesheet" href="css/footer.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <!-- Navigation Bar Starts -->
    <!-- flex, justify-between, align-item-center -->
    <nav>


        <!-- Create a logo container -->
        <!-- logo class -->

        <!-- Create a nav link container -->
        <!-- This is nav tag. It contaiens ul > li -->

        <!-- Create a logo cintainer -->
        <!-- logo class -->

        <!-- Flex Box Container: -->
        <ul class="container1">
            <!-- Logo -->
            <li class="i">
                <img class="image" src="img/up2.png" style="margin-right: 25px; margin-left: 20px;">
            </li>
            <!-- Home Button -->
            <a href="" class="text-decoration-none">
                <li class="home">
                    <!-- Div for ICON (svg) -->
                    <div class="h">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"
                            focusable="false" class="style-scope yt-icon"
                            style="pointer-events: none; display: block; width: 100%; height: 100%;">
                            <g class="style-scope yt-icon">
                                <path d="M4,10V21h6V15h4v6h6V10L12,3Z" class="style-scope yt-icon"></path>
                            </g>
                        </svg>
                    </div>
                    <div class="text-light font-weight-bold">Home</div>
            </a>
            <!-- First Button Ends -->

            <li class="text">
                <a href="">
                    <div class="search">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path
                                d="M10.034,18.069a7.982,7.982,0,0,0,3.939-1.035l3.332,3.332a2.164,2.164,0,0,0,3.061-3.061L17.031,13.97a8.026,8.026,0,1,0-7,4.1ZM5.768,5.768A6.033,6.033,0,1,1,4,10.035,5.988,5.988,0,0,1,5.768,5.768Zm-.7,4.267a1.015,1.015,0,0,1,1-1.018.985.985,0,0,1,1,.983v.035A2.968,2.968,0,0,0,10.035,13a1,1,0,0,1,0,2A4.972,4.972,0,0,1,5.069,10.035Z" />
                        </svg>
                    </div>
                    <div class="text-light">Search</div>
            </li></a>

            <!--  -->
            <li class="text">
                <a href="">
                    <div class="play">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path
                                d="M20.246,3.754V3.067a2.062,2.062,0,0,0-4.123,0v.687H14.061V3.067a2.061,2.061,0,0,0-4.122,0v.687H7.877V3.067a2.062,2.062,0,0,0-4.123,0v.687A2.751,2.751,0,0,0,1.006,6.5V20.246a2.751,2.751,0,0,0,2.748,2.748H20.246a2.751,2.751,0,0,0,2.748-2.748V6.5A2.751,2.751,0,0,0,20.246,3.754Zm-3.092-.687a1.031,1.031,0,1,1,2.061,0V5.386a1.031,1.031,0,1,1-2.061,0Zm-6.185,0a1.031,1.031,0,1,1,2.062,0V5.386a1.031,1.031,0,1,1-2.062,0Zm-6.184,0a1.031,1.031,0,1,1,2.061,0V5.386a1.031,1.031,0,1,1-2.061,0ZM21.964,20.246a1.72,1.72,0,0,1-1.718,1.718H3.754a1.72,1.72,0,0,1-1.718-1.718V6.5A1.72,1.72,0,0,1,3.754,4.785v.6a2.062,2.062,0,1,0,4.123,0v-.6H9.939v.6a2.061,2.061,0,1,0,4.122,0v-.6h2.062v.6a2.062,2.062,0,1,0,4.123,0v-.6A1.72,1.72,0,0,1,21.964,6.5Z" />
                            <path
                                d="M15,10.349h0a2.768,2.768,0,0,0-3,.64,2.768,2.768,0,0,0-3-.64,3.066,3.066,0,0,0-1.724,2.044,2.688,2.688,0,0,0,.463,2.3c.718.929,3.79,3.683,3.92,3.8a.514.514,0,0,0,.688,0c.13-.117,3.2-2.871,3.92-3.8a2.688,2.688,0,0,0,.463-2.3A3.066,3.066,0,0,0,15,10.349Zm.445,3.714A47.223,47.223,0,0,1,12,17.415a47.016,47.016,0,0,1-3.448-3.352,1.667,1.667,0,0,1-.278-1.424,2.036,2.036,0,0,1,1.153-1.353,1.312,1.312,0,0,1,.559-.124,2.467,2.467,0,0,1,1.616.882.515.515,0,0,0,.4.188h0a.518.518,0,0,0,.4-.186c.043-.052,1.073-1.269,2.175-.76a2.035,2.035,0,0,1,1.154,1.353A1.667,1.667,0,0,1,15.448,14.063Z" />
                        </svg>
                    </div>
                    <div class="text-light">Playlist</div>
            </li></a>
            <!--  -->

            <li class="text">
                <a href="">
                    <div class="categ">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"
                            focusable="false" class="style-scope yt-icon"
                            style="pointer-events: none; display: block; width: 100%; height: 100%;">
                            <g class="style-scope yt-icon">
                                <path
                                    d="M10,18v-6l5,3L10,18z M17,3H7v1h10V3z M20,6H4v1h16V6z M22,9H2v12h20V9z M3,10h18v10H3V10z"
                                    class="style-scope yt-icon"></path>
                            </g>
                        </svg>
                    </div>
                    <div class="text-light">Categories</div>
                </a>
            </li>
            <!--  -->

            <li class="text">
                <a href="">
                    <div class="series">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"
                            focusable="false" class="style-scope yt-icon"
                            style="pointer-events: none; display: block; width: 100%; height: 100%;">
                            <g class="style-scope yt-icon">
                                <path
                                    d="M11,7l6,3.5L11,14V7L11,7z M18,20H4V6H3v15h15V20z M21,18H6V3h15V18z M7,17h13V4H7V17z"
                                    class="style-scope yt-icon"></path>
                            </g>
                        </svg>
                    </div>
                    <div class="text-light">Series</div>
                </a>
            </li>
            <!--  -->

            <li class="text1">

                <a href="" data-toggle="modal" data-target="#exampleModal">
                    <div class="notif">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" style="padding-top: 35%;">
                            <path
                                d="M20,18H4l2-2V10a6,6,0,0,1,5-5.91V3a1,1,0,0,1,2,0V4.09a5.9,5.9,0,0,1,1.3.4A3.992,3.992,0,0,0,18,10v6Zm-8,4a2,2,0,0,0,2-2H10A2,2,0,0,0,12,22ZM18,4a2,2,0,1,0,2,2A2,2,0,0,0,18,4Z" />
                        </svg>
                    </div>
                </a>
                <a href=""><img class="pp" src="disneyplus-clone/disney/pp.png"></a>

            </li>
        </ul>
    </nav>
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
                        <!-- These are just the SVG logo -->
                    </div>
                    <a href="" class="text-white">
                        <div class="menu-text"> Settings</div>
                    </a>
                </div>
            </div>
        </div>
        <div class="content">

            <div id="carouselExampleControls" class="carousel slide" style=" 
                     z-index: 2;
                     filter: drop-shadow(10px 10px 20px rgba(0, 0,0, 0.69));
                     margin-bottom: 2%;" data-ride="carousel">
                <div class="carousel-inner ">
                    <div class="carousel-item active" style="width:100%;">
                        <img class="object-fit-cover  rounded" id="responsive" src="img/original.jfif"
                            alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="object-fit-cover  rounded" id="responsive" src="img/original.jfif"
                            alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="object-fit-cover rounded" id="responsive" src="img/original.jfif" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" style="border-radius: 5%;" href="#carouselExampleControls"
                    role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="brand-flex">
                <div class="flex">
                    <a href="marvel-page.html">
                        <img class="star" src="disney/scale (3).png">
                        <video class="video2" width="142" height="82" autoplay loop>
                            <source src="disneyplus-clone/star-wars.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex">
                    <a href="marvel-page.html">
                        <img class="star" src="disney/scale2.png">
                        <video class="video2" width="142" height="82" autoplay loop>
                            <source src="disney/marvel.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex">
                    <a href="marvel-page.html">
                        <img class="star" src="disney/scale (5).png">
                        <video class="video2" width="142" height="82" autoplay loop>
                            <source src="disney/hansa3.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex">
                    <a href="marvel-page.html">
                        <img class="star" src="disney/scale.png">
                        <video class="video2" width="142" height="82" autoplay loop>
                            <source src="disney/disney.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex">
                    <a href="marvel-page.html">
                        <img class="star" src="disney/scale (4).png ">
                        <video class="video2" width="142" height="82" autoplay loop>
                            <source src="disney/national-geographic.mp4" type="video/mp4">
                        </video></a>
                </div>
            </div>




            <p class="para-format"
                style="font-family: Jaldi; font-weight: lighter; font-size: 150%; margin:1% 0 1% 0;padding-left: 5%;  color:#ffffff;">
                Just For You</p>

            <!-- cards try -->

            <div class="card-deck" style="width:98%; margin-bottom: 4%;">
                <div class="card"
                    style=" margin-left:6%; background-color: #1E1F26;  box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top" style="font-size: 100%; font-family: Jaldi;" src="img/original.jfif"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">Card title</h5>
                        <p class="card-text text-muted" style="font-size: 100%; font-family: Jaldi;">This is a wider
                            card with supporting text below as a natural lead-in to additional content. This content is
                            a little bit longer.</p>
                    </div>
                    <div class="card-footer">
                        <small><a href="watch.jsp"><button type="button"
                                    class="btn btn-outline-dark text-white">Watch</button></a>
                            <button type="button" class="save-button" data-toggle="modal"
                                data-target="#exampleModalCenter">
                                <img style="display:block; width: 100%; " src="img/sun1.png">

                            </button>
                        </small></a></small>
                    </div>
                </div>

                <!-- card ends -->

                <div class="card" style="background-color: #1E1F26; box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top " src="img/original.jfif" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">Card title</h5>
                        <p class="card-text text-muted" style="font-size: 100%; font-family: Jaldi;">This is a wider
                            card with supporting text below as a natural lead-in to additional content. This content is
                            a little bit longer.</p>
                    </div>
                    <div class="card-footer">
                        <small><button type="button" class="btn btn-outline-dark text-white">Watch</button>
                            <button type="button" class="save-button" data-toggle="modal"
                                data-target="#exampleModalCenter">
                                <img style="display:block; width: 100%; " src="img/sun1.png">

                            </button>
                        </small>
                    </div>
                </div>

                <div class="card" style="background-color: #1E1F26;  box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top" src="img/original.jfif" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">Card title</h5>
                        <p class="card-text  text-muted" style="font-size: 100%; font-family: Jaldi;">This card has
                            supporting text below as a natural lead-in to additional content.</p>
                    </div>
                    <div class="card-footer">
                        <small><button type="button" class="btn btn-outline-dark text-white">Watch</button>
                            <button type="button" class="save-button" data-toggle="modal"
                                data-target="#exampleModalCenter">
                                <img style="display:block; width: 100%; " src="img/sun1.png">

                            </button>
                        </small></small>
                    </div>
                </div>

                <div class="card" style="background-color: #1E1F26;  box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top" src="img/original.jfif" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">Card title</h5>
                        <p class="card-text text-muted" style="font-size: 100%; font-family: Jaldi;">This is a wider
                            card with supporting text below as a natural lead-in to additional content. This card has
                            even longer content than the first to show that equal height action.</p>
                    </div>
                    <div class="card-footer">
                        <small><button type="button" class="btn btn-outline-dark text-white">Watch</button>
                            <button type="button" class="save-button" data-toggle="modal"
                                data-target="#exampleModalCenter">
                                <img style="display:block; width: 100%; " src="img/sun1.png">

                            </button>
                        </small></small>
                    </div>
                </div>
            </div>


            <!-- 2nd row -->
            <p class="para-format"
                style="font-family: Jaldi; font-weight: lighter; font-size: 150%; padding-left: 5%;  color:#ffffff;">
                Explore More</p>
            <!-- first card: -->
            <c:forEach items="${name}" var="nam">
                <div class="card-deck" style="width:98%; margin-bottom: 5%;">
                    <div class="card"
                        style=" margin-left:6%; background-color: #1E1F26;  box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                        <img class="card-img-top" style="font-size: 100%; font-family: Jaldi;" src="img/original.jfif"
                            alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title text-white" style="font-family: Jaldi;">${nam.name}</h5>
                            <p class="card-text text-muted" style="font-size: 100%; font-family: Jaldi;">This is a wider
                                card with supporting text below as a natural lead-in to additional content. This content
                                is
                                a little bit longer.</p>
                        </div>
                        <div class="card-footer">
                            <small><button type="button" class="btn btn-outline-dark text-white">Watch</button>
                                <button type="button" class="save-button" data-toggle="modal"
                                    data-target="#exampleModalCenter">
                                    <img style="display:block; width: 100%; " src="img/sun1.png">

                                </button>
                            </small>
                        </div>
                    </div>


            </c:forEach>


            <!-- 2nd Row Cards -->
            <div class="card" style="background-color: #1E1F26; box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                <img class="card-img-top " src="img/original.jfif" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title text-white" style="font-family: Jaldi;">Card title</h5>
                    <p class="card-text text-muted" style="font-size: 100%; font-family: Jaldi;">This is a wider
                        card with supporting text below as a natural lead-in to additional content. This content is
                        a little bit longer.</p>
                </div>
                <div class="card-footer">
                    <small><button type="button" class="btn btn-outline-dark text-white">Watch</button>
                        <button type="button" class="save-button" data-toggle="modal" data-target="#exampleModalCenter">
                            <img style="display:block; width: 100%; " src="img/sun1.png">

                        </button>
                    </small></a>
                </div>
            </div>
            <div class="card" style="background-color: #1E1F26;  box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                <img class="card-img-top" src="img/original.jfif" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title text-white" style="font-family: Jaldi;">Card title</h5>
                    <p class="card-text  text-muted" style="font-size: 100%; font-family: Jaldi;">This card has
                        supporting text below as a natural lead-in to additional content.</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted"> <small><button type="button"
                                class="btn btn-outline-dark text-white">Watch</button>
                            <button type="button" class="save-button" data-toggle="modal"
                                data-target="#exampleModalCenter">
                                <img style="display:block; width: 100%; " src="img/sun1.png">
                            </button> </small></a></small>
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






    <div class="friend">
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