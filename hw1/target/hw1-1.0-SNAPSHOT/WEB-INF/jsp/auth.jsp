<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Аутентификация</title>
    <link
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
            rel="stylesheet">
    <style>
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 400px;
            padding: 15px;
            margin: auto;
            background-color: white;
            border-radius: 7px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            margin-top: 100px;
        }

        .text-center {
            text-align: center;
        }

        .btn {
            width: 100%;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center">Войти</h2>
    <form action="AuthServlet" method="post" class="form-signin">
        <div class="form-group">
            <input type="text" name="username" class="form-control" placeholder="Имя пользователя" required autofocus>
        </div>
        <div class="form-group">
            <input type="password" name="password" class="form-control" placeholder="Пароль" required>
        </div>
        <div class="form-group form-check">
            <input type="checkbox" name="rememberMe" class="form-check-input" id="rememberMe">
            <label class="form-check-label" for="rememberMe">Запомнить меня</label>
        </div>
        <button class="btn btn-lg btn-primary" type="submit">Войти</button>
    </form>
    <p class="text-center">Еще нет аккаунта? <a href="GoToRegPageServlet">Зарегистрироваться</a></p>
</div>

</body>
</html>
