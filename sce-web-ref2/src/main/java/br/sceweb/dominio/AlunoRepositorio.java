package br.sceweb.dominio;

import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.IAlunoDAO;

public class AlunoRepositorio {
	
	
private IAlunoDAO daoAluno;
	
	public AlunoRepositorio(int fabrica) {
		daoAluno = DAOFactory.getDAOFactory(fabrica).getAlunoDAO();
	}
	
	
	public Aluno Consultar(Aluno aluno){		
		return daoAluno.Consultar(aluno);
	}
	

}
