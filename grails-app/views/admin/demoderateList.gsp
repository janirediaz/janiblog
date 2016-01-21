<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Demoderar comentario</title>
</head>

<body>

<g:each in="${listaComments}" var="comments">
        ${comments.contenido}<br/>
        <a href="http://localhost:8080/admin/demoderateComment?id=${comments.id}">Desmoderar comentario</a>
</g:each>

