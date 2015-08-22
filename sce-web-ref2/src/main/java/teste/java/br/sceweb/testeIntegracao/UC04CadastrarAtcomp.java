package teste.java.br.sceweb.testeIntegracao;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.IAtcompDAO;
import br.sceweb.servico.ILoginDAO;

public class UC04CadastrarAtcomp {

	static AtcompRepositorio atcompRepositorio;
	static IAtcompDAO atcompDAO;
	static Atcomp atcomp = new Atcomp();
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		atcompDAO = DAOFactory.getDAOFactory(1).getAtcompDAO();
		atcompRepositorio = new AtcompRepositorio(1);
		
		atcomp.setAreaAtividade("socio");
		atcomp.setCodigoAtividade("123");
		atcomp.setDataInicio("12/05");
		atcomp.setHoraInicio("12:00");
		atcomp.setDataFim("12/06");
		atcomp.setHoraFim("15:00");
		atcomp.setDescricao("desc");
		
	
	}
	/***************************************************************************************************************
	 *                  camada de servico                                                                          *
	 ***************************************************************************************************************/
	/*
	 * CT01 - verifica o comportamento da camada de servico no acesso com sucesso
	 */
	@Test
	public void test() {
		assertEquals("Cadastro realizado com sucesso",atcompDAO.Cadastrar(atcomp));
	}

}
