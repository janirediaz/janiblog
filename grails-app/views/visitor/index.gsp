<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Lista de Posts</title>
</head>

<body>
<g:each in="${listaPost}" var="post">
    <p><b>Titulo: ${post.titulo}</b>
        <br/>Contenido: ${post.descripcion}</p>
</g:each>

</body>
</html>