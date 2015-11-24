package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;

public class ListarAtCompAluno implements IComando {
	AtcompRepositorio atcompRepositorio;
/**
 * O comando mostratodasempresas seleciona o sgbd desejado
 * HIBERNATE = 1
 * MYSQL=2
 */
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		String radio = request.getParameter("rdBusca");
		String busca = request.getParameter("txtBusca");
		
		atcompRepositorio = new AtcompRepositorio(1);
		List<Atcomp> atcomps = null;
		
		if( busca != null)
		{
			if(!busca.equals("") )
			{			
				if(radio != null)
				{
					atcomps = atcompRepositorio.Listar(radio,busca);
				}
			}
		}
		if(busca == null || busca.equals(""))
		{
			atcomps = atcompRepositorio.Listar("","");
		}
		
		
		
		
		request.setAttribute("atcomps", atcomps);
		return "/visao/TelasTCCv4/TelaListarAtcompAluno.jsp";
	}

}



