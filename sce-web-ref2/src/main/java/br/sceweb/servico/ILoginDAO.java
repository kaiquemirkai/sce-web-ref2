package br.sceweb.servico;

import br.sceweb.dominio.Login;

public interface ILoginDAO {

	public Login ValidarLogin(String usuario, String senha);
	
}
