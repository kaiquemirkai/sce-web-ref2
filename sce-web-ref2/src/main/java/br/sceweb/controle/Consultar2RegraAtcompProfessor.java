package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class Consultar2RegraAtcompProfessor implements IComando{

	RegraAtcompRepositorio regraatcompRepositorio;
	/**
	 * O comando mostratodasempresas seleciona o sgbd desejado
	 * HIBERNATE = 1
	 * MYSQL=2
	 */
		@Override
		public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
			regraatcompRepositorio = new RegraAtcompRepositorio(1);
			RegraAtcomp a = new RegraAtcomp();
			a.setCodigo(Integer.parseInt(request.getParameter("codigoRadio")));
			RegraAtcomp atcomp = regraatcompRepositorio.Consultar(a);
			request.setAttribute("atcomp", atcomp);		
			return "/visao/TelasTCCv4/TelaAlterarRegraAtcompProfessor.jsp";
		}


	}
