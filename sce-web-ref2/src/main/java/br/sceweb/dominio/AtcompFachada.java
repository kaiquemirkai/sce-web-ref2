package br.sceweb.dominio;

import java.util.ArrayList;

import org.apache.log4j.Logger;
public class AtcompFachada {

	AtcompRepositorio atcompRepositorio;
	Logger logger = Logger.getLogger(AtcompFachada.class);
    /**
     * O metodo construtor instancia o repositorio de acordo com sgbd desejado
     * HIBERNATE = 1
     * MYSQL=2
     */
	
	 public AtcompFachada(){
	    	atcompRepositorio = new AtcompRepositorio(1);
	    	
	    }
			

		public boolean Cadastrar(Atcomp atcomp) {
			
			
			boolean retorno;
			try {
				atcompRepositorio.Cadastrar(atcomp);
			} catch (Exception e) {
				
				retorno =  false;
				return retorno;
			}
			retorno = true;
			return retorno;
			
		}
}
