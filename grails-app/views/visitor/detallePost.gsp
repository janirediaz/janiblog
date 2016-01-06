
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Detalle post: ${p.titulo} </title>
</head>

<body>
${p.titulo}<br/>
${p.descripcion}<br/>
<g:each in="${p.comentarios}" var="comment">
    ${comment.contenido}<br/>
</g:each>

<h3>Deja aquí algún comentario</h3>
<form action="http://localhost:8080/visitor/saveComment" method="get">
    Contenido:<br><textarea cols="20" rows="10" name="descripcion">Agrega aquí el comentario del post</textarea>

    <input type="submit" value="Enviar">
</form>
</body>
</html>