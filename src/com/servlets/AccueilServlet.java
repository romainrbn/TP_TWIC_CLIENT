package com.servlets;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javaBeans.Ville;
import com.javaBeansUtils.RestClient;

/**
 * Servlet implementation class Tp1Servlet
 */
@WebServlet("/AccueilServlet")
public class AccueilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccueilServlet() {
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
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String codeVille1 = request.getParameter("selectville1");
        String codeVille2 = request.getParameter("selectville2");
        Ville lv1 = RestClient.getVillebyCodeInsee(codeVille1);
        Ville lv2 = RestClient.getVillebyCodeInsee(codeVille2);
        
        double distance = lv1.calculerDistance(lv2);
        NumberFormat nf = new DecimalFormat("0.###");
        String s = nf.format(distance);
        
        String lv1Lowercase = lv1.getNomCommune().substring(0, 1).toUpperCase() + lv1.getNomCommune().toLowerCase().substring(1);
        String lv2Lowercase = lv2.getNomCommune().substring(0, 1).toUpperCase() + lv2.getNomCommune().toLowerCase().substring(1);
        
        HttpSession session = request.getSession();
        session.setAttribute("ville1",lv1Lowercase);
        session.setAttribute("ville2",lv2Lowercase);
        session.setAttribute("distance",s);
        
		
		this.doGet(request, response);
	}

}
