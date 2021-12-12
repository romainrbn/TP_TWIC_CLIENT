package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaBeans.Ville;
import com.javaBeansUtils.RestClient;

/**
 * Servlet implementation class Tp1Servlet
 */
@WebServlet("/ListeVilleServlet")
public class ListeVilleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListeVilleServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Ville> listevilles = RestClient.getListeVilles();
		request.setAttribute("listevilles", listevilles);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/listeville.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String codeInsee = request.getParameter("delete");
		RestClient.DeleteVille(codeInsee);
		System.out.println("Ville suppr :" + codeInsee);

		this.doGet(request, response);

		// this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request,response);
	}

}
