<!DOCTYPE blade.php>
<blade.php>

<head>
<title>Login</title>
</head>

<body>
<form method="get" action="{{ url('/admin') }}">
    Username:
    <input type="text" name="username"><br>
    Password:
    <input type="password" name="pw">
    <br><input type="submit" value="Login">
</form>


</body>
</blade.php>