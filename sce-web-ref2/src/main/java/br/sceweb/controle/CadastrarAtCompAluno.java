package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompFachada;
import br.sceweb.dominio.Fachada;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;

public class CadastrarAtCompAluno implements IComando{
	AtcompFachada fachadaAtcomp;
	Atcomp atcomp;
	public CadastrarAtCompAluno(){
		fachadaAtcomp = new AtcompFachada();
		atcomp = new Atcomp();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		
		Login login = new Login();
		login = LoginRepositorio.RetornaUsuarioLogado();
		
		
		atcomp.setAreaAtividade(request.getParameter("sltAreaAtividade"));
		atcomp.setCodigoAtividade(request.getParameter("sltCodigoAtividade"));
		atcomp.setDataInicio(request.getParameter("txtDataInicioAtividade"));
		atcomp.setHoraInicio(request.getParameter("txtHoraInicioAtividade"));
		atcomp.setDataFim(request.getParameter("txtDataTerminoAtividade"));
		atcomp.setHoraFim(request.getParameter("txtHoraTerminoAtividade"));
		atcomp.setDescricao(request.getParameter("txtDescricaoAtividade"));
		atcomp.setStatus("Pendente");
	    atcomp.setCodigo(0);	
	    atcomp.setCodigoAluno(login.getCodigo());
		// atcomp.setAnexo(request.getParameter("inputFile"));
				
		
		if (fachadaAtcomp.Cadastrar(atcomp) ){
			url = "/visao/TelasTCCv4/TelaListarAtcompAluno.jsp";			
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv4/TelaCadastrarAtcompAluno.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}