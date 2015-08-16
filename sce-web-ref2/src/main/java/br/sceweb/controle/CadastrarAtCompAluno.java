package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.*;

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
		String a1=request.getParameter("sltCodigoAtividade");
		String a2=request.getParameter("sltCodigoAtividade2");
		String a3=request.getParameter("sltCodigoAtividade3");
		
		RegraAtcompRepositorio regraAtcompRepositorio;
		regraAtcompRepositorio = new RegraAtcompRepositorio(1);
		List<RegraAtcomp> regraAtcomps = regraAtcompRepositorio.Listar();
		request.setAttribute("regraAtcomps", regraAtcomps);

		
		if(a1 != "100" ){
			
		
		atcomp.setCodigoAtividade(request.getParameter("sltCodigoAtividade"));
		
		
		}
	
		
	
	
		if(a3 != "100" )
		{
		
		atcomp.setCodigoAtividade(request.getParameter("sltCodigoAtividade3"));
		
		
		}
		
		
		if(a2 != "100" ){
			
			atcomp.setCodigoAtividade(request.getParameter("sltCodigoAtividade2"));
			
			}

		
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