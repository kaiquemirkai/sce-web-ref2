package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompFachada;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class AlterarRegraAtcompProfessor implements IComando{
	RegraAtcompRepositorio rarepositorio;
	RegraAtcomp regraAtcomp;
	public AlterarRegraAtcompProfessor(){
		
		regraAtcomp = new RegraAtcomp();
		rarepositorio = new RegraAtcompRepositorio(1);
	}
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
String url = "";
		
		regraAtcomp.setArea(request.getParameter("txtArea"));	
		if(regraAtcomp.getArea().equals("Tecnológica"))
		{
			regraAtcomp.setArea("01");
		}
		if(regraAtcomp.getArea().equals("Sociocultural"))
		{
			regraAtcomp.setArea("02");
		}
		if(regraAtcomp.getArea().equals("Cidadã"))
		{
			regraAtcomp.setArea("03");
		}
		
		
		regraAtcomp.setCodigoAtividade(request.getParameter("txtCodigoAtividade"));	
		regraAtcomp.setQuantidadeDeAtividadePermitida(Integer.parseInt(request.getParameter("txtQuantidadeAtividadePermitida")));		
		regraAtcomp.setCargaHoraria(Integer.parseInt(request.getParameter("txtCargaHorariaAtividade")));		
		regraAtcomp.setDataInicioAtividade(request.getParameter("txtDataInicioAtividade"));		
		regraAtcomp.setDataTerminoAtividade(request.getParameter("txtDataTerminoAtividade"));		
		regraAtcomp.setDescricaoRegra(request.getParameter("txtDescricaoRegra"));		
		regraAtcomp.setCodigo(Integer.parseInt(request.getParameter("codigoRadio")));	
		
		if (rarepositorio.Alterar(regraAtcomp) ){
		
			url = "/visao/TelasTCCv4/TelaListarRegraAtcompProfessor.jsp";		
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv4/TelaListarRegraAtcompProfessor.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
}
}



