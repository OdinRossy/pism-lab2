<%@ page import="com.odinrossy.pismlab2.services.WatchesService" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    response.setCharacterEncoding("UTF-8");
    WatchesService.checkParameters(request, response, "brand");
    WatchesService.writeInSession(session, request, "brand");
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
            <h4>Вы выбрали часы от бренда <%=WatchesService.getParameter(request, "brand")%></h4>
            <h2>Теперь выберите основные характеристики часов:</h2>
            <form action="comments.jsp" method="post">
                <h4>1. Механизм:</h4>
                <div>
                    <div class="input-radio">
                        <input type="radio" id="quartz" name="mechanism" value="quartz" checked>
                        <label for="quartz">Кварцевый</label>
                    </div>
                    <div class="input-radio">
                        <input type="radio" id="mechanical" name="mechanism" value="mechanical">
                        <label for="mechanical">Механический</label>
                    </div>
                    <div class="input-radio">
                        <input type="radio" id="electronic" name="mechanism" value="electronic">
                        <label for="electronic">Электронный</label>
                    </div>
                </div>
                <hr>
                <div>
                    <h4>2. Тип:</h4>
                    <div class="input-radio">
                        <input type="radio" id="man" name="type" value="man" checked>
                        <label for="man">Мужские</label>
                    </div>
                    <div class="input-radio">
                        <input type="radio" id="woman" name="type" value="woman">
                        <label for="woman">Женские</label>
                    </div>
                    <div class="input-radio">
                        <input type="radio" id="is-child" name="type" value="child">
                        <label for="is-child">Детские</label>
                    </div>
                </div>
                <hr>
                <div>
                    <h4>3. Дополнительные параметры:</h4>
                    <div class="input-radio">
                        <input type="checkbox" id="is-waterproof" name="isWaterproof">
                        <label for="is-waterproof">Влагозащита (IP-68)</label>
                    </div>
                    <div class="input-radio">
                        <input type="checkbox" id="is-glass-protected" name="isGlassProtected">
                        <label for="is-glass-protected">Закаленное стекло</label>
                    </div>
                </div>
                <input type="submit" class="btn-submit smooth-shadow">
            </form>
        </div>
    </body>
</html>
