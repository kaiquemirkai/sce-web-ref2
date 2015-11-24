package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Atcomp;
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
		atcompRepositorio = new AtcompRepositorio(1);
		List<Atcomp> atcomps = atcompRepositorio.Listar("","");
			
		request.setAttribute("atcomps", atcomps);
		return "/visao/TelasTCCv4/TelaListarAtcompProfessor.jsp";
	}

}



