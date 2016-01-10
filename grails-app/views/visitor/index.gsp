<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Lista de Posts</title>
</head>

<body>
<g:each in="${listaPost}" var="post">
    <p><b><a href="http://localhost:8080/visitor/detallePost?id=${post.id}"> Titulo: ${post.titulo}</a></b>
        <br/>Contenido: ${post.descripcion}</p>

</g:each>

</body>
</html>