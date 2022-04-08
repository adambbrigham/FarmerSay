
<%@ page import="java.util.Random" %>
<%@ page import="com.example.farm.AnimalFactory" %>
<%@ page import="com.example.farm.Animal" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <meta name="theme-color" content="#fafafa">
    <title>JSP - Farm</title>
</head>
<%
    Random random = new Random();
    int pointerDegree = random.nextInt(360);
%>
<body>
<h1 style="text-align: center;"><%= "Farmer Says See N Say" %>
</h1>

<script src="js/vendor/modernizr-3.11.2.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/farm.js"></script>

<!--  <div class="flex-container">-->
<div class="img-container">
    <img src="FarmerToyBody.png" class="toyBody" alt="body of toy">
    <img id = "FarmPointer" src="FarmPointer.png" class="toyPointer" alt="pointer of toy">
</div>

<div class="flex-container">
    <form method="Post" action="farm">
        <input type ="hidden" name = "startDegrees" value = "<%=pointerDegree%>" />
        <button type = submit class = button style="position: center">Play!!</button>
    </form>
</div>



<br/>
<%--<a href="${pageContext.request.contextPath}/farm">Begin</a>--%>


</body>
<script>
    setPointer(`<%=pointerDegree%>`);
</script>
</html>

