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
import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;


//ESTÁ CLASSE SERVLET SERÁ CHAMADA PELA CLASSE ServletContrle.java

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
		
		LoginRepositorio loginRepositorio = new LoginRepositorio(1);
		Login login = new Login();
		login = loginRepositorio.RetornaUsuarioLogado();
		AlunoRepositorio alunoRepositorio = new AlunoRepositorio(1);
		Aluno aluno = new Aluno();
		aluno.setCodigo(login.getCodigo());
		aluno = alunoRepositorio.Consultar(aluno);
		System.out.println(aluno.getCodigo());
		sugestaoAtividade.setCodigoCadastro(aluno.getCodigo());
		sugestaoAtividade.setCodigo(0);
		sugestaoAtividade.setQuemCadastrou(aluno.getNome());
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
				
		// Redirecionamento da URL  de sucesso x falha
		if (fachadaSugestaoAtividade.Cadastrar(sugestaoAtividade) ){//metodo CADASTRA
			url = "/visao/TelasTCCv4/TelaListarSugestaoAtividadeAluno.jsp";			
			request.setAttribute("erro", null);
			System.out.println(">>>>>>>>>>>>>>>cadastrou");
		} 
		else{
             
			url = "/visao/TelasTCCv4/TelaCadastrarSugestaoAtividadeAluno.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
			System.out.println(">>>>>>>>>>>>>>>Não cadastrou");

		}
				
		return url;
	}
}
