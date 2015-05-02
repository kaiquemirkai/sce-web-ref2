package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.sceweb.dominio.Fachada;

public class Login implements IComando{
	Fachada fachada;
	public Login(){
		fachada = new Fachada();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		if (fachada.login(request.getParameter("txtRA"), request.getParameter("txtSenha")) ){
			url = "/visao/FormMenu.jsp";
			request.setAttribute("erro", null);
		} else {
			url = "/visao/index.jsp";
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}