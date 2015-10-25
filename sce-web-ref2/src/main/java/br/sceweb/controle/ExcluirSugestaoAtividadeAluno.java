package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import br.sceweb.dominio.Fachada;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;
import br.sceweb.dominio.SugestaoAtividadeRepositorio;

public class ExcluirSugestaoAtividadeAluno implements IComando {
	
	SugestaoAtividadeFachada sugestaoAtividadeFachada;
	String codigo = "" ;//será o código da Sugestão Atividade
	
	 Logger logger = Logger.getLogger(Fachada.class);
	 
	public ExcluirSugestaoAtividadeAluno() {
		sugestaoAtividadeFachada = new SugestaoAtividadeFachada();
	}

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		SugestaoAtividade sa = new SugestaoAtividade();
		codigo = request.getParameter("codigoRadio");
		//Aqui
		
        sa.setCodigo(Integer.parseInt(codigo)); 
    	
        SugestaoAtividadeRepositorio sugestaoAtividadeRepositorio = new SugestaoAtividadeRepositorio(1);
        sa = sugestaoAtividadeRepositorio.Consultar(sa);
		//logger.info(" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>obtem parametro do sa para exclusao comando excluir empresa="+ codigo );
		String msg="";
		int resultado = 0;  
		LoginRepositorio loginRepositorio = new LoginRepositorio(1);
	    Login login = new Login();
	    login = loginRepositorio.RetornaUsuarioLogado();
	    if(sa.getCodigoCadastro() == login.getCodigo())
	    {
	    	resultado = sugestaoAtividadeFachada.excluirSugestaoAtividade(sa);
	    	
	    }
		else
		{
			msg = "Você não é o criador desta sugestão por este motivo ela não pode ser excluída!";
		}
		
		
		request.setAttribute("erro", msg);
		
		return "/visao/TelasTCCv4/TelaListarSugestaoAtividadeAluno.jsp";
	}



}

