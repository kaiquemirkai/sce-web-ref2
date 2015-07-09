package br.sceweb.servico;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.Empresa;

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
	
	@Override
	public List<Atcomp> Listar() {
		List<Atcomp> lista = new ArrayList<Atcomp>();
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			Query query = em.createQuery("SELECT a from Atcomp a");
			lista = query.getResultList();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	public Atcomp Consultar(Atcomp a) {
		Logger logger = Logger.getLogger("br.sceweb.dominio.empresa");
		logger.info("Inicio de Procedimento: Consultar Atcomp");
		Atcomp consulta = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			consulta = em.find(Atcomp.class, a.getCodigo());
			em.getTransaction().commit();
			logger.info("Termino de Procedimento: Consultar Atcomp");	
		} catch (HibernateException exception) {
			logger.info("Erro de Procedimento: Consultar Atcomp. Erro: " + exception.getStackTrace());
			exception.printStackTrace();
		}
		return consulta;
	}
	
}
