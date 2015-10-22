package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Aluno;

public interface IAlunoDAO {
	
	public Aluno Consultar(Aluno aluno);
	public List<Aluno> ListarAlunosPendentesProfessor();
}
