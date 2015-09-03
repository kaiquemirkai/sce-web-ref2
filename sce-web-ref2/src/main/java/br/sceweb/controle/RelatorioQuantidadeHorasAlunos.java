package br.sceweb.controle;

import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class RelatorioQuantidadeHorasAlunos implements IComando{
	
	AtcompRepositorio atcompRepositorio;
	public RelatorioQuantidadeHorasAlunos(){
		atcompRepositorio  = new AtcompRepositorio(1);;
	}
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		    Double tecnologica;
		    Double cidada;
		    Double cultural;
		    
		    tecnologica = atcompRepositorio.RelatorioHorasPorArea("01");
		    cidada = atcompRepositorio.RelatorioHorasPorArea("03");
		    cultural = atcompRepositorio.RelatorioHorasPorArea("02");
		    
		    String resultadoTecnologica =  RetornaFormatado(tecnologica);		    
		    String resultadoCidada =  RetornaFormatado(cidada);
		    String resultadoCultural = RetornaFormatado(cultural);
		    
		
		    request.setAttribute("tecnologica",resultadoTecnologica);
		    request.setAttribute("cidada",resultadoCidada);
		    request.setAttribute("cultural",resultadoCultural);
			url = "/visao/TelasTCCv4/TelaConsultarQuantidadeHorasAluno.jsp";		
			request.setAttribute("erro", null);
		
		
		return url;
	}
	
	public String RetornaFormatado(Double valor){
		valor = (valor / 80) * 100;
	    DecimalFormat df = new DecimalFormat("#.##");
	    String resultado = df.format(valor);
	    resultado = resultado.replace(",", ".");
	    return resultado;
	}
	
}