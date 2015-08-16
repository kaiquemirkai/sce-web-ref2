
package br.sceweb.testeIntegracao;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;


import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeFachada;
import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.ISugestaoAtividadeDAO;

public class UC11ConsultarSugestaoAtividade {
	
	static SugestaoAtividadeFachada sugestaoAtividadeFachada;
	static String codigo = null;
	static ISugestaoAtividadeDAO IdaoSugestaoAtividade;
	static SugestaoAtividade sugestaoAtividade;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		
		IdaoSugestaoAtividade = DAOFactory.getDAOFactory(1).getSugestaoAtividadeDAO();
		sugestaoAtividadeFachada = new SugestaoAtividadeFachada();
		codigo = "4565161565";
		sugestaoAtividade = new SugestaoAtividade();
		sugestaoAtividade.setCodigo(45651);
		sugestaoAtividade.setQuemCadastrou("jose");
		sugestaoAtividade.setNomeSugestaoAtividade("teatro");
		sugestaoAtividade.setDataCadastro("12/12/2011");
		sugestaoAtividade.setArea("sócio-cultural");
		sugestaoAtividade.setDataVigenciaInicio("07/07/2015");
		sugestaoAtividade.setDataVigenciaFim("10/07/2015");
		sugestaoAtividade.setDescricao("bairro itaquera");
		IdaoSugestaoAtividade.Cadastrar(sugestaoAtividade);
	}
	/***************************************************************************************************************
	 *                  camada de dominio                                                                         *
	 ***************************************************************************************************************/
	/*
	 * CT01 - verifica o comportamento na camada de dominio na consulta uma Sugestão Atividade por codigo com sucesso
	 */
	@Test
	public void UC02FBCT01ConsultaSugestaoAtividade_codigo_com_sucesso() {
		assertEquals(1,sugestaoAtividadeFachada.consultaCodigo(codigo).size());
		
		
	}
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		
		IdaoSugestaoAtividade.excluir(sugestaoAtividade);//no caso de exception em runtime nao capturado este metodo eh executado
		
	}

	
}
