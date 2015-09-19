package br.sceweb.servico;

import java.util.ArrayList;





import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.Atcomp;

public class HibernateAlunoDAO implements IAlunoDAO{
	
	
	
	
	public Aluno Consultar(Aluno aluno) {
		Logger logger = Logger.getLogger("br.sceweb.dominio.aluno");
		logger.info("Inicio de Procedimento: Consultar Aluno");
		Aluno consulta = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			consulta = em.find(Aluno.class, aluno.getCodigo());
			em.getTransaction().commit();
			logger.info("Termino de Procedimento: Consultar aluno");	
		} catch (HibernateException exception) {
			logger.info("Erro de Procedimento: Consultar Aluno. Erro: " + exception.getStackTrace());
			exception.printStackTrace();
		}
		return consulta;
	}

}
