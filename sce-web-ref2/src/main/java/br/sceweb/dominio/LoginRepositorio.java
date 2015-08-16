package br.sceweb.dominio;


import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.HibernateLoginDAO;
import br.sceweb.servico.ILoginDAO;

public class LoginRepositorio {
	private ILoginDAO daoLogin;
/**
 * O metodo construtor recebe como parametro o SGBD selecionado
 * @param fabrica - MYSQL = 2 HIBERNATE = 1
 */ static Login login = new Login();
 
	public LoginRepositorio(int fabrica) {
		this.daoLogin = DAOFactory.getDAOFactory(fabrica).getLoginDAO();
	}
	public Login ValidarLogin(String usuario, String senha) {
		    login = daoLogin.ValidarLogin(usuario, senha);
			return daoLogin.ValidarLogin(usuario, senha);
	}
	
	public static Login RetornaUsuarioLogado(){
	 return login;
	}
	
	

}
