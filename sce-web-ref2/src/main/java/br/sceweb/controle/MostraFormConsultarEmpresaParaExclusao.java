package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MostraFormConsultarEmpresaParaExclusao implements IComando {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		request.setAttribute("erro", null);
		return "/visao/FormEmpresaExcluir.jsp";
	}

}
