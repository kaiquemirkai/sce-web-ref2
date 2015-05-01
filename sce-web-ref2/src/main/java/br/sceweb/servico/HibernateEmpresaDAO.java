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

import br.sceweb.dominio.Empresa;

public class HibernateEmpresaDAO implements IEmpresaDAO {
	Logger logger = Logger.getLogger(HibernateEmpresaDAO.class);

	public String cadastra(Empresa e) {

		logger.info(">>>>>>>>>>>>>>>>>>>>>>>>>inicializando o procedimento cadastra");
		String codigoRetorno = "";
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			em.persist(e);
			em.getTransaction().commit();
			em.close();
			codigoRetorno = "Cadastro realizado com sucesso";
		} catch (PersistenceException exception) { // HibernateException
			codigoRetorno = "Erro no cadastro";
			logger.info("disparou um erro na transacao de persistencia do tipo PersistenceException = "
					+ exception.toString());
		}

		return codigoRetorno;

	}

	public int exclui(String cnpj) {

		logger.info("inicializando o procedimento");
		int codigoRetorno = 0;
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();

			String jpql = " DELETE FROM Empresa e WHERE e.cnpj = :cnpj";
			em.getTransaction().begin();
			Query query = em.createQuery(jpql);
			query.setParameter("cnpj", cnpj);
			codigoRetorno = query.executeUpdate();
			logger.info(" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>resultado da query exclui cnpj ="+ cnpj + " e codigoRetorno =" + codigoRetorno + " excluido");
			em.getTransaction().commit();

		} catch (HibernateException exception) {
			exception.printStackTrace();

		}

		return codigoRetorno;

	}

	public Empresa consulta(Empresa e) {
		Logger logger = Logger.getLogger("br.sceweb.dominio.empresa");
		logger.info("inicializando o procedimento");
		Empresa nova = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			nova = em.find(Empresa.class, e.getCnpj());
			em.getTransaction().commit();
		} catch (HibernateException exception) {
			exception.printStackTrace();
		}
		return nova;
	}

	@Override
	public List<Empresa> findAll() {
		List<Empresa> lista = new ArrayList<Empresa>();
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			Query query = em.createQuery("SELECT e from Empresa e");
			lista = query.getResultList();

		} catch (Throwable e) {
		}
		return lista;
	}

	@Override
	public void merge(Empresa empresa) {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(Empresa empresa) {
		// TODO Auto-generated method stub

	}

	@Override
	public ArrayList<Empresa> consulta(String cnpj) {

		List<Empresa> results = null;
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT e FROM Empresa e WHERE e.cnpj = :cnpj";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			query.setParameter("cnpj", cnpj);
			results = query.getResultList();
			em.getTransaction().commit();

		} catch (HibernateException exception) {
			// throw new Exception("ERRO..... " );
			logger.error(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> excecao no consulta="	+ exception.getMessage());

		}
		return (ArrayList<Empresa>) results;
	}

}
