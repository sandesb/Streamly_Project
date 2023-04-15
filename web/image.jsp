<%@page import="java.util.Base64"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
    <title>File Upload</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .main {
            width: 300px;
            height: 400px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            border: 2px solid;
        }

        form {
            position: relative;
            display: block;
            margin: 20px auto;
        }

        input {
            margin: 10px 0;
        }
    </style>
</head>

<body>

    <div class="main">
        <form action="/Stream/LoginServ?page=video" method="POST">
            <label>First Name:</label>
            <input type="text" name="desc" placeholder="..........." /><br>
            <label>Last Name:</label>

            <input type="text" name="thumb" placeholder="..........." />

            <input type="file" name="image" />
            <input type="submit" placeholder="Submit" />



        </form>
                                        <c:forEach items="${mediaList}" var="userList">

        <!--<img style="width:200px; height:150px;border-radius: 60%;" src="<%=request.getParameter("movieThumb")%>">-->
         <img style="width:200px; height:150px;border-radius: 60%;" src="${userList.thumbnail}">

        <p>${userList.movie_desc}</p>

    </div>
                                </c:forEach>



</body>

</html>