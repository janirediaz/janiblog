<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Lista Usuarios</title>
</head>

<br>
<g:each in="${listaUsuarios}" var="usuario">
    <p>Usuario: ${usuario.nombre} ${usuario.apellido} Edad: ${usuario.edad}</p>
    <a href="http://localhost:8080/admin/delete?id=${usuario.id}">Borrar usuario</a>
    <a href="http://localhost:8080/admin/getUser?id=${usuario.id}">Detalle de Usuario</a>
</g:each>

<input type="submit" value="Agregar User">

<br><a href="http://localhost:8080/admin/index">Index</a></br>


</body>
</html>

