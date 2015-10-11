package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AlunoRepositorio;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.Professor;
import br.sceweb.dominio.ProfessorRepositorio;
import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;


public class HomeAluno implements IComando {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		Login login = new Login();
		LoginRepositorio loginRepositorio = new LoginRepositorio(1);
		login = loginRepositorio.RetornaUsuarioLogado();
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
			
		
		return url;
	}
	
	
}
