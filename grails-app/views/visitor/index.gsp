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

<a href="http://localhost:8080/visitor/index?pagina=1">pagina 1</a>
<a href="http://localhost:8080/visitor/index?pagina=2">pagina 2</a>
<a href="http://localhost:8080/visitor/index?pagina=3">pagina 3</a>
<a href="http://localhost:8080/visitor/index?pagina=4">pagina 4</a>
<a href="http://localhost:8080/visitor/index?pagina=5">pagina 5</a>

</body>
</html>