<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Ejercicio.Contact2"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buscar</title>
<link rel="stylesheet" type="text/css" href="./css/contacts.css">
</head>
<body>

	<div>
		<a href="index.jsp">Volver al formulario</a>
		<%
		String busca = (String) request.getAttribute("buscar");
		ArrayList<Contact2> listaSinFiltrar = (ArrayList<Contact2>) request.getAttribute("lista");
		boolean pass = true;
		out.print("<h1>Contactos Guardados:</h1>");
		if (listaSinFiltrar != null && !listaSinFiltrar.isEmpty()) {
			out.print("<ul>");
			for (Contact2 contact : listaSinFiltrar) {
				if (contact.getNombre().toLowerCase().contains(busca)) {
			out.print("<li>" + contact.getNombre() + " - " + contact.getTlf() + "</li>");
			pass = false;
				}
			}
			out.print("</ul>");
		} else {
			out.print("<h1>No hay contactos</h1>");
		}
		if (pass) {
			out.print("<h1>NO EXISTE</h1>");

		}
		%>
	</div>
</body>
</html>