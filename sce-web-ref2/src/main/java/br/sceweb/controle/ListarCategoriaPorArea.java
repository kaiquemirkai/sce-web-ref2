package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class ListarCategoriaPorArea implements IComando {
	RegraAtcompRepositorio regraAtcompRepositorio;
/**
 * O comando mostratodasempresas seleciona o sgbd desejado
 * HIBERNATE = 1
 * MYSQL=2
 */
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		regraAtcompRepositorio = new RegraAtcompRepositorio(1);
		
		String area = request.getParameter("selectValue");
		System.out.println(area);
		List<RegraAtcomp> regraAtcomps = regraAtcompRepositorio.ListarCategoriaPorArea(area);
		
		JSONObject objFinal = new JSONObject(); 
		if ((regraAtcomps!=null)&& (regraAtcomps.size()>0)){
		    RegraAtcomp ra = null;
		    
		
			for (int i = 0; i < regraAtcomps.size(); i++) {
				    
				    ra = (RegraAtcomp) regraAtcomps.get(i);
				    JSONObject obj = new JSONObject();
				    JSONObject obj2 = new JSONObject();
				    obj.put("codigoAtividade", ra.getCodigoAtividade());
				    obj.put("id", ra.getCodigo());
				    objFinal.append("regras", obj);
				    
			
				    
			}
			
			
		}
		
		res.setContentType("json");		
		res.getWriter().write(objFinal.toString());
		
		
		return "Ajax";
	}
}
