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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .btn-container {
            text-align: center;
        }

        .btn {
            width: 200px;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="btn-container">
        <a href="GoToAuthServlet" class="btn btn-lg btn-primary">Войти</a>
        <a href="GoToRegPageServlet" class="btn btn-lg btn-success">Зарегистрироваться</a>
    </div>
</div>

</body>
</html>
