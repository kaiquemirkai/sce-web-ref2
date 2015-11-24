package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class ListarRegraAtcompProfessor implements IComando {
	RegraAtcompRepositorio regraAtcompRepositorio;
/**
 * O comando mostratodasempresas seleciona o sgbd desejado
 * HIBERNATE = 1
 * MYSQL=2
 */
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		regraAtcompRepositorio = new RegraAtcompRepositorio(1);
		String radio = request.getParameter("rdBusca");
		String busca = request.getParameter("txtBusca");
		List<RegraAtcomp> regraAtcomps = null;
		
	
		
		if( busca != null)
		{
			if(!busca.equals("") )
			{			
				if(radio != null)
				{
					regraAtcomps = regraAtcompRepositorio.Listar(radio,busca);
				}
			}
		}
		if( busca == null || busca.equals(""))
		{
			regraAtcomps = regraAtcompRepositorio.Listar("","");
		}
		
		request.setAttribute("regraAtcomps", regraAtcomps);
		
		return "/visao/TelasTCCv4/TelaListarRegraAtcompProfessor.jsp";
	}

}

