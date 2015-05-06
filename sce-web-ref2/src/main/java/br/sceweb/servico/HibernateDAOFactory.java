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
}
