package br.sceweb.dominio;


import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.HibernateUsuarioDAO;
import br.sceweb.servico.IUsuarioDAO;

public class UsuarioRepositorio {
	private IUsuarioDAO daoUsuario;
/**
 * O metodo construtor recebe como parametro o SGBD selecionado
 * @param fabrica - MYSQL = 2 HIBERNATE = 1
 */
	public UsuarioRepositorio(int fabrica) {
		this.daoUsuario = DAOFactory.getDAOFactory(fabrica).getUsuarioDAO();
	}
	public boolean login(String nome, String senha) {
			return daoUsuario.login(nome, senha);
	}

}
