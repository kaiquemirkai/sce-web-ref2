package br.sceweb.testeIntegracao;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import br.sceweb.dominio.UsuarioRepositorio;
import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.IUsuarioDAO;

public class UC28Login {
	
	static UsuarioRepositorio usuarioRepositorio;
	static IUsuarioDAO usuarioDAO;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		usuarioDAO = DAOFactory.getDAOFactory(1).getUsuarioDAO();
		usuarioRepositorio = new UsuarioRepositorio(1);
	}
	/***************************************************************************************************************
	 *                  camada de servico                                                                          *
	 ***************************************************************************************************************/
	/*
	 * CT01 - verifica o comportamento da camada de servico no acesso com sucesso
	 */
	@Test
	public void UC28FBCT01Login_com_sucesso() {
		assertTrue(usuarioDAO.login("usuario1","2222"));
	}
	/*
	 * CT02 - verifica o comportamento da camada de servico no acesso com usuario invalido
	 */
	@Test
	public void UC28A1CT02Login_usuario_invalido() {
		assertFalse(usuarioDAO.login("1111","2222"));
	/***************************************************************************************************************
	 *                  camada de dominio                                                                          *
	 ***************************************************************************************************************/
	}
	/*
	 * CT02 - verifica o comportamento da camada de dominio no acesso com sucesso
	 */
	@Test
	public void UC28FBCT02Login_com_sucesso() {
		assertTrue(usuarioRepositorio.login("usuario1","2222"));
	}
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	

}
