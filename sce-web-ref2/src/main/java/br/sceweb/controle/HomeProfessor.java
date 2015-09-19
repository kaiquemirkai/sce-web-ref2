package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AlunoRepositorio;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;

public class HomeProfessor implements IComando {
	
	
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
			AtcompRepositorio atcompRepositorio = new AtcompRepositorio(1);
			
			int quantidadeAtcompPendente = atcompRepositorio.QuantidadeAtcompsPorStatus("Pendente"); 
			request.setAttribute("quantidadePendente", quantidadeAtcompPendente);
			url = "/visao/TelasTCCv4/HomeProfessor.jsp";			
			request.setAttribute("erro", null);
		
		return url;
	}

}
