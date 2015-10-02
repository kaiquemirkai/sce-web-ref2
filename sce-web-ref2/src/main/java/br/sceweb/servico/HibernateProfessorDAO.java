package br.sceweb.servico;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.Professor;

public class HibernateProfessorDAO implements IProfessorDAO{


	public Professor Consultar(Professor professor) {
		Logger logger = Logger.getLogger("br.sceweb.dominio.professor");
		logger.info("Inicio de Procedimento: Consulta Professor");
		Professor consulta = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT p FROM Professor p WHERE  p.codigoLogin = :codigoLogin";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			
			query.setParameter("codigoLogin", professor.getCodigoLogin());
			consulta = (Professor)query.getSingleResult();
			
			em.getTransaction().commit();

			logger.info("Termino de Procedimento: Consultar Professor");	
		} catch (HibernateException exception) {
			logger.info("Erro de Procedimento: Consultar Professor. Erro: " + exception.getStackTrace());
			exception.printStackTrace();
		}
		return consulta;
	}
	
}
