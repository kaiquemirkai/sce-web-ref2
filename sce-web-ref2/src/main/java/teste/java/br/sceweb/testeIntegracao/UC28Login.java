package teste.java.br.sceweb.testeIntegracao;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.ILoginDAO;

public class UC28Login {
	
	static LoginRepositorio loginRepositorio;
	static ILoginDAO loginDAO;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		loginDAO = DAOFactory.getDAOFactory(1).getLoginDAO();
		loginRepositorio = new LoginRepositorio(1);
	}
	/***************************************************************************************************************
	 *                  camada de servico                                                                          *
	 ***************************************************************************************************************/
	/*
	 * CT01 - verifica o comportamento da camada de servico no acesso com sucesso
	 */
	@Test
	public void UC28FBCT01Login_com_sucesso() {
		//assertTrue(loginDAO.ValidarLogin("k","1"));
	}
	/*
	 * CT02 - verifica o comportamento da camada de servico no acesso com usuario invalido
	 */
	@Test
	public void UC28A1CT02Login_usuario_invalido() {
		//assertFalse(loginDAO.ValidarLogin("1111","2222"));
	/***************************************************************************************************************
	 *                  camada de dominio                                                                          *
	 ***************************************************************************************************************/
	}
	/*
	 * CT02 - verifica o comportamento da camada de dominio no acesso com sucesso
	 */
	@Test
	public void UC28FBCT02Login_com_sucesso() {
		//assertTrue(loginRepositorio.ValidarLogin("usuario1","2222"));
	}
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	

}
