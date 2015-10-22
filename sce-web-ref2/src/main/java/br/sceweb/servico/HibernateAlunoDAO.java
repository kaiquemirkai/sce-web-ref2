package br.sceweb.servico;

import java.util.ArrayList;





import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.Professor;
import br.sceweb.dominio.ProfessorRepositorio;

public class HibernateAlunoDAO implements IAlunoDAO{
	
	
	
	
	public Aluno Consultar(Aluno aluno) {
		Logger logger = Logger.getLogger("br.sceweb.dominio.aluno");
		logger.info("Inicio de Procedimento: Consultar Aluno");
		Aluno consulta = null;

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();
			em.getTransaction().begin();
			consulta = em.find(Aluno.class, aluno.getCodigo());
			em.getTransaction().commit();
			logger.info("Termino de Procedimento: Consultar aluno");	
		} catch (HibernateException exception) {
			logger.info("Erro de Procedimento: Consultar Aluno. Erro: " + exception.getStackTrace());
			exception.printStackTrace();
		}
		return consulta;
	}

	@Override
	public List<Aluno> ListarAlunosPendentesProfessor() {
		List<Aluno> lista = new ArrayList<Aluno>();
		try {
			Login login =LoginRepositorio.RetornaUsuarioLogado();		
			ProfessorRepositorio professorRepositorio = new ProfessorRepositorio(1);
			Professor professor = new Professor();
			professor.setCodigoLogin(login.getCodigo());
			professor = professorRepositorio.Consultar(professor);
			
			
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("sceweb");
			EntityManager em = factory.createEntityManager();

			/*
			 SELECT alun.*, atc.codigo FROM aluno alun inner join atcomp atc on alun.codigo = atc.codigoAluno 
 			WHERE atc.codigoAluno IN (SELECT alu.codigo FROM aluno AS alu WHERE alu.turma IN 
 			(SELECT ppf.turma FROM perfilprofessor AS ppf WHERE ppf.codigoProfessor = 1))
 			 AND atc.status = "Pendente" 
			 
			 String hql = "SELECT a from Aluno a  inner join fetch Atcomp t on a.codigo = t.codigoAluno "+
					"WHERE t.codigoAluno IN (SELECT alu.codigo from Aluno alu WHERE alu.turma IN"+
					" (SELECT ppf.turma FROM PerfilProfessor ppf WHERE ppf.codigoProfessor = :codigoProfessor )) AND " +
					" t.status = :status";
			 
			 
			 */
			
			String hql = "SELECT a from Aluno a  inner join  a.codigo left join Atcomp.codigoAluno "+
					"WHERE Atcomp.codigoAluno IN (SELECT alu.codigo from Aluno alu WHERE alu.turma IN"+
					" (SELECT ppf.turma FROM PerfilProfessor ppf WHERE ppf.codigoProfessor = :codigoProfessor )) AND " +
					" Atcomp.status = :status";
			em.getTransaction().begin();
			Query query = em.createQuery(hql);
			query.setParameter("status", "Pendente");
			query.setParameter("codigoProfessor", professor.getCodigo());
			
			lista = query.getResultList();
			em.getTransaction().commit();

		} catch (Throwable e) {
		}
		return lista;
	}
	
	
	
	
}
