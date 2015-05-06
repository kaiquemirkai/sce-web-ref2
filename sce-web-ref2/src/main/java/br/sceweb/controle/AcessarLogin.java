package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Fachada;

public class AcessarLogin implements IComando{
	Fachada fachada;
	public AcessarLogin(){
		fachada = new Fachada();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		
		if (fachada.login(request.getParameter("txtLogin"), request.getParameter("txtSenha")) ){
			url = "/visao/TelasTCCv3/Pages_Aluno/TelaInicialAluno.html";			
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv3/Pages_Aluno/CadastrarAtividades.html";
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}