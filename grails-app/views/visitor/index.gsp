<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
    <title>Lista de Posts</title>
</head>

<body>
<script>
    function datosUsuarioAjax(){
        $.ajax({
            url: 'http://localhost:8080/visitor/getDetailUserAjax',
            type: 'GET',
            success: function(data) {
               $("#datosUsuario").text(data);
            },
            error: function(jqXHR, textStatus, error) {

                alert( "error: " + jqXHR.responseText);
            }
        });
    }
</script>
<div ALIGN=center style="color:green">
    <p>Usuario: ${user.nombre} ${user.apellido} Edad: ${user.edad}</p>
</div>

<div ALIGN=left>
<g:each in="${listaPost}" var="post">
    <p><b><a href="http://localhost:8080/visitor/detallePost?id=${post.id}"> Titulo: ${post.titulo}</a></b>
        <br/>Contenido: ${post.descripcion}</p>
</g:each>

<g:each in="${(1..(listaTotal.size() / 5))}" var="numero">
    <p><b><a href="http://localhost:8080/visitor/index?pagina=${numero}">pagina: ${numero}</a> </b></p>
</g:each>
</div>

<div onclick="datosUsuarioAjax()">
    Ver datos del usuario
</div>

<div id="datosUsuario">

</div>



</body>
</html>