package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class ListarAreaSocioCultural implements IComando{
	AtcompRepositorio atcompRepositorio;
	
	public ListarAreaSocioCultural(){
		
		
		atcompRepositorio = new AtcompRepositorio(1);
	}
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
String url = "";
		
        List<Atcomp> atcomps = atcompRepositorio.ListarAreaStatus("02","Aprovado");	
		
        String social = atcompRepositorio.RelatorioHorasPorArea("02") + "";
		String socialDiferenca = 80 - Double.valueOf(social) + "";
		if(Double.valueOf(socialDiferenca) < 0)
		{
			socialDiferenca = "0";
		}
		request.setAttribute("social", social);
		request.setAttribute("socialDiferenca", socialDiferenca);
        
        
	    url = "/visao/TelasTCCv4/TelaConsultarQuantidadeHorasAreaSocialAluno.jsp";		
	    request.setAttribute("atcomps", atcomps);
	    request.setAttribute("erro", null);
		
	    
	    
		
		return url;
}
}
