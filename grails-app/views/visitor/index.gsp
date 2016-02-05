<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script>
        function cambioPagina(numero){
            $('#pagina').val(numero);
            $('#formulario').submit();
        }
    </script>
    <script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
    <title>Lista de Posts</title>
</head>

<body>
<form id="formulario" method="get" action="index">
    <input type="hidden" name="pagina" id="pagina">
<label for="lista">Elige una opción</label><br/>
<select onchange="cambioPagina(1)" id="lista" name="listaPost">
    <option value="" selected="selected">- Selecciona una opción -</option>
    <option value="5"> 5 </option>
    <option value="10"> 10 </option>
    <option value="15"> 15 </option>
</select>
</form>
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
<div ALIGN=center style="color:deeppink">
    <p>Usuario: ${user.nombre} ${user.apellido} Edad: ${user.edad}</p>
</div>

<div ALIGN=left>
<g:each in="${listaPost}" var="post">
    <p><b><a href="http://localhost:8080/visitor/detallePost?id=${post.id}"> Titulo: ${post.titulo}</a></b>
        <br/>Contenido: ${post.descripcion}</p>
</g:each>
    <g:if test="${pagina != 1}">
        <a href="#" onclick="cambioPagina(${pagina - 1})">Anterior</a>
    </g:if>
<g:each in="${(1..(listaTotal.size() / 5))}" var="numero">
    <g:if test="${pagina == numero}">
        <p><b><a href="#" onclick="cambioPagina(${numero})"><font color="red">pagina: ${numero}</font></a> </b></p>
    </g:if>
    <g:else>
        <p><b><a href="#" onclick="cambioPagina(${numero})">pagina: ${numero}</a> </b></p>
    </g:else>
</g:each>
    <g:if test="${pagina != 7}">
        <a href="#" onclick="cambioPagina(${pagina + 1})">Siguiente</a>
    </g:if>
</div>


<div onclick="datosUsuarioAjax()">
    Ver datos del usuario
</div>

<div id="datosUsuario">

</div>

</body>
</html>