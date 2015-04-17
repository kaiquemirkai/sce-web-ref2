package br.sceweb.testeIntegracao;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import br.sceweb.dominio.Empresa;
import br.sceweb.dominio.Fachada;
import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.IEmpresaDAO;

public class UC02ConsultarEmpresa {
	static Fachada fachada;
	static String cnpj=null;
	static IEmpresaDAO daoEmpresa;
	static Empresa empresa;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		daoEmpresa = DAOFactory.getDAOFactory(1).getEmpresaDAO();
		fachada = new Fachada();
		cnpj = "89424232000180";
		empresa = new Empresa();
		//89.424.232/0001-80
		empresa.setNomeDaEmpresa("empresa x");
		empresa.setCnpj("89424232000180");
		empresa.setNomeFantasia("empresa x");
		empresa.setEndereco("rua taquari");
		empresa.setTelefone("12121212");
		empresa.setResponsavel("jose silva");
		empresa.setTelefoneResponsavel("121212");
		empresa.setSetor("contabilidade");
		empresa.setEmail("jsilva@gmail.com");
		daoEmpresa.cadastra(empresa);
	}
	/***************************************************************************************************************
	 *                  camada de dominio                                                                         *
	 ***************************************************************************************************************/
	/*
	 * CT01 - verifica o comportamento na camada de dominio na cosulta uma empresa por cnpj com sucesso
	 */
	@Test
	public void UC02FBCT01ConsultaEmpresa_CNPJ_com_sucesso() {
		assertEquals(1,fachada.consultaCNPJ(cnpj).size());
		
		
	}
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		daoEmpresa.exclui("89424232000180");//no caso de exception em runtime nao capturado este metodo eh executado
		
	}

	
}
