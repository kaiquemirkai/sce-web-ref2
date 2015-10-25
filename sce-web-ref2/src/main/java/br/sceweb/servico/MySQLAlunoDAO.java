package br.sceweb.servico;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.sceweb.dominio.Aluno;
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
	public List<Aluno> ListarAlunosPendentesProfessor() {
		ResultSet rs = null;
		PreparedStatement stmt;
		String erro = "";
		List<Aluno> lista = new ArrayList<Aluno>();
		
		try {
			
			Login login =LoginRepositorio.RetornaUsuarioLogado();		
			ProfessorRepositorio professorRepositorio = new ProfessorRepositorio(1);
			Professor professor = new Professor();
			professor.setCodigoLogin(login.getCodigo());
			professor = professorRepositorio.Consultar(professor);
			
            String query = "SELECT alun.* FROM aluno alun inner join atcomp atc on alun.codigo = atc.codigoAluno " + 
 			" WHERE atc.codigoAluno IN (SELECT alu.codigo FROM aluno AS alu WHERE alu.turma IN " + 
 			" (SELECT ppf.turma FROM perfilprofessor AS ppf WHERE ppf.codigoProfessor = ?)) " +
 			" AND atc.status = ? order by atc.codigo asc" ;
			stmt = MySQLDAOFactory.criaConexao().prepareStatement(query);
			stmt.setLong(1, professor.getCodigo());
			stmt.setString(2, "Pendente");
			rs = stmt.executeQuery();
			
			while(rs.next()){		
				Aluno aluno = new Aluno();
				aluno.setCodigo(rs.getLong("codigo"));
				aluno.setArea(rs.getString("area"));
				aluno.setCurso(rs.getString("curso"));
				aluno.setNome(rs.getString("nome"));
				aluno.setRa(rs.getString("ra"));
				aluno.setTurma(rs.getString("turma"));
				lista.add(aluno);			 

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
