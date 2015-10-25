package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.HorasPorAreaTO;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.Empresa;

public interface IAtcompDAO {

	public boolean Cadastrar(Atcomp a);
	public boolean Alterar(Atcomp a);
	public List<Atcomp> Listar();
	public List<Atcomp> ListarPendenteProfessor();
	public List<Object> ListarPendenteProfessorCompleto();
	public Double RelatorioHorasPorArea(String areaAtividade) ;
	public int QuantidadeAtcompsPorStatus(String status);
	public int QuantidadeAtcompsPorStatusProfessor(String status);
	public List<Atcomp> ListarAreaStatus(String area, String status);
	public List<HorasPorAreaTO> ListarHorasCategoria(String area);
	
	///Verificar que porra eh essa!!!!!!!
	//public List<RegraAtcomp> Listar2();
	public Atcomp Consultar(Atcomp a);
	
}
