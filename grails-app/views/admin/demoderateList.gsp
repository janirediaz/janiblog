<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Demoderar comentario</title>
</head>

<body>

<g:each in="${p.comentarios}" var="comment">
    <g:link action="demoderateList" id="${comment.id}">
    <g:if test="${comment.moderated}">
        ${comment.contenido}<br/>
    </g:if>
    </g:link>
</g:each>

