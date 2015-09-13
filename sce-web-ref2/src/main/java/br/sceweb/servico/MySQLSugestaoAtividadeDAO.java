package br.sceweb.servico;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.SugestaoAtividade;



public class MySQLSugestaoAtividadeDAO implements ISugestaoAtividadeDAO{

	public boolean Cadastrar(SugestaoAtividade sa) {
		return false;
	}

	public List<SugestaoAtividade> Listar(){
		return null;
	}
	
	
	public List<SugestaoAtividade> ListarSugestoesRecentes(){
		return null;
	}

	public SugestaoAtividade Consultar(SugestaoAtividade sa) {
		return null;
	}
	//Por causa do JUNIT
	public ArrayList<SugestaoAtividade> consultaCodigo(String codigo) {
		return null;
	}   
	public boolean alterar(SugestaoAtividade sa){
		return false;
	}
	
	@Override
	public int excluir(SugestaoAtividade sa) {
		// TODO Auto-generated method stub
		return 0;
	}
}
