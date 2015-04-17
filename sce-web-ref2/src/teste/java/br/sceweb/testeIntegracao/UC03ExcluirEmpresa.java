package br.sceweb.testeIntegracao;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import br.sceweb.dominio.Empresa;
import br.sceweb.dominio.Fachada;
import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.IEmpresaDAO;

public class UC03ExcluirEmpresa {

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
		
	}
	/***************************************************************************************************************
	 *                  camada de servico                                                                          *
	 ***************************************************************************************************************/
	/*
	 * CT01 - verifica o comportamento na camada de persistencia na exclusao de uma empresa por cnpj com sucesso
	 */
	@Test
	public void UC03FBCT01ExcluirEmpresa_CNPJ_com_sucesso() {
		daoEmpresa.cadastra(empresa);
		assertEquals(1,daoEmpresa.exclui("89424232000180"));
		
		
	}
	/***************************************************************************************************************
	 *                  camada de dominio                                                                          *
	 ***************************************************************************************************************/
	/*
	 * CT02 - verifica o comportamento na camada de dominio na exclusao de uma empresa por cnpj com sucesso
	 */
	@Test
	public void UC03FBCT02ExcluirEmpresa_CNPJ_com_sucesso() {
		daoEmpresa.cadastra(empresa);
		assertEquals(1,fachada.excluirEmpresa("89424232000180"));
		
		
	}
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		
		
	}

}
