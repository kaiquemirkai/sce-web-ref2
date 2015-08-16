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
		List<RegraAtcomp> regraAtcomps = regraAtcompRepositorio.Listar();
		request.setAttribute("regraAtcomps", regraAtcomps);
		return "/visao/TelasTCCv4/TelaListarRegraAtcompProfessor.jsp";
	}

}

