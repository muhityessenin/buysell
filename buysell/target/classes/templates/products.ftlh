<!DOCTYPE  html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>
    BUYSELL
</h1><hr>
<h4>Товары со всей Казахстана</h4>
<form action="/" method="get">
    Поиск по названию объявления: <input type="text" name="title"><br>
    <input type="submit" value="Поиск">
</form>
<#list products as product>
    <div>
        <p>
            <b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">Подробнее...</a>
        </p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название объявление: <input type="text" name="title"/><br><br>
    Описание объявление: <input type="text" name="description"/><br><br>
    Цена : <input type="number" name="price"/><br><br>
    Город: <input type="text" name="city"/><br><br>
    Имя: <input type="text" name="name"/><br><br>
    Первая фотография: <input type="file" name="file1"/><br><br>
    Вторая фотография: <input type="file" name="file2"/><br><br>
    Третья фотография: <input type="file" name="file3"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>