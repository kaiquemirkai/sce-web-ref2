package br.sceweb.servico;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AtcompPendenteAprovacaoTO;
import br.sceweb.dominio.Empresa;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.Professor;
import br.sceweb.dominio.ProfessorRepositorio;

public class MySQLAlunoDAO implements IAlunoDAO{
	
	
	public Aluno Consultar(Aluno aluno) {
		return null;

	}

	
	@Override
	public List<AtcompPendenteAprovacaoTO> ListarAlunosPendentesProfessor(String campoBusca,String valorBusca) {
		ResultSet rs = null;
		PreparedStatement stmt;
		String erro = "";
		List<AtcompPendenteAprovacaoTO> lista = new ArrayList<AtcompPendenteAprovacaoTO>();
		
		try {
			
			Login login =LoginRepositorio.RetornaUsuarioLogado();		
			ProfessorRepositorio professorRepositorio = new ProfessorRepositorio(1);
			Professor professor = new Professor();
			professor.setCodigoLogin(login.getCodigo());
			professor = professorRepositorio.Consultar(professor);
			
			
			String clausulaBusca = "";
			
			
			if(campoBusca.equals("nomeAluno"))
			{
				clausulaBusca = " and alun.nome like ?";
				
			}
			if(campoBusca.equals("turma"))
			{
				clausulaBusca = " and alun.turma like ?";
				
			}
			if(campoBusca.equals("curso"))
			{
				clausulaBusca = " and alun.curso like ?";
				
			}
			
			
			
			
            String query = "SELECT alun.*, atc.*, atc.codigo codigoatc FROM aluno alun inner join atcomp atc on alun.codigo = atc.codigoAluno " + 
 			" WHERE atc.codigoAluno IN (SELECT alu.codigo FROM aluno AS alu WHERE alu.turma IN " + 
 			" (SELECT ppf.turma FROM perfilprofessor AS ppf WHERE ppf.codigoProfessor = ?)) " +
 			" AND atc.status = ?" ;
            String order = " order by atc.codigo asc";
            
            
			stmt = MySQLDAOFactory.criaConexao().prepareStatement(query + clausulaBusca  + order );
			
			
			stmt.setLong(1, professor.getCodigo());
			stmt.setString(2, "Pendente");
			if(campoBusca.equals("nomeAluno"))
			{
				
				stmt.setString(3, "%" +valorBusca  +"%");
			}
			if(campoBusca.equals("turma"))
			{
				
				stmt.setString(3, "%" +valorBusca  +"%");
			}
			if(campoBusca.equals("curso"))
			{
				
				stmt.setString(3, "%" +valorBusca  +"%");
			}
			
			
			rs = stmt.executeQuery();
			
			while(rs.next()){		
				AtcompPendenteAprovacaoTO atcompPendenteAprovacaoTO = new AtcompPendenteAprovacaoTO();
				atcompPendenteAprovacaoTO.setCodigoAtcomp(rs.getLong("codigoatc"));
				atcompPendenteAprovacaoTO.setNomeAluno(rs.getString("nome"));
				atcompPendenteAprovacaoTO.setRa(rs.getString("ra"));
				atcompPendenteAprovacaoTO.setTurma(rs.getString("turma"));
				atcompPendenteAprovacaoTO.setCurso(rs.getString("curso"));
				atcompPendenteAprovacaoTO.setDescricao(rs.getString("descricao"));
				atcompPendenteAprovacaoTO.setStatus(rs.getString("status"));
				lista.add(atcompPendenteAprovacaoTO);			 

			}
			
			stmt.close();
		
			
			
			// stmt.close();
		} catch (SQLException e) {
			
			erro = e.getMessage();
			System.out.println(erro);
		}
		return lista;
	}
}
