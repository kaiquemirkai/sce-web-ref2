package br.sceweb.servico;

public class HibernateDAOFactory extends DAOFactory{
	@Override
	public IEmpresaDAO getEmpresaDAO() {
		return new HibernateEmpresaDAO();
	}

	@Override
	public IUsuarioDAO getUsuarioDAO() {
		return new HibernateUsuarioDAO();
	}
}
