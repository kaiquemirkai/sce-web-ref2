package br.sceweb.servico;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import org.apache.log4j.Logger; // auditoria dos registros
import org.hibernate.HibernateException;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.Empresa;
import br.sceweb.dominio.SugestaoAtividade; //Classe SugestaoAtividade


public class HibernateSugestaoAtividadeDAO implements ISugestaoAtividadeDAO {

	Logger logger = Logger.getLogger(HibernateEmpresaDAO.class);

	//M�todo para CADASTRAR Sugest�o de Atividade
	public boolean Cadastrar(SugestaoAtividade sa) {
        
		//logger - ir� aparecer no console
		logger.info(">>>>>>>>>>>>>>>>>>Inicio do Processo de Cadastramento da Sugest�o de Atividade: ");
		boolean retorno;
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");//
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();//
			em.persist(sa);
			em.getTransaction().commit();//envio dos dados no banco (efetiva��o)
			em.close();//fecha a conex�o com o BD
			retorno = true ;
		} catch (PersistenceException exception) { // HibernateException
			retorno = false;
			logger.info(">>>>>>>>>>>>>>>>Erro no Cadastro da Sugest�o Atividade. Erro:  "
					+ exception.toString());
		}

		return retorno;

	}
	
	@Override
	public List<SugestaoAtividade> Listar() {
		
		List<SugestaoAtividade> lista = new ArrayList<SugestaoAtividade>();
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			Query query = em.createQuery("SELECT sa from SugestaoAtividade sa");
			lista = query.getResultList();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	
	
	@Override
	public List<SugestaoAtividade> ListarSugestoesRecentes() {
		
		List<SugestaoAtividade> lista = new ArrayList<SugestaoAtividade>();
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			Query query = em.createQuery("SELECT sa from SugestaoAtividade sa order by sa.codigo desc");
			query.setMaxResults(5);
			lista = query.getResultList();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	
	
	//M�todo para consulta de Sugest�o de Atividade
	public SugestaoAtividade Consultar(SugestaoAtividade sa) {
		
		Logger logger = Logger.getLogger("br.sceweb.dominio.SugestaoAtividade");
		logger.info(">>>>>>>>>>Inicio de Procedimento: Consultar Sugest�o Atividade");
		SugestaoAtividade consulta = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			consulta = em.find(SugestaoAtividade.class, sa.getCodigo());
			em.getTransaction().commit();
			logger.info("Termino de Procedimento: Consultar Sugest�o Atividade");	
		} catch (HibernateException exception) {
			logger.info("Erro de Procedimento: Consultar Sugest�o Atividade. Erro: " + exception.getStackTrace());
			exception.printStackTrace();
		}
		
		return consulta;
	}
	
	//M�todo para consulta de Sugest�o de Atividade por CAUSA do JUNIT
		public ArrayList<SugestaoAtividade> consultaCodigo(String codigo) {
			
			Logger logger = Logger.getLogger("br.sceweb.dominio.SugestaoAtividade");
			logger.info(">>>>>>>>>>Inicio de Procedimento: Consultar Sugest�o Atividade por CODIGO");
			ArrayList<SugestaoAtividade> ALconsulta = null;
			
			SugestaoAtividade sugestaoAtividade = null;

			try {
				EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
				EntityManager em = factory.createEntityManager();
				em.getTransaction().begin();
				//metodo find, somente aceita objeto como parametro
				sugestaoAtividade = em.find(SugestaoAtividade.class, codigo);
				em.getTransaction().commit();
				logger.info("Termino de Procedimento: Consultar Sugest�o Atividade");	
			} catch (HibernateException exception) {
				logger.info("Erro de Procedimento: Consultar Sugest�o Atividade. Erro: " + exception.getStackTrace());
				exception.printStackTrace();
			}
			return ALconsulta;
		}
	
		public boolean alterar(SugestaoAtividade sa) {
		      
			logger.info("Inicio do Processo de ALTERA��O da Sugest�o Atividade: ");
			boolean retorno;
			try {
				
				EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
				EntityManager em = factory.createEntityManager();
				em.getTransaction().begin();
				
				em.merge(sa);
				em.getTransaction().commit();
				em.close();
				retorno = true ;
			} catch (PersistenceException exception) { // HibernateException
				retorno = false;
				logger.info("Erro na ALTERA��O da Sugest�o Atividade. Erro:  "
						+ exception.toString());
			}

			return retorno;
		}
		
		
		
	public int excluir(SugestaoAtividade sa) {

		
		
		logger.info(">>>>>>>>>>>>>>>>>>>>>>inicializando o procedimento de EXCLUS�O");
		int codigoRetorno = 0;
		
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			sa = em.find(SugestaoAtividade.class, sa.getCodigo());
			em.remove(sa);
			em.getTransaction().commit();
			em.close();
			codigoRetorno = 1 ;

		} catch (HibernateException exception) {
			exception.printStackTrace();

		}

		return codigoRetorno;

	}
	
	
	
	
}
