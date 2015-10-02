package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AlunoRepositorio;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.Fachada;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.Professor;
import br.sceweb.dominio.ProfessorRepositorio;
import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;

public class AcessarLogin implements IComando{
	Fachada fachada;
	public AcessarLogin(){
		fachada = new Fachada();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		Login login = new Login();
		
		
		login = fachada.login(request.getParameter("txtLogin"), request.getParameter("txtSenha"));
		// Se existe um login verifica o perfil e chama a tela ideal
		if (login != null ){
			// Carrega os dados do perfil aluno
			if (login.getPerfil().equals("aluno"))
			{
			//Carregar dados usuário logado
			AlunoRepositorio alunoRepositorio = new AlunoRepositorio(1);
			Aluno aluno = new Aluno();
			aluno.setCodigo(login.getCodigo());
			aluno = alunoRepositorio.Consultar(aluno);
			
			request.setAttribute("nomeAluno", aluno.getNome());
			
			//Início preenchimento relatório
			
			AtcompRepositorio atcompRepositorio = new AtcompRepositorio(1);
			String tecnologica = atcompRepositorio.RelatorioHorasPorArea("01") + "";
			String tecnologicaDiferenca = 80 - Double.valueOf(tecnologica) + "";
			
			String cidada = atcompRepositorio.RelatorioHorasPorArea("03") + "";
			String cidadaDiferenca = 80 - Double.valueOf(cidada) + "";
			
			String cultural = atcompRepositorio.RelatorioHorasPorArea("02") + "";
			String culturalDiferenca = 80 - Double.valueOf(cultural) + "";
			
			request.setAttribute("tecnologica", tecnologica);
			request.setAttribute("tecnologicadif", tecnologicaDiferenca);
			
			request.setAttribute("cidada", cidada);
			request.setAttribute("cidadadif", cidadaDiferenca);
						
			request.setAttribute("cultural", cultural);			
			request.setAttribute("culturaldif", culturalDiferenca);
			
			
			//Quantidade atcomps aprovadas e pendentes
			
			int aprovado = 0;
			int pendente = 0;
			
			aprovado  = atcompRepositorio.QuantidadeAtcompsPorStatus("Aprovado");
			pendente = atcompRepositorio.QuantidadeAtcompsPorStatus("Pendente");
			
			
			request.setAttribute("aprovado", aprovado);
			request.setAttribute("pendente", pendente);
			
			
			//Lista das ultimas sugestoes cadastradas - 5
			
			SugestaoAtividadeRepositorio sugestaoAtividadeRepositorio = new SugestaoAtividadeRepositorio(1);
			List<SugestaoAtividade> sugestaoAtividadesRecentes = sugestaoAtividadeRepositorio.ListarSugestoesRecentes();
			request.setAttribute("sugestaoAtividadesRecentes", sugestaoAtividadesRecentes);
			
			
			
			url = "/visao/TelasTCCv4/HomeAluno.jsp";			
			request.setAttribute("erro", null);
			}
			
			// Carregar o perfil do professor
			else 
			{
				//carrega as atividades pendentes
				AtcompRepositorio atcompRepositorio = new AtcompRepositorio(1);				
				int quantidadeAtcompPendente = atcompRepositorio.QuantidadeAtcompsPorStatus("Pendente"); 
				request.setAttribute("quantidadePendente", quantidadeAtcompPendente);
				
				// carrega o nome do professor
				Professor professor = new Professor();
				professor.setCodigoLogin(login.getCodigo());
				ProfessorRepositorio professorRepositorio = new ProfessorRepositorio(1);
				professor = professorRepositorio.Consultar(professor);
				request.setAttribute("nomeProfessor", professor.getNome());
				
				
				url = "/visao/TelasTCCv4/HomeProfessor.jsp";			
				request.setAttribute("erro", null);
			}
			
			// Login inexistente ou invalido
		} else {
			url = "/visao/TelasTCCv4/HomeAluno.jsp";
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}