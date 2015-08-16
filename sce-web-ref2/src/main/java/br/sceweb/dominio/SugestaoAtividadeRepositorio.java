package br.sceweb.dominio;

import java.util.ArrayList;
import java.util.List;

import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.ISugestaoAtividadeDAO;

public class SugestaoAtividadeRepositorio {

	private ISugestaoAtividadeDAO IdaoSugestaoAtividade;

	//o parametro "fabrica" poderá ser 1 >>Hibernate ou 2 MySQL
	//decidindo em qual iteração será feito na classe ""
	public SugestaoAtividadeRepositorio(int fabrica) {

		//Instância criada
		IdaoSugestaoAtividade = DAOFactory.getDAOFactory(fabrica).getSugestaoAtividadeDAO();
	}
	/**
	 * Cadastra a empresa na base de dados
	 * @param empresa
	 * @return boolean true cadastrado false nao cadastrado
	 */
	//chamada da ....
	public boolean Cadastrar(SugestaoAtividade sa){
		return IdaoSugestaoAtividade.Cadastrar(sa);

	}


	public List<SugestaoAtividade> Listar(){
		return IdaoSugestaoAtividade.Listar();
	}

	public SugestaoAtividade Consultar(SugestaoAtividade sa){		
		return IdaoSugestaoAtividade.Consultar(sa);
	}
	

	public ArrayList<SugestaoAtividade> consultaCodigo(String codigo){
		return (ArrayList<SugestaoAtividade>) IdaoSugestaoAtividade.consultaCodigo(codigo);
	}

	public boolean alterar(SugestaoAtividade sa){
		return IdaoSugestaoAtividade.alterar(sa);
	}

	public int excluir(SugestaoAtividade sa){
		return IdaoSugestaoAtividade.excluir(sa);
	}
	
}

