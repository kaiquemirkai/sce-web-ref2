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
	
	
	public List<RegraAtcomp> Listar(String campoBusca, String valorBusca){
		return daoRegraAtcomp.Listar(campoBusca,valorBusca);
	}
	
	public List<RegraAtcomp> ListarCategoriaPorArea(String area){
		return daoRegraAtcomp.ListarCategoriaPorArea(area);
	}
	
	public RegraAtcomp Consultar(RegraAtcomp regraAtcomp){	
		return daoRegraAtcomp.Consultar(regraAtcomp);
	}
	
	public RegraAtcomp ConsultarPorCodigoAtividade(RegraAtcomp a)
	{
		return daoRegraAtcomp.ConsultarPorCodigoAtividade(a);
	}
	
	

	
	/*
	 
	public ArrayList<Atcomp> consulta(String cnpj){
		return (ArrayList<Atcomp>) daoAtcomp.consulta(cnpj);
	}
	public int exclui(String cnpj){
		return daoAtcomp.exclui(cnpj);
		
		*/
	}



