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
import org.hibernate.Session;
import org.hibernate.SessionFactory;


import br.sceweb.dominio.RegraAtcomp;

public class HibernateRegraAtcompDAO implements IRegraAtcompDAO {

	Logger logger = Logger.getLogger(HibernateRegraAtcompDAO.class);

	public boolean Cadastrar(RegraAtcomp a) {
      
		logger.info("Inicio do Processo de Cadastramento da Regra da Atividade Complementar: ");
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
			logger.info("Erro no Cadastro da Regra da Atividade Complementar. Erro:  "
					+ exception.toString());
		}

		return retorno;

	}
	
	@Override
	public List<RegraAtcomp> Listar(String campoBusca, String valorBusca) {
		List<RegraAtcomp> lista = new ArrayList<RegraAtcomp>();
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			
			
			String clausulaBusca = "";
			String area = "";
			if(campoBusca.equals("codigoAtividade"))
			{
				clausulaBusca = " where a.codigoAtividade like :codigoAtividade";
				
			}
			if(campoBusca.equals("area"))
			{
				
				if(valorBusca.equals("Tecnol�gica"))
				{
					area = "01";
				}
				if(valorBusca.equals("Sociocultural"))
				{
					area = "02";
				}
				if(valorBusca.equals("Cidad�"))
				{
					area = "03";
				}
				
				clausulaBusca = " where a.area = :area";
				
			}
			
			
			
			String hql = "SELECT a from RegraAtcomp a";
			hql += clausulaBusca;
			Query query = em.createQuery(hql);
			
			
			if(campoBusca.equals("codigoAtividade"))
			{
				
				query.setParameter("codigoAtividade", "%" +valorBusca  +"%");
			}
		
			if(campoBusca.equals("area"))
			{
				
				query.setParameter("area", area);
			}
			
			
			lista = query.getResultList();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	@Override
	public List<RegraAtcomp> ListarCategoriaPorArea(String area) {
		List<RegraAtcomp> lista = new ArrayList<RegraAtcomp>();
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT ra FROM RegraAtcomp ra WHERE ra.area = :area";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			query.setParameter("area", area);
			lista = query.getResultList();
			em.getTransaction().commit();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	public RegraAtcomp Consultar(RegraAtcomp a) {
		Logger logger = Logger.getLogger("br.sceweb.dominio.empresa");
		logger.info("Inicio de Procedimento: Consultar Regra da Atcomp");
		RegraAtcomp consulta = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			consulta = em.find(RegraAtcomp.class, a.getCodigo());
			em.getTransaction().commit();
			logger.info("Termino de Procedimento: Consultar Regra da Atcomp");	
		} catch (HibernateException exception) {
			logger.info("Erro de Procedimento: Consultar Regra da Atcomp. Erro: " + exception.getStackTrace());
			exception.printStackTrace();
		}
		return consulta;
	}

	public RegraAtcomp ConsultarPorCodigoAtividade(RegraAtcomp a) {
		Logger logger = Logger.getLogger("br.sceweb.dominio.empresa");
		logger.info("Inicio de Procedimento: Consultar Regra da Atcomp");
		RegraAtcomp consulta = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			consulta = em.find(RegraAtcomp.class, a.getCodigoAtividade());
			em.getTransaction().commit();
			logger.info("Termino de Procedimento: Consultar Regra da Atcomp");	
		} catch (HibernateException exception) {
			logger.info("Erro de Procedimento: Consultar Regra da Atcomp. Erro: " + exception.getStackTrace());
			exception.printStackTrace();
		}
		return consulta;
	}

	
	
	
	
	
	@Override
	public boolean Excluir(RegraAtcomp a) {
		logger.info("Inicio do Processo de Exclus�o da Regra da Atividade Complementar: ");
		boolean retorno;
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			a = em.find(RegraAtcomp.class, a.getCodigo());
			em.remove(a);
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
	
	public boolean Alterar(RegraAtcomp a) {
	      
		logger.info("Inicio do Processo de Cadastramento da Regra da Atividade Complementar: ");
		boolean retorno;
		try {
			
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			
			em.merge(a);
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
	
	
	
}
