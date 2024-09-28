<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Ejercicio.Contact2"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/contacts.css">
</head>
<body>

	<%
	/*
	Contact2 contact = (Contact2) request.getAttribute("contact");
	String docu = (String) request.getAttribute("docu");
	File f = new File(docu);
	try {
		FileWriter fw = new FileWriter(f, true);
		fw.write(contact.toString() + "\n");
		fw.close();

	} catch (IOException e) {
		e.printStackTrace();
	}
	try {
		FileReader fr = new FileReader(f);
		BufferedReader br = new BufferedReader(fr);
		String linea = br.readLine();
		while (linea != null) {
			out.println("<h5>" + linea + " </h5>");
			linea = br.readLine();
		}

	} catch (FileNotFoundException e) {
		e.printStackTrace();
	}
	;*/

	//Contact2 contact = (Contact2) request.getAttribute("contact");
	%>
	<div>
	<a href="index.jsp">Volver al formulario</a>
		<%
		ArrayList<Contact2> lista = (ArrayList<Contact2>) request.getAttribute("lista");

		if (lista != null && !lista.isEmpty()) {
			out.print("<h1>Contactos Guardados:</h1>");
			out.print("<ul>");
			/*for (Contact2 contact : lista) {
				out.print("<li>" + contact.getNombre() + " - " + contact.getTlf() + "</li>");
			}*/
			int i = 0;
			while (i < lista.size()) {
				Contact2 contact = lista.get(i);
				out.print("<li>" + contact.getNombre() + " - " + contact.getTlf() + "</li>");
				i++;
			}
			out.print("</ul>");
		} else {
			out.print("<h1>No hay contactos guardados.</h1>");
		}
		%>
	</div>

</body>
</html>