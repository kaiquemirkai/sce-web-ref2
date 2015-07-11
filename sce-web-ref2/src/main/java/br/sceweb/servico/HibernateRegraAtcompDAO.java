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
import br.sceweb.dominio.RegraAtcomp;

public class HibernateRegraAtcompDAO implements IRegraAtcompDAO {

	Logger logger = Logger.getLogger(HibernateEmpresaDAO.class);

	public boolean Cadastrar(RegraAtcomp ra) {
      
		logger.info("Inicio do Processo de Cadastramento da Regra da Atividade Complementar: ");
		boolean retorno;
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			em.persist(ra);
			em.getTransaction().commit();
			em.close();
			retorno = true ;
		} catch (PersistenceException exception) { // HibernateException
			retorno = false;
			logger.info("Erro no Cadastro da Regra da Atividade Complementar. Erro:  "
					+ exception.toString());
		}

		return retorno;

	}
	
	@Override
	public List<RegraAtcomp> Listar() {
		List<RegraAtcomp> lista = new ArrayList<RegraAtcomp>();
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			Query query = em.createQuery("SELECT a from RegraAtcomp a");
			lista = query.getResultList();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	public RegraAtcomp Consultar(RegraAtcomp ra) {
		Logger logger = Logger.getLogger("br.sceweb.dominio.empresa");
		logger.info("Inicio de Procedimento: Consultar Regra da Atcomp");
		RegraAtcomp consulta = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			consulta = em.find(RegraAtcomp.class, ra.getCodigo());
			em.getTransaction().commit();
			logger.info("Termino de Procedimento: Consultar Regra da Atcomp");	
		} catch (HibernateException exception) {
			logger.info("Erro de Procedimento: Consultar Regra da Atcomp. Erro: " + exception.getStackTrace());
			exception.printStackTrace();
		}
		return consulta;
	}
	
	
	
	public boolean Alterar(RegraAtcomp ra) {

		logger.info(">>>>>>>>>>>>>>>>>>>>>>>>>inicializando o procedimento cadastra");
		boolean codigoRetorno = false;
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			em.merge(ra);
			em.getTransaction().commit();
			em.close();
			codigoRetorno = true;
		} catch (PersistenceException exception) { // HibernateException
			
			logger.info("disparou um erro na transacao de persistencia do tipo PersistenceException = "
					+ exception.toString());
		}

		return codigoRetorno;

	}
}
