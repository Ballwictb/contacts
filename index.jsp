<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Ejercicio.Contact2"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contactos</title>
 <link rel="stylesheet" type="text/css" href="./css/index.css">
  <link rel="icon" href="./assets/list-icon.png" type="image/x-icon">
</head>
<body>
	 <div class="container">
        <h1>Formulario de Contacto</h1>

        <form action="MiEjercicio" method="post" class="form">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="tlf">Teléfono:</label>
                <input type="number" id="tlf" name="tlf" required>
            </div>
            <input type="submit" value="Guardar" class="btn">
        </form>

        <form action="MiEjercicio" method="get" class="form">
            <div class="form-group">
                <label for="search">Buscar:</label>
                <input type="text" id="search" name="search">
            </div>
            <input type="submit" value="Buscar" class="btn">
        </form>

        <a href="MiEjercicio?accion=vercontactos" class="link">Ver contactos</a>
    </div>

</body>
</html>