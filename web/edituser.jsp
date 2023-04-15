<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />

  <link rel="stylesheet" href="css/global1.css" />
  <link rel="stylesheet" href="css/login.css" />
  <link rel="icon" href="img/icons/ico.ico" />
  <title>StreamHome</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jaldi:wght@400;700&display=swap" />

  <!-- Vendor CSS Files -->
  <link href=" vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href=" vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href=" vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href=" vendor/aos/aos.css" rel="stylesheet">
</head>

<body>
  <div class="tv-1">

    <div class="bg"></div>

    <img class="original-1-icon" alt="" src="img/original.jfif" />
    <div class="glassmorphism1"></div>
    <div class="welcome-to-screenhome1">Welcome To <a style="color: inherit;" href="index123.html">
        <span style="text-decoration: underline; ">SCREEN-HOME</span></a></div>
    <div class="dont-have-an-container1">
      <p class="dont-have-an-account-yet1">Don?t have an account yet?</p>
      <p class="get-your-subscription2">
        <a href="/Stream/register.jsp" <span class="get-your-subscription3">Get Your Subscription</span></a>
      </p>
    </div>
    <form action="LoginServ?page=editUser&id=<%
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               if(cookie.getName().equalsIgnoreCase("favmovie")){
               out.print(cookie.getValue());}
            }
         } 
      %>" method="POST">
      <div class="E">Fullname :</div>
      <div class="P">Password :</div>

      <input class="input-box-email1" type="text" name="fullname" placeholder="Enter Your Email" />
      <input class="input-box-password1" placeholder="Enter Your Password" name="password" type="password" />
      <div class="frame-item"></div>
  </div>
  <button class="button-login1">
    <button class="login-label1"></button><b class="log-in1">Log In</b>
  </button>
  </button>
  </form>

</body>

</html>