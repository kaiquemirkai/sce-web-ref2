package br.sceweb.controle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import br.sceweb.dominio.Fachada;
import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;

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
		logger.info(" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>obtem parametro do sa para exclusao comando excluir empresa="+ codigo );
		String msg="";
		int resultado = 0;
		
		resultado = sugestaoAtividadeFachada.excluirSugestaoAtividade(sa); 
		                                            //STRING.trim() - retira os espaços em branco

		if (resultado == 1)
			msg = "Registro excluido com sucesso";
		
		else
			msg = "Registro não excluido";
		
		request.setAttribute("msg", msg);
		
		return "/visao/TelasTCCv4/TelaListarSugestaoAtividadeAluno.jsp";
	}



}

