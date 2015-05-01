package br.sceweb.servico;

import java.util.ArrayList;



import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;



public class HibernateUsuarioDAO implements IUsuarioDAO {
	Logger logger = Logger.getLogger(HibernateUsuarioDAO.class);
	@Override
	public boolean login(String userName, String password) {
		ArrayList<?> results = null;
		try {
			//stmt = MySQLDAOFactory.criaConexao().prepareStatement(login);
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT u FROM Usuario u WHERE u.userID = :userName and u.senha = :password";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			query.setParameter("userName", userName);
			query.setParameter("password", password);
			results = (ArrayList<?>) query.getResultList();
			em.getTransaction().commit();
			
		} catch (HibernateException exception) {
			// throw new Exception("ERRO..... " );
			logger.error(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> excecao no consulta="	+ exception.getMessage());

		}
		return (!results.isEmpty()); //se nao esta vazio? achou
	}

}
