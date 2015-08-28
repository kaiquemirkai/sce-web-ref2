package br.sceweb.dominio;

import java.util.List;
import javax.swing.*;
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
	
public boolean Alterar (RegraAtcomp a){
		
		return daoRegraAtcomp.Alterar(a);
		
	}
public boolean Excluir (RegraAtcomp regraAtcomp){
		
		return daoRegraAtcomp.Excluir(regraAtcomp);
		
	}
	
	
	public List<RegraAtcomp> Listar(){
		return daoRegraAtcomp.Listar();
	}
	
	public List<RegraAtcomp> ListarCategoriaPorArea(String area){
		return daoRegraAtcomp.ListarCategoriaPorArea(area);
	}
	
	public RegraAtcomp Consultar(RegraAtcomp regraAtcomp){	
		System.out.println("Passei pelo Consultar Repositorio");
		return daoRegraAtcomp.Consultar(regraAtcomp);
	}
	
	
	
	

	
	/*
	 
	public ArrayList<Atcomp> consulta(String cnpj){
		return (ArrayList<Atcomp>) daoAtcomp.consulta(cnpj);
	}
	public int exclui(String cnpj){
		return daoAtcomp.exclui(cnpj);
		
		*/
	}



