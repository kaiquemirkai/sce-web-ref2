package br.sceweb.servico;

import java.util.List;


import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.Empresa;
import br.sceweb.dominio.SugestaoAtividade;

//Está interface
public interface ISugestaoAtividadeDAO {

	public boolean Cadastrar(SugestaoAtividade sa);
	public List<SugestaoAtividade> Listar();
	
	//Utilizado por causa do JUnit
	public List<SugestaoAtividade> consultaCodigo(String codigo);
	
	public boolean alterar(SugestaoAtividade sa);
	//public void remove(SugestaoAtividade sa);
	public int excluir(SugestaoAtividade sa);
	
	public SugestaoAtividade Consultar(SugestaoAtividade sa);
	
}
