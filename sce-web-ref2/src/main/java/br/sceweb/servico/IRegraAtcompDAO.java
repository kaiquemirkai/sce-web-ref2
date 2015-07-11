package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.RegraAtcomp;

public interface IRegraAtcompDAO {

	public boolean Cadastrar(RegraAtcomp ra);
	public List<RegraAtcomp> Listar();
	public RegraAtcomp Consultar(RegraAtcomp ra);
	public boolean Alterar(RegraAtcomp ra);
}
