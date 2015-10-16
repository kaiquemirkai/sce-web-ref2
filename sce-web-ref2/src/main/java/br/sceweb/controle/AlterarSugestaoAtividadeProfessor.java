package br.sceweb.controle;


//import java.io.*;//para importar o System.out.println();

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;


//ESTÁ CLASSE SERVLET SERÁ CHAMADA PELA CLASSE ServletContrle.java

public class AlterarSugestaoAtividadeProfessor implements IComando{
	
	SugestaoAtividadeFachada fachadaSugestaoAtividade;
	SugestaoAtividade sugestaoAtividade;
	
	public AlterarSugestaoAtividadeProfessor(){
		fachadaSugestaoAtividade = new SugestaoAtividadeFachada();
		sugestaoAtividade = new SugestaoAtividade();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		sugestaoAtividade.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
		sugestaoAtividade.setQuemCadastrou("Pedro");
		sugestaoAtividade.setNomeSugestaoAtividade(request.getParameter("txtTema"));
		sugestaoAtividade.setCategoria(request.getParameter("txtCategoria"));
		sugestaoAtividade.setArea(request.getParameter("txtAreaAtividade"));
		sugestaoAtividade.setDataCadastro(request.getParameter("txtDataCadastro")); 
		sugestaoAtividade.setDataVigenciaInicio(request.getParameter("txtDataCadastroInicio"));
		sugestaoAtividade.setDataVigenciaFim(request.getParameter("txtDataCadastroFim"));
		sugestaoAtividade.setDescricao(request.getParameter("txtDescricaoAtividade"));
		
				
		// Redirecionamento da URL  de sucesso x falha
		if (fachadaSugestaoAtividade.alterarSugestaoAtividade(sugestaoAtividade) ){//metodo CADASTRA
			url = "/visao/TelasTCCv4/TelaListarSugestaoAtividadeProfessor.jsp";			
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv4/TelaListarSugestaoAtividadeProfessor.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}
