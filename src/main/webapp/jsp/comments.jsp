<%@ page import="com.odinrossy.pismlab2.services.WatchesService" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    response.setCharacterEncoding("UTF-8");
    String[] parametersToWrite = {"mechanism", "type", "isWaterproof", "isGlassProtected"};
    String[] parametersToCheck = {"mechanism", "type"};
    WatchesService.checkParameters(request, response, parametersToCheck);
    WatchesService.writeInSession(session, request,parametersToWrite);

%>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>ПИСМ лабораторная работа 2</title>
        <link rel="stylesheet" href="../resources/style/main.css">
    </head>
    <body>
        <div class="title">
            <img src="../resources/assets/watch.png" class="img-title" alt="Cannot load image">
            <h1>Магазин наручных часов</h1>
        </div>
        <div class="container">
            <form action="result.jsp" method="post">
                <div class="input-radio">
                    <label for="comment">
                        <h2>Комментарий к заказу:</h2>
                    </label>
                    <textarea name="comment" id="comment" cols="32" rows="10" style="width: 20%"></textarea>
                </div>
                <input type="submit" class="btn-submit smooth-shadow">
            </form>
        </div>
    </body>
</html>
