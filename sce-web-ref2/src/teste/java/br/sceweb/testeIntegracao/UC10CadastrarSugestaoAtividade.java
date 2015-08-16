package br.sceweb.testeIntegracao;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;



import br.sceweb.dominio.SugestaoAtividade;
import br.sceweb.dominio.SugestaoAtividadeRepositorio; //import da classe
import br.sceweb.servico.DAOFactory;

import br.sceweb.servico.ISugestaoAtividadeDAO;

public class UC10CadastrarSugestaoAtividade {

	static SugestaoAtividadeRepositorio sugestaoAtividadeRepositorio;
	static ISugestaoAtividadeDAO IsugestaoAtividadeDAO;
	static SugestaoAtividade sugestaoAtividade = new SugestaoAtividade();
	@BeforeClass
	public static void setUpBeforeClass() throws Exception { //inclusão no BD
		IsugestaoAtividadeDAO = DAOFactory.getDAOFactory(1).getSugestaoAtividadeDAO();
		sugestaoAtividadeRepositorio = new SugestaoAtividadeRepositorio(1);
		
		sugestaoAtividade.setCodigo(0);
		sugestaoAtividade.setQuemCadastrou("joao");
		sugestaoAtividade.setNomeSugestaoAtividade("netcoders");
		sugestaoAtividade.setCategoria("101");
		sugestaoAtividade.setArea("Tecnologia");
		sugestaoAtividade.setDataCadastro("12/07/2015");
		sugestaoAtividade.setDataVigenciaInicio("15/07/2015");
		sugestaoAtividade.setDataVigenciaFim("18/07/2015");
		sugestaoAtividade.setDescricao("Palestra no tatuape");
		
	
	}
	/***************************************************************************************************************
	 *                  camada de servico                                                                          *
	 ***************************************************************************************************************/
	/*
	 * CT01 - verifica o comportamento da camada de servico no acesso com sucesso
	 */
	@Test
	public void test() {
		assertEquals("Cadastro realizado com sucesso",IsugestaoAtividadeDAO.Cadastrar(sugestaoAtividade));
	}

}
