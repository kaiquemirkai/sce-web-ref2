package br.sceweb.servico;

import java.util.List;


import br.sceweb.dominio.RegraAtcomp;

public interface IRegraAtcompDAO {

	public boolean Cadastrar(RegraAtcomp a);
	public boolean Alterar(RegraAtcomp a);
	public List<RegraAtcomp> Listar();
	public RegraAtcomp Consultar(RegraAtcomp a);
	public boolean Excluir(RegraAtcomp a);
	
}
