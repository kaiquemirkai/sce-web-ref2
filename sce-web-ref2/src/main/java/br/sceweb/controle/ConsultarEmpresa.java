package br.sceweb.controle;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Empresa;
import br.sceweb.dominio.Fachada;

public class ConsultarEmpresa implements IComando {
	Fachada fachada = new Fachada();
	
	public ConsultarEmpresa(){
		fachada = new Fachada();
	}

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String url = "";
		Empresa empresa = new Empresa();
		ArrayList <Empresa> empresas = fachada.consultaCNPJ(request.getParameter("txtCNPJ"));
		
		if (! empresas.isEmpty()){
		    empresa = empresas.get(0);
		   
		    request.setAttribute("nomeDaEmpresa", empresa.getNomeDaEmpresa());
		    request.setAttribute("cnpj", empresa.getCnpj());
		    request.setAttribute("nomeFantasia", empresa.getNomeFantasia());
		    request.setAttribute("endereco", empresa.getEndereco());
		    request.setAttribute("telefone", empresa.getTelefone());
		    request.setAttribute("responsavel", empresa.getResponsavel());
		    request.setAttribute("telefoneResponsavel", empresa.getTelefoneResponsavel());
		    request.setAttribute("setor", empresa.getSetor());
		    request.setAttribute("email", empresa.getEmail());
		    request.setAttribute("msg", "");
		    url = "/visao/FormEmpresaConsultaResultado.jsp";
		}
		else{
			request.setAttribute("msg", "Empresa não localizada");
			url = "/visao/FormEmpresaConsultar.jsp";
		}
		return url;
	}

}
