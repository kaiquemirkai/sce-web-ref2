package br.sceweb.controle;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import br.sceweb.dominio.Empresa;
import br.sceweb.dominio.Fachada;


/**
 * Servlet implementation class ServletControle
 */
@WebServlet(name = "ServletControle2", urlPatterns = { "/ServletControle2" })
public class ServletControle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = Logger.getLogger(ServletControle.class);
	String mensagem = "";
	Fachada fachada;
	String cnpjParaExclusao = "" ;//seta o cnpj para exclusao

	/**
	 * Default constructor.
	 */
	public ServletControle() {
		// TODO Auto-generated constructor stub
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("erro", null);
		executaComando(request, response);
	}

	
	protected void executaComando(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String parametro = request.getParameter("acao");
		logger.info(">>>>>>>>>>>>>>>>>>>>>>>>>acao do servletcontrole = " + parametro);
		String nomeDaClasse = "br.sceweb.controle." + parametro;
		String url ="";
		try {
			Class classe = Class.forName(nomeDaClasse);
			IComando comando = (IComando) classe.newInstance();
			url = comando.executa(request, response);
			request.getRequestDispatcher(url).forward(request, response);
		} catch (Exception e) {
			request.getRequestDispatcher(url).forward(request, response);
			//throw new ServletException("A lógica de aplicação causou uma exceção", e);
		}
	}
	
}
