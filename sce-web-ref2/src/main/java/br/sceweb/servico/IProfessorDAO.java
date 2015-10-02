package br.sceweb.servico;

import br.sceweb.dominio.Professor;

public interface IProfessorDAO {
	public Professor Consultar(Professor professor);
}
