package br.sceweb.dominio;

import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.IProfessorDAO;

public class ProfessorRepositorio {

private IProfessorDAO daoProfessor;
	
	public ProfessorRepositorio(int fabrica) {
		daoProfessor = DAOFactory.getDAOFactory(fabrica).getProfessorDAO();
	}
	
	
	public Professor Consultar(Professor professor){		
		return daoProfessor.Consultar(professor);
	}
	
	
}
