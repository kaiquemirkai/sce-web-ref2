package br.sceweb.controle;


//import java.io.*;//para importar o System.out.println();

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;


//ESTÁ CLASSE SERVLET SERÁ CHAMADA PELA CLASSE ServletContrle.java

public class CadastrarSugestaoAtividadeProfessor implements IComando{
	
	SugestaoAtividadeFachada fachadaSugestaoAtividade;
	SugestaoAtividade sugestaoAtividade;
	
	public CadastrarSugestaoAtividadeProfessor(){
		fachadaSugestaoAtividade = new SugestaoAtividadeFachada();
		sugestaoAtividade = new SugestaoAtividade();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		sugestaoAtividade.setCodigo(0);
		sugestaoAtividade.setQuemCadastrou("Pedro");
		sugestaoAtividade.setNomeSugestaoAtividade(request.getParameter("txtTema"));
		sugestaoAtividade.setArea(request.getParameter("sltAreaAtividade"));
		sugestaoAtividade.setDataCadastro("26/07/2015");//será usado o DATE TIME NOW
		sugestaoAtividade.setCategoria(request.getParameter("txtCategoria"));
		sugestaoAtividade.setDataVigenciaInicio(request.getParameter("txtDataCadastroInicio"));
		sugestaoAtividade.setDataVigenciaFim(request.getParameter("txtDataCadastroFim"));
		sugestaoAtividade.setDescricao(request.getParameter("txtDescricaoAtividade"));
		System.out.println(">>>>>>>>>>>Pegou todos os dados da JSP");
				
		// RETORNA BOOLEANA
		if (fachadaSugestaoAtividade.Cadastrar(sugestaoAtividade) ){//metodo CADASTRA
			url = "/visao/TelasTCCv4/TelaListarSugestaoAtividadeProfessor.jsp";			
			request.setAttribute("erro", null);// VER ?
		//SE DER ERRO OU BOOLEAN = FALSE	
		} else {
			url = "/visao/TelasTCCv4/TelaListarSugestaoAtividadeProfessor.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}
