<%@ page import="java.util.Random" %>
<%@ page import="com.example.farm.AnimalFactory" %>
<%@ page import="com.example.farm.Animal" %><%--
  Created by IntelliJ IDEA.
  User: adamb
  Date: 4/2/2022
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <meta name="theme-color" content="#fafafa">
    <title>JSP - Play</title>
</head>
<%
    String soundName = (String) request.getAttribute("call");
    String fileName = "/" + soundName;
    System.out.println(soundName);
    Random random = new Random();
    int pointerDegree = random.nextInt(360);
%>
<body>
<h1 style="text-align: center;"><%= "Farmer Says See N Say" %>
</h1>

<audio autoplay>
    <source src="<%=fileName%>" type="audio/mpeg">
</audio>
<script src="js/vendor/modernizr-3.11.2.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/farm.js"></script>

<div class="img-container">
    <img src="FarmerToyBody.png"  class="toyBody" alt="body of toy">
    <img id = "FarmPointer" src="FarmPointer.png" class="toyPointer" alt="pointer of toy">
</div>

<div id="fc" class="flex-container">
    <button id = readyButton class="button" onclick="setValue(document.getElementById(`formToServlet`),
                                                              document.getElementById(`readyButton`))">
        Ready!!
    </button>
    <form name="form" method="Post" action="farm" id = "formToServlet">
        <!-- this is added by javascript innerHTML -->
    </form>
</div>

</body>

<script>
    spin(document.getElementById('FarmPointer'));
    setPointer(`<%=pointerDegree%>`);
</script>

</html>
