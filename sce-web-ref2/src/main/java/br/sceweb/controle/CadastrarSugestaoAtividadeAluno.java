package br.sceweb.controle;


//import java.io.*;//para importar o System.out.println();

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;


//EST� CLASSE SERVLET SER� CHAMADA PELA CLASSE ServletContrle.java

public class CadastrarSugestaoAtividadeAluno implements IComando{
	
	SugestaoAtividadeFachada fachadaSugestaoAtividade;
	SugestaoAtividade sugestaoAtividade;
	
	public CadastrarSugestaoAtividadeAluno(){
		fachadaSugestaoAtividade = new SugestaoAtividadeFachada();
		sugestaoAtividade = new SugestaoAtividade();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		sugestaoAtividade.setCodigo(0);//PRECISA DISSO ?, COMO O HIBERNATE FUNCIONA ?
		sugestaoAtividade.setQuemCadastrou("Pedro");
		sugestaoAtividade.setNomeSugestaoAtividade(request.getParameter("txtTema"));
		sugestaoAtividade.setArea(request.getParameter("sltAreaAtividade"));
		sugestaoAtividade.setDataCadastro(request.getParameter("txtDataCadastroInicio"));//ser� usado o DATE TIME NOW
		sugestaoAtividade.setCategoria(request.getParameter("txtCategoria"));
		sugestaoAtividade.setDataVigenciaInicio(request.getParameter("txtDataCadastroInicio"));
		sugestaoAtividade.setDataVigenciaFim(request.getParameter("txtDataCadastroFim"));
		sugestaoAtividade.setDescricao(request.getParameter("txtDescricaoAtividade"));
		System.out.println(">>>>>>>>>>>Pegou todos os dados da JSP");
				
		// Redirecionamento da URL  de sucesso x falha
		if (fachadaSugestaoAtividade.Cadastrar(sugestaoAtividade) ){//metodo CADASTRA
			url = "/visao/TelasTCCv4/TelaListarSugestaoAtividadeAluno.jsp";			
			request.setAttribute("erro", null);
			System.out.println(">>>>>>>>>>>>>>>cadastrou");
		} 
		else{
             
			url = "/visao/TelasTCCv4/TelaCadastrarSugestaoAtividadeAluno.jsp";	
			request.setAttribute("erro", "Erro: Dados inv�lidos!");
			System.out.println(">>>>>>>>>>>>>>>N�o cadastrou");

		}
				
		return url;
	}
}
