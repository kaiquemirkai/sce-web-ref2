package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.Empresa;

public interface IAtcompDAO {

	public boolean Cadastrar(Atcomp a);
	public List<Atcomp> Listar();
	
}
