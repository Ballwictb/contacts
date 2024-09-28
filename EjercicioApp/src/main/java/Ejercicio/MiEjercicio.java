package Ejercicio;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class MiEjercicio
 */
@WebServlet("/MiEjercicio")
public class MiEjercicio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MiEjercicio() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		// String nombre = request.getParameter("nombre");
		String accion = request.getParameter("accion");
		if ("vercontactos".equals(accion)) {
			ArrayList<Contact2> contact_list = DataAccess.getAllContacts();
			request.setAttribute("lista", contact_list);
			request.getRequestDispatcher("paginataller.jsp").forward(request, response);
		}

		String busca = request.getParameter("search");

		ArrayList<Contact2> contact_list = DataAccess.getAllContacts();
		request.setAttribute("lista", contact_list);
		request.setAttribute("buscar", busca);
		request.getRequestDispatcher("Buscar.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

			// Si ya se ha seleccionado el archivo, procesamos el contacto
			String nombre = request.getParameter("nombre");
			String tlf = request.getParameter("tlf");

			Contact2 contact = new Contact2(nombre, tlf);
			DataAccess.registerContact(contact);

			ArrayList<Contact2> contact_list = DataAccess.getAllContacts();
			request.setAttribute("contact", contact);
			request.setAttribute("lista", contact_list);

			request.getRequestDispatcher("paginataller.jsp").forward(request, response);


	}

}
