package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.RegraAtcomp;

public class MySQLRegraAtcompDAO implements IRegraAtcompDAO{ 

	
	public boolean Cadastrar(RegraAtcomp regraAtcomp) {
		return false;
	}

	public List<RegraAtcomp> Listar(){
		return null;
	}
	public List<RegraAtcomp> ListarCategoriaPorArea(String area){
		return null;
	}

	public RegraAtcomp Consultar(RegraAtcomp ra) {
		return null;

	}

	public boolean Alterar(RegraAtcomp ra) {
		return false;

	}
	public boolean Excluir(RegraAtcomp regraAtcomp) {
		return false;
	}
}
