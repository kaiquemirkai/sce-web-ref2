package br.sceweb.controle;



import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;




public class AlterarSugestaoAtividadeAluno implements IComando{
	
	SugestaoAtividadeFachada fachadaSugestaoAtividade;
	SugestaoAtividade sugestaoAtividade;
	SugestaoAtividadeRepositorio sugestaoAtividadeRepositorio = new SugestaoAtividadeRepositorio(1); 
	public AlterarSugestaoAtividadeAluno(){
		fachadaSugestaoAtividade = new SugestaoAtividadeFachada();
		sugestaoAtividade = new SugestaoAtividade();
		
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		
		
		
		sugestaoAtividade.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));		
		sugestaoAtividade = sugestaoAtividadeRepositorio.Consultar(sugestaoAtividade);
		sugestaoAtividade.setNomeSugestaoAtividade(request.getParameter("txtTema"));
		sugestaoAtividade.setCategoria(request.getParameter("txtCategoria"));
		sugestaoAtividade.setArea(request.getParameter("txtAreaAtividade"));
		sugestaoAtividade.setDataCadastro(request.getParameter("txtDataCadastro"));//será usado o DATE TIME NOW
		sugestaoAtividade.setDataVigenciaInicio(request.getParameter("txtDataCadastroInicio"));
		sugestaoAtividade.setDataVigenciaFim(request.getParameter("txtDataCadastroFim"));
		sugestaoAtividade.setDescricao(request.getParameter("txtDescricaoAtividade"));
		
				
		// Redirecionamento da URL  de sucesso x falha
		if (fachadaSugestaoAtividade.alterarSugestaoAtividade(sugestaoAtividade) ){//metodo CADASTRA
			url = "/visao/TelasTCCv4/TelaListarSugestaoAtividadeAluno.jsp";			
			request.setAttribute("erro", null);
		} 
		
		else {
			url = "/visao/TelasTCCv4/TelaListarSugestaoAtividadeAluno.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}
