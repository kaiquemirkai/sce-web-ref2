package br.sceweb.dominio;


import java.util.ArrayList;


import java.util.List;

import org.apache.log4j.Logger;

import br.sceweb.servico.DAOFactory;


public class Fachada {
	
	LoginRepositorio loginRepositorio;
   
    Logger logger = Logger.getLogger(Fachada.class);
    /**
     * O metodo construtor instancia o repositorio de acordo com sgbd desejado
     * HIBERNATE = 1
     * MYSQL=2
     */
    public Fachada(){
    	
    	loginRepositorio = new LoginRepositorio(1);
    	
    }
	public Login login(String usuario, String senha){
		String url = "";
		return loginRepositorio.ValidarLogin(usuario, senha);
		
	}
	

	
}