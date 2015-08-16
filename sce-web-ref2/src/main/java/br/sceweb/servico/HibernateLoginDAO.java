package br.sceweb.servico;

import java.util.ArrayList;




import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;

import br.sceweb.dominio.Login;



public class HibernateLoginDAO implements ILoginDAO {
	Logger logger = Logger.getLogger(HibernateLoginDAO.class);
	Login login = new Login(); 
	
	@Override	
	public Login ValidarLogin(String usuario, String senha) {
		ArrayList<?> results = null;
		try {
			//stmt = MySQLDAOFactory.criaConexao().prepareStatement(login);
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			String hql = " SELECT l FROM Login l WHERE l.usuario = :usuario and l.senha = :senha";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			query.setParameter("usuario", usuario);
			query.setParameter("senha", senha);
			results = (ArrayList<?>) query.getResultList();
			em.getTransaction().commit();
			
			for (int i = 0; i < results.size(); i++) {
				   
			    login = (Login) results.get(i);
			}
			
		} catch (HibernateException exception) {
			// throw new Exception("ERRO..... " );
			logger.error(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> excecao no consulta="	+ exception.getMessage());

		}
		return login; //se nao esta vazio? achou
	}

}
