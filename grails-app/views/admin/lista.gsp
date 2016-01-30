<%@ page contentType="text/html;charset=UTF-8" %>
<br>
<head>
    <title>Lista Usuarios</title>
</head>

<br>
${flash.message}
<table border="1" style="width: 100%">
    <tr>
        <td><strong>Nombre<a href="http://localhost:8080/admin/lista?campo=nombre&modo=asc">asc</a> <a href="http://localhost:8080/admin/lista?campo=nombre&modo=desc">desc</a></strong></td>
        <td><strong>Apellido<a href="http://localhost:8080/admin/lista?campo=apellido&modo=asc">asc</a> <a href="http://localhost:8080/admin/lista?campo=apellido&modo=desc">desc</a></strong></td>
        <td><strong>Edad<a href="http://localhost:8080/admin/lista?campo=edad&modo=asc">asc</a> <a href="http://localhost:8080/admin/lista?campo=edad&modo=desc">desc</a></strong></td>
        <td><strong>Borrar Usuario</strong></td>
        <td><strong>Detalle Usuario</strong></td>
    </tr>
<g:each in="${listaUsuarios}" var="usuario">

        <tr>
            <td>${usuario.nombre}</td>
            <td>${usuario.apellido}</td>
            <td>${usuario.edad}</td>
            <td><a href="http://localhost:8080/admin/delete?id=${usuario.id}">Borrar usuario</a></td>
            <td><a href="http://localhost:8080/admin/getUser?id=${usuario.id}">Detalle de Usuario</a></td>
        </tr>

</g:each>
</table>


<br><a href="http://localhost:8080/admin/index">Agregar nuevo usuario</a></br>
<br><a href="http://localhost:8080/admin/dashBoard">Index</a></br>


</body>
</html>

