package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AtcompPendenteAprovacaoTO;

public interface IAlunoDAO {
	
	public Aluno Consultar(Aluno aluno);
	public List<AtcompPendenteAprovacaoTO> ListarAlunosPendentesProfessor(String campoBusca, String valorBusca);
}
