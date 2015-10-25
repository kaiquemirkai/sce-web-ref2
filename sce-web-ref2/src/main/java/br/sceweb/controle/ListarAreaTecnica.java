package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.HorasPorAreaTO;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class ListarAreaTecnica  implements IComando{
	AtcompRepositorio atcompRepositorio;
	
	public ListarAreaTecnica(){
		
		
		atcompRepositorio = new AtcompRepositorio(1);
	}
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
String url = "";
		
        List<Atcomp> atcomps = atcompRepositorio.ListarAreaStatus("01","Aprovado");	
		
        String tecnologica = atcompRepositorio.RelatorioHorasPorArea("01") + "";
		String tecnologicaDiferenca = 80 - Double.valueOf(tecnologica) + "";
		if(Double.valueOf(tecnologicaDiferenca) < 0)
		{
			tecnologicaDiferenca = "0";
		}
		request.setAttribute("tecnologica", tecnologica);
		request.setAttribute("tecnologicaDiferenca", tecnologicaDiferenca);
        AtcompRepositorio atcompHorasRepositorio = new AtcompRepositorio(2);
		List<HorasPorAreaTO> horas = atcompHorasRepositorio.ListarHorasCategoria("01");
		
		String grafico = "['Categorias', 'Horas Cadastradas', 'Horas Disponíveis', { role: 'annotation' } ], ";
		if ((horas!=null)&& (horas.size()>0)){
		    HorasPorAreaTO horaPorAreaTO = null;
			for (int i = 0; i < horas.size() - 1 ; i++) {
				    
				    horaPorAreaTO = (HorasPorAreaTO) horas.get(i);
				    grafico += "['" + horaPorAreaTO.getCodigoAtividade() + "', " +
				    horaPorAreaTO.getHorasTotais() + " , " + horaPorAreaTO.getQuantidadeFaltante() +
				    " , '' ],";
			}
			 horaPorAreaTO = (HorasPorAreaTO) horas.get(horas.size()-1);
					grafico += "['" + horaPorAreaTO.getCodigoAtividade() + "', " +
				    horaPorAreaTO.getHorasTotais() + " , " + horaPorAreaTO.getQuantidadeFaltante() +
				    " , '' ]";
		}
		
		
		
		
        
	    url = "/visao/TelasTCCv4/TelaConsultarQuantidadeHorasAreaTecnicaAluno.jsp";		
	    request.setAttribute("atcomps", atcomps);
	    request.setAttribute("grafico", grafico);
	    request.setAttribute("erro", null);
		
	    
	    
		
		return url;
}
}
