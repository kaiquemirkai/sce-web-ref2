package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Fachada;
import br.sceweb.dominio.Login;

public class AcessarLogin implements IComando{
	Fachada fachada;
	public AcessarLogin(){
		fachada = new Fachada();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		Login login = new Login();
		
		login = fachada.login(request.getParameter("txtLogin"), request.getParameter("txtSenha"));
		
		if (login != null ){
			url = "/visao/TelasTCCv4/TelaCadastrarAtcompAluno.jsp";			
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv3/Pages_Aluno/CadastrarAtividades.html";
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}