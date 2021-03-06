package br.sceweb.dominio;

import java.util.ArrayList;
import java.util.List;

import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.ISugestaoAtividadeDAO;

public class SugestaoAtividadeRepositorio {

	private ISugestaoAtividadeDAO IdaoSugestaoAtividade;

	//o parametro "fabrica" poder� ser 1 >>Hibernate ou 2 MySQL
	//decidindo em qual itera��o ser� feito na classe ""
	public SugestaoAtividadeRepositorio(int fabrica) {

		//Inst�ncia criada
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


	public List<SugestaoAtividade> Listar(String campoBusca, String valorBusca){
		return IdaoSugestaoAtividade.Listar(campoBusca,valorBusca);
	}
	
	
	public List<SugestaoAtividade> ListarSugestoesRecentes(){
		String area ="";
		AtcompRepositorio atcompRepositorio = new AtcompRepositorio(1);
		double tecnologica = atcompRepositorio.RelatorioHorasPorArea("01");
		double social = atcompRepositorio.RelatorioHorasPorArea("02");
		double cidada = atcompRepositorio.RelatorioHorasPorArea("03");
		
		
		if(tecnologica <= social && tecnologica <= cidada)
		{
			area="01";
		}
		if(social <= tecnologica && social <= cidada)
		{
			area="02";
		}
		if(cidada <= social && cidada <= tecnologica)
		{
			area="03";
		}
		
		
		return IdaoSugestaoAtividade.ListarSugestoesRecentes(area);
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

