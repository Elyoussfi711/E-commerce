package Servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import DAO.implementDao;
import DAO.interfaceDao;
import metier.USER;

/**
 * Servlet implementation class modifier
 */
@WebServlet(urlPatterns = {"/modifier","/modifier.php","/modifier.do"})
public class modifier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private interfaceDao dao = new implementDao();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public modifier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
doPost(request, response);
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getServletPath().equals("/modifier.php")) {
			String ancienLogin = request.getParameter("ancienLogin");
			USER u = new USER();
			// u.setLogin(login);
			u.setLogin(request.getParameter("user"));
			u.setMdp(request.getParameter("password"));

			dao.modifier(u,ancienLogin);

			request.setAttribute("USER", dao.lister());
			request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			;
		}
		if(request.getServletPath().equals("/modifier")) {
			request.setAttribute("type", "disabled");
			request.setAttribute("USER", dao.lister());
			String message="Pour modifier un utilisateur  , veuillez cliquez sur  EDIT dans la ligne d'utilisateur souhaitee";
			request.setAttribute("message", message);
			this.getServletContext().getRequestDispatcher("/modifier.jsp").forward(request, response);

		}
		
		if(request.getServletPath().equals("/modifier.do")) {
			String login = request.getParameter("login");
			USER l = dao.getLogin(login);
			request.setAttribute("login", l);
			request.setAttribute("type", "");
			request.setAttribute("USER", dao.lister());
			request.setAttribute("message", "");
			this.getServletContext().getRequestDispatcher("/modifier.jsp").forward(request, response);

		}
	}

}
