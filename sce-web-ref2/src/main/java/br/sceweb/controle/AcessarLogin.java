package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.Fachada;
import br.sceweb.dominio.Login;

public class AcessarLogin implements IComando{
	Fachada fachada;
	public AcessarLogin(){
		fachada = new Fachada();
	}
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		Login login = new Login();
		
		login = fachada.login(request.getParameter("txtLogin"), request.getParameter("txtSenha"));
		
		if (login != null ){
			
			AtcompRepositorio atcompRepositorio = new AtcompRepositorio(1);
			String tecnologica = atcompRepositorio.RelatorioHorasPorArea("01") + "";
			String tecnologicaDiferenca = 80 - Double.valueOf(tecnologica) + "";
			
			String cidada = atcompRepositorio.RelatorioHorasPorArea("03") + "";
			String cidadaDiferenca = 80 - Double.valueOf(cidada) + "";
			
			String cultural = atcompRepositorio.RelatorioHorasPorArea("02") + "";
			String culturalDiferenca = 80 - Double.valueOf(cultural) + "";
			
			request.setAttribute("tecnologica", tecnologica);
			request.setAttribute("tecnologicadif", tecnologicaDiferenca);
			
			request.setAttribute("cidada", cidada);
			request.setAttribute("cidadadif", cidadaDiferenca);
						
			request.setAttribute("cultural", cultural);			
			request.setAttribute("culturaldif", culturalDiferenca);
			
			
			url = "/visao/TelasTCCv4/HomeAluno.jsp";			
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv4/HomeAluno.jsp";
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}
		
		return url;
	}
}