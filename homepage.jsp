<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.servlet.http.HttpSession" %>
<% session=request.getSession(false);

if(session.getAttribute("fullname")!=null) {
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="icon" href="img/icons/ico.ico" />

    <title>Stream.ly</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jaldi:wght@400;700&display=swap" />
    <link rel="stylesheet" href="css/grid.css" />

    <link rel="stylesheet" href="css/flex.css" />
            <link rel="stylesheet" href="css/best.css" />

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

</head>
<style>
    
    body {
        background-color: #1A1D29;
        width: 100%;
        --font-jaldi: Jaldi;
        --font-inherit: inherit;
    }
    .content {
    grid-area: c;
  grid-row: 1/-1;
grid-column: 2/-1;
}
.friend {
    grid-row: 1/-1;
    grid-column: 1/2;
    /* grid-area: f; */
    margin-right: 18%;
    /*background-color: #1E1F26;*/
    box-shadow: 3px 0px 9px rgba(0, 0, 0, 0.25);
    border-radius: 9px;
    width: 100%;
}
nav {
  width: 100%;
  background-color: #1c1c1c12;
}
.ul-flex{
    display: flex;
    width: 100%;
    padding-top: 2%;
    gap: 8%;
    font-size: 18px;
    background-color: #1c1c1c12;
}

    a {
        text-decoration: none !important;
        color: white;
    }

    a:hover {
        text-decoration: none !important;
        color: white;
    }


   .friend-flex {
  display: flex;
  flex-direction: column;
  padding-left: 35%;
  padding-top: 8%;
}

    .add-friends-logo {
        width: 40%;
        padding-bottom: 0;
    }

    .home1{
        padding-top:0;
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
        width: 100%;
        
        border-style: solid;
        border: #484235;
        border-radius: 50%;
        border-bottom-width: 1px;
/*            border-bottom-style: solid;
            margin-right: 0px;
            border-top-width: 1px;
            border-top-style: solid;
            border-left-width: 1px;
            border-left-style: solid;
            border-right-width: 1px;
            border-right-style: solid;
            border-radius: 50%;*/
    }
    .first-flex {
    display: flex;
    flex-direction: row;
    width: 100%;
    background-color: #1c1c1c12;
    box-shadow: 9px 2px 10px 2px rgba(0, 0, 0, 0.25);
    margin: 0;
    padding: 0;
    align-items: center;
    flex-wrap: wrap;
}
.streamly-flex{
    display: flex;
    padding-left:18%;
    width:80%;
    justify-content: center;
    align-items:center;
}
div<.streamly-flex{
    justify-content: center;
    align-items:center;
}

</style>
  <title>Streamly | Homepage</title>

<body>
    <!-- Navigation Bar Starts -->

    <div class="first-flex" >
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
                            <a href="/Stream/mediaServ?page=series" style="font-weight: lighter;">Series</a></li>
                    </div>
                    
                    <div class="home-flex">
                        <img style="width: 15px;" src="img/watch later.svg">
                        <li class="home1">
                            <a href="LoginServ?page=savelist" style="font-weight: lighter;">Saved</a></li>
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
                <a href="UserServlet?page=userPro">
                    <div class="p">
                        <img class="pp" src="img/pp.png">
                    </div>
                </a>
            </div>

        </div>


    </div>


    <div class="main" >
       

        <div class="friend">
            <div class="friend-flex">
                <div class="add-friends-logo">


                    <div class="container h-100">
                        <div class="d-flex justify-content-center h-100">
                            <form action="servlet1?s=<%=request.getParameter("search")%>
                              " method="post">
                                <div class="searchbar">
                                        

                                    <input class="search_input" type="text" name="search" placeholder="">
                                    
                                    <div class="search_icon">
                                        <img src="img/search-svg.svg" style="transform: rotate(90deg); width:100%;"></a></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                              <div class="streamly-flex">
            <div><img class="friends-pic" src="img/s.png"></div>
            <div><img class="friends-pic" src="img/s1.png"></div>
            <div><img class="friends-pic" src="img/s12.png"></div>
            <div><img class="friends-pic" src="img/s2.png"></div>
            <div><img class="friends-pic" src="img/s3.png"></div>
            <div><img class="friends-pic" src="img/s4.png"></div>
            <div><img class="friends-pic" src="img/s5.png"></div>
            <div><img class="friends-pic" src="img/s6.png"></div></div>
                     <p class="para-format" style="padding:5% 0 0 20%; font-family: Jaldi; font-size:120%;">Platforms</p>
                       <div class="brand-flex1">
                <div class="flex1">
                    <a href="subpages/star-page.jsp">
                        <img class="star1" src="disney/scale (5).png">
                        <img src="disney/han.gif" class="video21" width="120" height="70"></a>
                </div>                    
                <div class="flex1">
                    <a href="subpages/disney-page.jsp">
                        <img class="star1" src="disney/scale.png">
                        <video class="video21" width="120" height="82" autoplay loop>
                            <source src="disney/disney.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex1">
                    <a href="subpages/star-wars-page.jsp">
                        <img class="star1" src="disney/scale (3).png">
                        <video class="video21" width="120" height="82" autoplay loop>
                            <source src="disneyplus-clone/star-wars.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex1">
                    <a href="subpages/marvel-page.jsp">
                        <img class="star1" src="disney/scale2.png">
                        <video class="video21" width="120" height="82" autoplay loop>
                            <source src="disney/marvel.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex1">
                    <a href="subpages/netflix-page.jsp">
                        <img class="star1" style="width:132px; " src="disney/net.png ">
                        <img src="disney/net.gif" class="video21" width="120" height="74">
                    </a>
                </div>
                <div class="flex1">
                    <a href="subpages/netflix-page.jsp">
                        <img class="star1" style="width:132px; height:40px;" src="disney/hbo.png ">
                    </a>
                </div>
                      
            </div>
    </div>
        <div class="content" >

            <div id="carouselExampleControls" class="carousel slide" data-pause="hover" data-interval="2500"style=" 
   z-index: 2;
             filter: drop-shadow(10px 10px 20px rgba(0, 0,0, 0.69));
            margin-bottom: 2%; margin-top: 2%;" data-ride="carousel">
                <div class="carousel-inner ">
                    <div class="carousel-item active" style="width:100%;">
                        <a href="movie.jsp"><img class="object-fit-cover  rounded" id="responsive"
                                src="img/original.png" alt="First slide"></a>
                    </div>
                    <div class="carousel-item">
                        <img class="object-fit-cover  rounded" id="responsive" src="img/netflix.png"
                            alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="object-fit-cover rounded" id="responsive" src="img/natgeo-bg1.jfif" alt="Third slide">
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
                    <a href="subpages/star-wars-page.jsp">
                        <img class="star" src="disney/scale (3).png">
                        <video class="video2" width="143" height="84" autoplay loop>
                            <source src="disneyplus-clone/star-wars.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex">
                    <a href="subpages/marvel-page.jsp">
                        <img class="star" src="disney/scale2.png">
                        <video class="video2" width="142" height="82" autoplay loop>
                            <source src="disney/marvel.mp4" type="video/mp4">
                        </video></a>
                </div>
                <div class="flex">
                    <a href="subpages/star-page.jsp">
                        <img class="star" src="disney/scale (5).png">
                        <img src="disney/han.gif" class="video2" width="142" height="84"></a>
                </div>
              
                <div class="flex">
                    <a href="subpages/netflix-page.jsp">
                        <img class="star" style="width:132px;" src="disney/net.png ">
                        <img src="disney/net.gif" class="video2" width="142" height="84">
                    </a>
                </div>
                  <div class="flex">
                    <a href="subpages/disney-page.jsp">
                        <img class="star" src="disney/scale.png">
                        <video class="video2" width="142" height="82" autoplay loop>
                            <source src="disney/disney.mp4" type="video/mp4">
                        </video></a>
                </div>
            </div>




            <p class="para-format"
                style="font-family: Jaldi; font-weight: lighter; font-size: 150%; margin:1% 0 1% 0;padding-left: 6%;  color:#ffffff;">
                Welcome To Streamly, <%=session.getAttribute("fullname")%>.</p>

            <!-- cards try -->
            <div class="card-deck col-lg-12 row-md-6" style="width:98%; margin-bottom: 4%;">
                            <c:forEach items="${mediaList}" var="name">

                <div class="card"
        style=" margin-left:6%; background-color: #1E1F26; 
                   box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top" style="font-size: 100%; font-family: Jaldi;" src="img/${name.thumb}"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">${name.name}</h5>
                        <p class="card-text text-muted" style="font-size: 100%; font-family: Jaldi;">${name.des}</p>
                    </div>
                    <div class="card-footer">
                        <small><a href="/Stream/mediaServ?page=newlist&mid=${name.mid}">
                                <button type="button"
            class="btn btn-outline-dark text-white">Watch</button></a>
            
                            <a href="/Stream/LoginServ?page=newlist&mid=${name.mid}">
                                <button type="submit" class="save-button">
                                <img style="display:block; width: 60%; padding-top: 35%; " src="img/watch later.svg">

                                </button>
<!--                              <button type="submit" class="save-button" data-toggle="modal"
                                data-target="#exampleModalCenter">
                                <img style="display:block; width: 100%; " src="img/sun1.png">

                                </button></a>-->
                        </small></a></small>
                    </div>
                </div>
                        
             
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content w-75" style="background-color: #232323;">
                        <div class="modal-header">
                            <h5 class="modal-title text-light" id="exampleModalLongTitle">Save</h5>
                            <button type="button text-light" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true" class="text-danger">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body text-light">
                            <div class="input-group mb-3 ">

                                
                                <div class="form-check">
                                <form action="/Stream/LoginServ?page=editUser&edit=${name.mid}" method="post">

                                    <input class="form-check-input" type="checkbox" name="${name.mid}"value="${name.mid}" id="defaultCheck0">
                                    <label class="form-check-label" for="defaultCheck0">
                                       Watch-Later
                                    </label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">                       

                         <button type="submit" class="btn btn-outline-dark text-white">Save</button></input>

                                                    </form>

                        </div>
                    </div>
                </div>
            </div>
           
 
</c:forEach>
                <!-- card ends -->

                

            </div>


            <!-- 2nd row -->
            <p class="para-format"
                style="font-family: Jaldi; font-weight: lighter; font-size: 150%; padding-left: 5%;  color:#ffffff;">
                Explore More</p>
            <!-- first card: -->
            <div class="card-deck" style="width:98%; margin-bottom: 5%;">
                <div class="card"
                    style=" margin-left:6%; background-color: #1E1F26;  box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top" style="font-size: 100%; font-family: Jaldi;" src="img/original.jfif"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">Alita: Battle Angel</h5>
                        <p class="card-text text-muted" style="font-size: 100%; font-family: Jaldi;">Rosa Salazar stars through motion-capture animation as Alita.</p>
                    </div>
                    <div class="card-footer">
                        <small><form method="post" action="/Stream/mediaServ?page=watchnow">
                                <input type="submit" value="Watch Now" class="btn btn-outline-dark text-white"
                                    placeholder="Watch Now" />
                                <!--<button type="button" class="btn btn-outline-dark text-white">Watch Now</button>-->
                                <button type="button" class="save-button" data-toggle="modal"
                                    data-target="#exampleModalCenter">
                                    <img style="display:block; width: 100%; " src="img/sun1.png">

                                </button>
                        </small>
                        </form>
                    </div>
                </div>
                <!-- 2nd Row Cards -->
                <div class="card" style="background-color: #1E1F26; box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top " src="img/original.jfif" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">Revenge Of The Sith</h5>
                        <p class="card-text text-muted" style="font-size: 100%; font-family: Jaldi;">This is a wider
                            card with supporting text below as a natural lead-in to additional content. This content is
                            a little bit longer.</p>
                    </div>
                    <div class="card-footer">
                        <small><a href="/Stream/mediaServ?page=watchnow&mid=23"><button type="button" class="btn btn-outline-dark text-white">Watch Now</button>
                            <button type="button" class="save-button" data-toggle="modal"
                                data-target="#exampleModalCenter">
                                <img style="display:block; width: 100%; " src="img/sun1.png">

                            </button>
                        </small></a>
                    </div>
                </div>
                <div class="card" style="background-color: #1E1F26;  box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top" src="img/original.jfif" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">F.R.I.E.N.D.S</h5>
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
                <div class="card" style="background-color: #1E1F26;  box-shadow: 4px 6px 0px rgba(66, 84, 128, 0.308);">
                    <img class="card-img-top" src="img/original.jfif" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-white" style="font-family: Jaldi;">Khichdi</h5>
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
                    </div>
                </div>
            </div>


            <!-- pop up for save playlist try -->





            
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
            <h3 style="font-family: Jaldi;">- Centralized Streaming Platform -</h3>
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
        <%}
else {
response.sendRedirect("login.jsp");
}
%>   
</body>

</html>