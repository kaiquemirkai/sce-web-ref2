package br.sceweb.servico;

public class HibernateDAOFactory extends DAOFactory{
	@Override
	public IEmpresaDAO getEmpresaDAO() {
		return new HibernateEmpresaDAO();
	}

	@Override
	public ILoginDAO getLoginDAO() {
		return new HibernateLoginDAO();
	}
	public IAtcompDAO getAtcompDAO() {
		return new HibernateAtcompDAO();
	}
	public IRegraAtcompDAO getRegraAtcompDAO() {
		return new HibernateRegraAtcompDAO();
	}
	public ISugestaoAtividadeDAO getSugestaoAtividadeDAO(){//Cria um objeto para ser instanciado para o usuario
		return new HibernateSugestaoAtividadeDAO();
	}
}
