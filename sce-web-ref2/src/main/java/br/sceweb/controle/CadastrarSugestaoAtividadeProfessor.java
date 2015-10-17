package br.sceweb.controle;


//import java.io.*;//para importar o System.out.println();

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AlunoRepositorio;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.Professor;
import br.sceweb.dominio.ProfessorRepositorio;
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
		

		LoginRepositorio loginRepositorio = new LoginRepositorio(1);
		Login login = new Login();
		login = loginRepositorio.RetornaUsuarioLogado();
		ProfessorRepositorio professorRepositorio = new ProfessorRepositorio(1);
		Professor professor = new Professor();
		professor.setCodigoLogin(login.getCodigo());
		professor = professorRepositorio.Consultar(professor);
		
		sugestaoAtividade.setCodigoCadastro(professor.getCodigoLogin());
		sugestaoAtividade.setCodigo(0);
		sugestaoAtividade.setQuemCadastrou(professor.getNome());
		sugestaoAtividade.setNomeSugestaoAtividade(request.getParameter("txtTema"));
		sugestaoAtividade.setArea(request.getParameter("sltAreaAtividade"));
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String data = sdf.format(new Date());
		sugestaoAtividade.setDataCadastro(data);//será usado o DATE TIME NOW
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
