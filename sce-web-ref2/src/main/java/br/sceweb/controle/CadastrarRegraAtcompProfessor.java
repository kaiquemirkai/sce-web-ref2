package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompFachada;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class CadastrarRegraAtcompProfessor implements IComando{
	RegraAtcompRepositorio rarepositorio;
	RegraAtcomp regraAtcomp;
	public CadastrarRegraAtcompProfessor(){
		
		regraAtcomp = new RegraAtcomp();
		rarepositorio = new RegraAtcompRepositorio(1);
	}
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		
		regraAtcomp.setArea(request.getParameter("sltArea"));	
		regraAtcomp.setCodigoAtividade(request.getParameter("txtCodigoAtividade"));	
		regraAtcomp.setQuantidadeDeAtividadePermitida(Integer.parseInt(request.getParameter("txtQuantidadeAtividadePermitida")));		
		regraAtcomp.setCargaHoraria(Integer.parseInt(request.getParameter("txtCargaHorariaAtividade")));		
		regraAtcomp.setDataInicioAtividade(request.getParameter("txtDataInicioAtividade"));		
		regraAtcomp.setDataTerminoAtividade(request.getParameter("txtDataTerminoAtividade"));		
		regraAtcomp.setDescricaoRegra(request.getParameter("txtDescricaoRegra"));		
		regraAtcomp.setCodigo(0);	
		
		if (rarepositorio.Cadastrar(regraAtcomp) ){
		
					
			url = "/visao/TelasTCCv4/TelaListarRegraAtcompProfessor.jsp";		
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv4/TelaListarRegraAtcompProfessor.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}

