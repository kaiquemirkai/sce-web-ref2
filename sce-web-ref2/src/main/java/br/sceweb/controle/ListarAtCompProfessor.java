package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompPendenteAprovacaoTO;
import br.sceweb.dominio.AtcompRepositorio;

public class ListarAtCompProfessor implements IComando {
	AtcompRepositorio atcompRepositorio;
/**
 * O comando mostratodasempresas seleciona o sgbd desejado
 * HIBERNATE = 1
 * MYSQL=2
 */
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		atcompRepositorio = new AtcompRepositorio(2);
		String radio = request.getParameter("rdBusca");
		String busca = request.getParameter("txtBusca");
		
		List<AtcompPendenteAprovacaoTO> atcomps = null;
		
		if( busca != null)
		{
			if(!busca.equals("") )
			{			
				if(radio != null)
				{
					atcomps = atcompRepositorio.ListarAtcompProfessor(radio, busca);
				}
			}
		}
		if( busca == null || busca.equals(""))
		{
			atcomps = atcompRepositorio.ListarAtcompProfessor("", "");
		}
		
		
	
		request.setAttribute("atcomps", atcomps);
		return "/visao/TelasTCCv4/TelaListarAtcompProfessor.jsp";
	}

}



