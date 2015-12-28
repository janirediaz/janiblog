<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Formulario de modificacion de datos</title>
</head>
<h3>Formulario de modificacion</h3>
<form action="http://localhost:8080/user/updateUser" method="get">
    Nombre:<br><input type="text" name="nombre" value="${user.nombre}"></br>
    Apellido:<br><input type="text" name="apellido" value="${user.apellido}"></br>
    Edad:<br><input type="text" name="edad" value="${user.edad}"></br>
<input type="hidden" name="id" value="${user.id}">


<input type="submit" value="Guardar cambios">

</form>

<a href="http://localhost:8080/admin">Index</a>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
</body>
</html>