package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.RegraAtcompRepositorio;

public class ExcluirRegraAtcompProfessor implements IComando{

	RegraAtcompRepositorio rarepositorio;
	RegraAtcomp regraAtcomp;
	public ExcluirRegraAtcompProfessor(){
		
		regraAtcomp = new RegraAtcomp();
		rarepositorio = new RegraAtcompRepositorio(1);
	}
		@Override
		public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
			String url = "";
			
					
			regraAtcomp.setCodigo(Integer.parseInt(request.getParameter("codigoRadio")));
			
			
			if (rarepositorio.Excluir(regraAtcomp) ){
			
				url = "/visao/TelasTCCv4/TelaListarRegraAtcompProfessor.jsp";		
				request.setAttribute("erro", null);
			} else {
				url = "/visao/TelasTCCv4/TelaListarRegraAtcompProfessor.jsp";	
				request.setAttribute("erro", "Erro: Dados inválidos!");
			}
			
			return url;
		}


	}

