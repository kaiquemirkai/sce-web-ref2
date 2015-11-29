package br.sceweb.servico;

public abstract class DAOFactory {
	//lista de daos suportados pela fabrica
	public static final int HIBERNATE = 1;
	public static final int MYSQL = 2;
	
	
	// existe um metodo para cada DAO que pode ser criado

	public abstract ILoginDAO getLoginDAO();
	public abstract IAlunoDAO getAlunoDAO();
	public abstract IProfessorDAO getProfessorDAO();
	public abstract IAtcompDAO getAtcompDAO();
	public abstract IRegraAtcompDAO getRegraAtcompDAO();
	public abstract ISugestaoAtividadeDAO getSugestaoAtividadeDAO();
	public static DAOFactory getDAOFactory(int fabrica){
		switch (fabrica){
			case HIBERNATE: return new HibernateDAOFactory();
			case MYSQL :	return new MySQLDAOFactory();
			default:	    return null;
		}
	}
	

}
