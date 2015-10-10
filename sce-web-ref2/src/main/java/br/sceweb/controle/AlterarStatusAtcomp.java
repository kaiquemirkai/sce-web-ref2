
package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompFachada;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.AtcompRepositorio;

public class AlterarStatusAtcomp implements IComando{
	AtcompRepositorio atcompRepositorio;
	Atcomp atcomp;
	public AlterarStatusAtcomp(){
		
		atcomp = new Atcomp();
		atcompRepositorio = new AtcompRepositorio(1);
	}
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
String url = "";
			atcomp.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
		    atcomp = atcompRepositorio.Consultar(atcomp);
			atcomp.setStatus("Aprovado");
			
		
		if (atcompRepositorio.Alterar(atcomp) ){
		
			url = "/visao/TelasTCCv4/TelaListarAtcompPendenteProfessor.jsp";		
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv4/TelaListarAtcompPendenteProfessor.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
}
}



