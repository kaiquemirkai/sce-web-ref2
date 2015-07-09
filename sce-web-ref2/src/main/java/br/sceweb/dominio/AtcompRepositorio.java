package br.sceweb.dominio;

import java.util.ArrayList;
import java.util.List;

import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.IAtcompDAO;

public class AtcompRepositorio {

private IAtcompDAO daoAtcomp;
	
	public AtcompRepositorio(int fabrica) {
		daoAtcomp = DAOFactory.getDAOFactory(fabrica).getAtcompDAO();
	}
	/**
	 * Cadastra a empresa na base de dados
	 * @param empresa
	 * @return boolean true cadastrado false nao cadastrado
	 */
	public boolean Cadastrar (Atcomp atcomp){
		return daoAtcomp.Cadastrar(atcomp);
		
	}
	
	
	public List<Atcomp> Listar(){
		return daoAtcomp.Listar();
	}
	
	public Atcomp Consultar(Atcomp a){		
		return daoAtcomp.Consultar(a);
	}
	/*
	 
	public ArrayList<Atcomp> consulta(String cnpj){
		return (ArrayList<Atcomp>) daoAtcomp.consulta(cnpj);
	}
	public int exclui(String cnpj){
		return daoAtcomp.exclui(cnpj);
		
		*/
	}

