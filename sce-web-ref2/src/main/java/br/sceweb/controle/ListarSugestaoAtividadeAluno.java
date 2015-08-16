package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;

public class ListarSugestaoAtividadeAluno implements IComando {

	SugestaoAtividadeRepositorio sugestaoAtividadeRepositorio;
/**
 * O comando mostra todas Sugestões de Atividadese e seleciona o sgbd desejado
 * HIBERNATE = 1
 * MYSQL=2
 */
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		
		sugestaoAtividadeRepositorio = new SugestaoAtividadeRepositorio(1);
		List<SugestaoAtividade> sugestaoAtividades = sugestaoAtividadeRepositorio.Listar();
		request.setAttribute("sugestaoAtividades", sugestaoAtividades);
		return "/visao/TelasTCCv4/TelaListarSugestaoAtividadeAluno.jsp";
	}

}



