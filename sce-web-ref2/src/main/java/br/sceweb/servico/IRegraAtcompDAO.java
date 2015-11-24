package br.sceweb.servico;

import java.util.List;


import br.sceweb.dominio.RegraAtcomp;

public interface IRegraAtcompDAO {

	public boolean Cadastrar(RegraAtcomp a);
	public boolean Alterar(RegraAtcomp a);
	public List<RegraAtcomp> Listar(String campoBusca,String valorBusca);
	public List<RegraAtcomp> ListarCategoriaPorArea(String area);
	public RegraAtcomp Consultar(RegraAtcomp a);
	public RegraAtcomp ConsultarPorCodigoAtividade(RegraAtcomp a);
	public boolean Excluir(RegraAtcomp a);
	
}
