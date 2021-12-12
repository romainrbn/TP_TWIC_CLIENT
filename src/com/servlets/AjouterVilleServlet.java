package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaBeans.Ville;
import com.javaBeansUtils.RestClient;

/**
 * Servlet implementation class AjouterVilleServlet
 */
@WebServlet("/AjouterVilleServlet")
public class AjouterVilleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjouterVilleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/ajouter.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		
		String codeInsee = request.getParameter("codeINSEE");
		
		String nomcom = request.getParameter("nomcom");

        String cp = request.getParameter("cp");

        String libelle = request.getParameter("libelle");

        String ligne5 = request.getParameter("ligne5");

        String latitude = request.getParameter("latitude");

        String longitude = request.getParameter("longitude");

        
        Ville nouvelleVille = new Ville(codeInsee,nomcom,cp,libelle,ligne5,latitude,longitude);
        RestClient.creerVille(nouvelleVille);

		this.doGet(request, response);
	}

}
