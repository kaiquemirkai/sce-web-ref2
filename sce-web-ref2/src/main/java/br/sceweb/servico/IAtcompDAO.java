package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.Empresa;

public interface IAtcompDAO {

	public boolean Cadastrar(Atcomp a);
	public List<Atcomp> Listar();
	public List<RegraAtcomp> Listar2();
	public Atcomp Consultar(Atcomp a);
	
}
