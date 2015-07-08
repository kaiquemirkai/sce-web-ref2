package br.sceweb.servico;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import org.apache.log4j.Logger;

import br.sceweb.dominio.Atcomp;

public class HibernateAtcompDAO implements IAtcompDAO {

	Logger logger = Logger.getLogger(HibernateEmpresaDAO.class);

	public boolean Cadastrar(Atcomp a) {
        
		logger.info("Inicio do Processo de Cadastramento da Atividade Complementar: ");
		boolean retorno;
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			em.persist(a);
			em.getTransaction().commit();
			em.close();
			retorno = true ;
		} catch (PersistenceException exception) { // HibernateException
			retorno = false;
			logger.info("Erro no Cadastro da Atividade Complementar. Erro:  "
					+ exception.toString());
		}

		return retorno;

	}
}
