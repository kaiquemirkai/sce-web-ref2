package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;

public class EncerrarSessao implements IComando{
	
	public EncerrarSessao(){
		
		
	}
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "/visao/TelasTCCv4/TelaLogin.jsp";
			
			
		return url;
	}
}


