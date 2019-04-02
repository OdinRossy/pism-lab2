<%@ page import="com.odinrossy.pismlab2.services.WatchesService" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String[] parametersToCheck = {"mechanism", "type", "brand"};
    WatchesService.checkParameters(session, response, parametersToCheck);
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
            <h1>Спасибо, мы подобрали для Вас часы!</h1>
            <div class="img-brand">
                <img src="../resources/assets/<%=WatchesService
                .getImageSourceByBrand(session,  WatchesService.getParameter(session, "brand"))%>"
                     style="width: 150px" alt="Cannot load image">
            </div>
            <div>
                <p><%=WatchesService.generateAnswer(session, request)%></p>
            </div>
        </div>
    </body>
</html>