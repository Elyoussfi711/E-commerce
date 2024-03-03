package Servlet;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.*;

import metier.USER;

/**
 * Servlet implementation class ajouter
 */
@WebServlet(urlPatterns = { "/ajouter", "/ajouter.php" })
public class ajouter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private interfaceDao dao = new implementDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ajouter() {
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
		if (request.getServletPath().equals("/ajouter.php")) {
			USER u = new USER();
			String password =request.getParameter("password");
			//CrYpTaGe MD5
			MessageDigest md = null;
			try {
				md = MessageDigest.getInstance("md5");
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            byte[] hashInBytes = md.digest(password.getBytes(StandardCharsets.UTF_8));


            StringBuilder sb = new StringBuilder();

            for (byte b : hashInBytes) {
                sb.append(String.format("%02x", b));
            }
			u.setLogin(request.getParameter("user"));
			u.setMdp(sb.toString());
			dao.ajouter(u);
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		if (request.getServletPath().equals("/ajouter")) {
				
			request.setAttribute("users", dao.lister());
			this.getServletContext().getRequestDispatcher("/ajouter.jsp").forward(request, response);
		}
	}

}
