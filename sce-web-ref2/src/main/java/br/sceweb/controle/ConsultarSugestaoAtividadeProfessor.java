package br.sceweb.controle;

//import java.util.List; n�o est� sendo usado

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;

public class ConsultarSugestaoAtividadeProfessor implements IComando {
	
	SugestaoAtividadeRepositorio sugestaoAtividadeRepositorio;
/**
* O comando mostra a sugest�o selecionada e seleciona o sgbd desejado
* HIBERNATE = 1
* MYSQL=2
*/
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		
		sugestaoAtividadeRepositorio = new SugestaoAtividadeRepositorio(1);
		SugestaoAtividade sa = new SugestaoAtividade();
		sa.setCodigo(Integer.parseInt(request.getParameter("codigoRadio")));
		//inst�ncia ir� retorna a Sugest�o Atividade conforme o c�digo do radio Button selecionado
		SugestaoAtividade sugestaoAtividade = sugestaoAtividadeRepositorio.Consultar(sa);
		request.setAttribute("sugestaoAtividade", sugestaoAtividade);	
		
		//PODERIA HAVER UM IF para ALUNO e PROFESSOR ?
		return "/visao/TelasTCCv4/TelaConsultarSugestaoAtividadeProfessor.jsp";
	}


}
