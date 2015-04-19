package br.sceweb.servico;

public abstract class DAOFactory {
	//lista de daos suportados pela fabrica
	public static final int HIBERNATE = 1;
	public static final int MYSQL = 2;
	
	
	// existe um metodo para cada DAO que pode ser criado
	public abstract IEmpresaDAO getEmpresaDAO();
	public abstract IUsuarioDAO getUsuarioDAO();
	public static DAOFactory getDAOFactory(int fabrica){
		switch (fabrica){
			case HIBERNATE: return new HibernateDAOFactory();
			case MYSQL :	return new MySQLDAOFactory();
			default:	    return null;
		}
	}
	

}
