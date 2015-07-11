package br.sceweb.dominio;

import java.util.List;

import br.sceweb.servico.DAOFactory;

import br.sceweb.servico.IRegraAtcompDAO;

public class RegraAtcompRepositorio {

private IRegraAtcompDAO daoRegraAtcomp;
	
	public RegraAtcompRepositorio(int fabrica) {
		daoRegraAtcomp = DAOFactory.getDAOFactory(fabrica).getRegraAtcompDAO();
	}
	
	public boolean Cadastrar (RegraAtcomp regraAtcomp){
		
		return daoRegraAtcomp.Cadastrar(regraAtcomp);
		
	}
	
	
	public List<RegraAtcomp> Listar(){
		return daoRegraAtcomp.Listar();
	}
	
	public RegraAtcomp Consultar(RegraAtcomp ra){		
		return daoRegraAtcomp.Consultar(ra);
	}
	
	public boolean Alterar(RegraAtcomp regraAtcomp){
		return daoRegraAtcomp.Alterar(regraAtcomp);
		
	}
	
	/*
	 
	public ArrayList<Atcomp> consulta(String cnpj){
		return (ArrayList<Atcomp>) daoAtcomp.consulta(cnpj);
	}
	public int exclui(String cnpj){
		return daoAtcomp.exclui(cnpj);
		
		*/
	}



