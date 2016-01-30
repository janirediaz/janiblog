<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Formulario de resgistro</title>
</head>

<h3>Formulario de registro</h3>
<form action="http://localhost:8080/admin/saveUser" method="get">
    Nombre:<br><input type="text" name="nombre"></br>
    Apellido:<br><input type="text" name="apellido"></br>
    Edad:<br><input type="text" name="edad"></br>
    Nombre usuario:<br><input type="text" name="user"></br>
    Password:<br><input type="text" name="password"></br>


    <input type="submit" value="Enviar">

</form>
<a href="http://localhost:8080/admin/lista">Lista Usuarios</a>



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
</body>
</html>