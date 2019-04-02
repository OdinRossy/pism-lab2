<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>ПИСМ лабораторная работа 2</title>
        <link rel="stylesheet" href="resources/style/main.css">
    </head>
    <body>
        <div class="title">
            <img src="resources/assets/watch.png" class="img-title" alt="Cannot load image">
            <h1>Магазин наручных часов</h1>
        </div>
        <form action="jsp/watchesParameters.jsp" method="post">
            <div class="container">
                <h3>Выберите бренд:</h3>
                <div>
                    <label for="select"></label>
                    <select name="brand" id="select" class="input-select">
                        <option value="Swatch">Swatch</option>
                        <option value="Casio">Casio</option>
                        <option value="Rolex">Rolex</option>
                        <option value="Hublot">Hublot</option>
                    </select>
                </div>
                <input type="submit" class="btn-submit smooth-shadow">
            </div>
        </form>
    </body>
</html>