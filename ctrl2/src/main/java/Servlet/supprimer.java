package Servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import DAO.implementDao;
import DAO.interfaceDao;

/**
 * Servlet implementation class supprimer
 */
@WebServlet(urlPatterns = {"/supprimer","/supprimer.php"})
public class supprimer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private interfaceDao dao = new implementDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public supprimer() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getServletPath().equals("/supprimer.php")) {

			String login = request.getParameter("login");
			dao.supprimer(login);
			
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
	    if(request.getServletPath().equals("/supprimer")) {
			request.setAttribute("USER", dao.lister());
	    	this.getServletContext().getRequestDispatcher("/supprimer.jsp").forward(request, response);
	    	
	    }
	}

}
