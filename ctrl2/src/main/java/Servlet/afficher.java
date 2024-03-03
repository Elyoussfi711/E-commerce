package Servlet;

import java.io.IOException;
import DAO.implementDao;
import DAO.interfaceDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.USER;

@WebServlet(urlPatterns = { "/", "/index", "/lister" })
public class afficher extends HttpServlet {
	private static final long serialVersion0UID = 1L;
	private interfaceDao DAO = new implementDao();

	public afficher() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getServletPath().equals("/")) {
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

		} else {
			doPost(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getServletPath().equals("/lister")) {

			request.setAttribute("USER", DAO.lister());

			this.getServletContext().getRequestDispatcher("/lister.jsp").forward(request, response);
		}

		if (request.getServletPath().equals("/index")) {

			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}

	}

}
