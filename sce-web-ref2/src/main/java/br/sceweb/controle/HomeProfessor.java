package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AlunoRepositorio;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.HoraMediaTurmaTO;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.Professor;
import br.sceweb.dominio.ProfessorRepositorio;
import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;

public class HomeProfessor implements IComando {
	
	
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
			AtcompRepositorio atcompRepositorio = new AtcompRepositorio(1);
			
			int quantidadeAtcompPendente = atcompRepositorio.QuantidadeAtcompsPorStatusProfessor("Pendente"); 
			request.setAttribute("quantidadePendente", quantidadeAtcompPendente);
			Login login = LoginRepositorio.RetornaUsuarioLogado();
			Professor professor = new Professor();
			professor.setCodigoLogin(login.getCodigo());
			ProfessorRepositorio professorRepositorio = new ProfessorRepositorio(1);
			professor = professorRepositorio.Consultar(professor);
			request.setAttribute("nomeProfessor", professor.getNome());
			
			AtcompRepositorio atcompRepositorioMysql = new AtcompRepositorio(2);
			List<HoraMediaTurmaTO> lista = atcompRepositorioMysql.ListarMediaHorasPorTurma(professor.getCodigo());
			
			String grafico = "[['Relatório Horas Médias Por Turma', 'Horas Média', 'Desvio Padrao', { role: 'annotation' } ], ";
				if ((lista!=null)&& (lista.size()>0))
				{
					HoraMediaTurmaTO horaMediaTurmaTO = null;
					for (int i = 0; i < lista.size() - 1 ; i++)
					{
					    
						horaMediaTurmaTO = (HoraMediaTurmaTO) lista.get(i);
					    grafico += "['" + horaMediaTurmaTO.getTurma() + "', " +
					    horaMediaTurmaTO.getMediaHorasTurma() + " ," + horaMediaTurmaTO.getDesvioPadrao() + " ,'' ],";
					}
					horaMediaTurmaTO = (HoraMediaTurmaTO) lista.get(lista.size()-1);
				    grafico += "['" + horaMediaTurmaTO.getTurma() + "', " +
				    horaMediaTurmaTO.getMediaHorasTurma() + " ," +horaMediaTurmaTO.getDesvioPadrao() + " ,'' ]]";
				}

			
			request.setAttribute("grafico", grafico);
			
			
			
			
			
			url = "/visao/TelasTCCv4/HomeProfessor.jsp";			
			request.setAttribute("erro", null);
			
		
		return url;
	}

}
