package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IComando {
	
		public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception;
		

}
