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
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.Empresa;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;

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
			Login login =LoginRepositorio.RetornaUsuarioLogado();
			System.out.println("Codigo do usuario Logado:  "+ login.getCodigo());
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT a FROM Atcomp a WHERE a.codigoAluno = :codigoAluno";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			query.setParameter("codigoAluno", login.getCodigo());
			lista = query.getResultList();
			em.getTransaction().commit();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	@Override
	public List<Atcomp> ListarPendenteProfessor() {
		List<Atcomp> lista = new ArrayList<Atcomp>();
		try {
			Login login =LoginRepositorio.RetornaUsuarioLogado();			
			System.out.println("Codigo do usuario Logado:  "+ login.getCodigo());
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT a FROM Atcomp a WHERE a.status = :status";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			query.setParameter("status", "Pendente");
			lista = query.getResultList();
			em.getTransaction().commit();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	
	
	public List<Atcomp> ListarAreaStatus(String area, String status) {
		List<Atcomp> lista = new ArrayList<Atcomp>();
		try {
			//variaveis de apoio
			boolean areaPreenchida = false;
			boolean statusPreenchido = false;
			
			if(area!= null)
			{
				areaPreenchida = true;
			}
			if(status != null)
			{
				statusPreenchido = true;
			}
			
			
			Login login =LoginRepositorio.RetornaUsuarioLogado();
			System.out.println("chegou no DAO");
			System.out.println("Codigo do usuario Logado:  "+ login.getCodigo());
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			
			
			
			// criação da query
			String hql="";
			//listagem so com o codigo do aluno
			if(!areaPreenchida && !statusPreenchido)
			{
				hql = " SELECT a FROM Atcomp a WHERE a.codigoAluno = :codigoAluno ORDER BY a.codigo desc";
			}
			//listagem por codigo de aluno e area
			if(areaPreenchida && !statusPreenchido)
			{
				hql = " SELECT a FROM Atcomp a WHERE a.codigoAluno = :codigoAluno AND a.areaAtividade = :areaAtividade ORDER BY a.codigo desc";
			}
			//listagem por codigo de aluno e status
			if(!areaPreenchida && statusPreenchido)
			{
				hql = " SELECT a FROM Atcomp a WHERE a.codigoAluno = :codigoAluno AND a.status = :status ORDER BY a.codigo desc";
			}
			//listagem por codigo de aluno , status e area
			if(areaPreenchida && statusPreenchido)
			{
				hql = " SELECT a FROM Atcomp a WHERE a.codigoAluno = :codigoAluno AND a.status = :status AND a.areaAtividade = :areaAtividade ORDER BY a.codigo desc";
			}
			
			
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			//validacao dos parametros
			query.setParameter("codigoAluno", login.getCodigo());
			if(areaPreenchida)
			{
				query.setParameter("areaAtividade", area);
			}
			if(statusPreenchido)
			{
				query.setParameter("status", status);
			}
			
			lista = query.getResultList();
			em.getTransaction().commit();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	
	@Override
	public Double RelatorioHorasPorArea(String areaAtividade) {
		Double resultado = 0.0;
		try {
			
			Login login =LoginRepositorio.RetornaUsuarioLogado();
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT SUM(a.horasLancadas) FROM Atcomp a WHERE  a.areaAtividade = :areaAtividade AND a.codigoAluno = :codigoAluno AND a.status = :status" ;
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			
			query.setParameter("status","Aprovado");
			query.setParameter("areaAtividade", areaAtividade);
			query.setParameter("codigoAluno", login.getCodigo());
			resultado = Double.parseDouble(query.getSingleResult() + "");
			
			em.getTransaction().commit();

		} catch (Throwable e) {
		}
		return resultado;
	}
	
	
	
	@Override
	public int QuantidadeAtcompsPorStatus(String status) {
		int resultado = 0;
		try {
			
			Login login =LoginRepositorio.RetornaUsuarioLogado();
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT COUNT(a.codigo) FROM Atcomp a WHERE  a.status = :status";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			
			query.setParameter("status", status);
			resultado = Integer.parseInt(query.getSingleResult() + "");
			
			em.getTransaction().commit();

		} catch (Throwable e) {
		}
		return resultado;
	}
	
	
	
	public List<RegraAtcomp> ListarRegraAtcomp() {
		List<RegraAtcomp> lista = new ArrayList<RegraAtcomp>();
		try {
			Login login =LoginRepositorio.RetornaUsuarioLogado();
			System.out.println("Codigo do usuario Logado:  "+ login.getCodigo());
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT a FROM RegraAtcomp a";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			query.setParameter("codigoAluno", login.getCodigo());
			lista = query.getResultList();
			em.getTransaction().commit();

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
	
	public boolean Alterar(Atcomp a) {
	      
		logger.info("Inicio do Processo de Alteração de Status da Atividade Complementar: ");
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
