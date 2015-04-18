package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Fachada;

public class IncluirEmpresa implements IComando{
	Fachada fachada;
	public IncluirEmpresa(){
		fachada = new Fachada();
	}

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String resultado = "";
		request.setAttribute("erro", null);
		
		try {
			resultado = fachada.incluirEmpresa(request.getParameter("txtNomeDaEmpresa"), 
					                     request.getParameter("txtCNPJ"),
					                     request.getParameter("txtNomeFantasia"),
					                     request.getParameter("txtEndereco"),
					                     request.getParameter("txtTelefone"),
					                     request.getParameter("txtResponsavel"),
					                     request.getParameter("txtTelefoneResponsavel"),
					                     request.getParameter("txtSetor"),
					                     request.getParameter("txtEmail"));
			request.setAttribute("msg", resultado);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			request.setAttribute("msg", resultado);
		}
		return "/visao/FormEmpresaIncluir.jsp";
	}

}
