<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Demoderar comentario</title>
</head>

<body>

<g:each in="${p.comentarios}" var="comment">
    <a href="http://localhost:8080/admin/demoderateComment?id=${comment.id}">Desmoderar comentario</a>
    <g:if test="${comment.moderated}">
        ${comment.contenido}<br/>
    </g:if>

</g:each>

