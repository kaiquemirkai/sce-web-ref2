package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import br.sceweb.dominio.Fachada;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.Professor;
import br.sceweb.dominio.ProfessorRepositorio;
import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;

public class ExcluirSugestaoAtividadeProfessor implements IComando {
	
	SugestaoAtividadeFachada sugestaoAtividadeFachada;
	String codigo = "" ;//será o código da Sugestão Atividade
	
	 Logger logger = Logger.getLogger(Fachada.class);
	 
	public ExcluirSugestaoAtividadeProfessor() {
		sugestaoAtividadeFachada = new SugestaoAtividadeFachada();
	}

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		SugestaoAtividade sa = new SugestaoAtividade();
        SugestaoAtividadeRepositorio sugestaoAtividadeRepositorio = new SugestaoAtividadeRepositorio(1);
        ProfessorRepositorio professorRepositorio = new ProfessorRepositorio(1);
        Professor professor = new Professor();
        LoginRepositorio loginRepositorio = new LoginRepositorio(1);
        Login login = new Login();
        
        login = loginRepositorio.RetornaUsuarioLogado();
        professor.setCodigoLogin(login.getCodigo());
        professor = professorRepositorio.Consultar(professor);
        
        
        
		codigo = request.getParameter("codigoRadio");
		//Aqui
		
        sa.setCodigo(Integer.parseInt(codigo)); 
		sa = sugestaoAtividadeRepositorio.Consultar(sa);
        
        //logger.info(" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>obtem parametro do sa para exclusao comando excluir empresa="+ codigo );
		String msg="";
		int resultado = 0;
		
			resultado = sugestaoAtividadeFachada.excluirSugestaoAtividade(sa); 
			
		                                           //STRING.trim() - retira os espaços em branco

		if (resultado == 1)
			msg = "Registro excluido com sucesso";
		
		else
			msg = "Registro não excluido";
		
		request.setAttribute("msg", msg);
		
		return "/visao/TelasTCCv4/TelaListarSugestaoAtividadeProfessor.jsp";
	}



}

