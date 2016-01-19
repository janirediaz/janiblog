<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Agregar nuevo post</title>
</head>

<h3>Agregar nuevo post</h3>
<form action="http://localhost:8080/admin/savePost" method="get">
    Título del post:<br><input type="text" name="titulo"></br>
    Contenido:<br><textarea cols="20" rows="10" name="descripcion">Agrega aquí el contenido de tu post</textarea>



    <input type="submit" value="Enviar">

</form>




<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
</body>
</html>