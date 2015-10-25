package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.HorasPorAreaTO;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class ListarAreaCidada  implements IComando{
	AtcompRepositorio atcompRepositorio;
	
	public ListarAreaCidada(){
		
		
		atcompRepositorio = new AtcompRepositorio(1);
	}
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
String url = "";
		
        List<Atcomp> atcomps = atcompRepositorio.ListarAreaStatus("03","Aprovado");	
		
        String cidada = atcompRepositorio.RelatorioHorasPorArea("03") + "";
		String cidadaDiferenca = 80 - Double.valueOf(cidada) + "";
		if(Double.valueOf(cidadaDiferenca) < 0)
		{
			cidadaDiferenca = "0";
		}
		request.setAttribute("cidada", cidada);
		request.setAttribute("cidadaDiferenca", cidadaDiferenca);
        
        
		AtcompRepositorio atcompHorasRepositorio = new AtcompRepositorio(2);
		List<HorasPorAreaTO> horas = atcompHorasRepositorio.ListarHorasCategoria("03");
		
		String grafico = atcompHorasRepositorio.GraficoDasCategorias(horas);
		
		
	    url = "/visao/TelasTCCv4/TelaConsultarQuantidadeHorasAreaCidadaAluno.jsp";		
	    request.setAttribute("atcomps", atcomps);
	    request.setAttribute("grafico", grafico);
	    request.setAttribute("erro", null);
		
	    
	    
		
		return url;
}
}