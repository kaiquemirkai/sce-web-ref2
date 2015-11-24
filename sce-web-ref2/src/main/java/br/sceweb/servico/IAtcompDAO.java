package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompPendenteAprovacaoTO;
import br.sceweb.dominio.HorasPorAnoTO;
import br.sceweb.dominio.HorasPorAreaTO;
import br.sceweb.dominio.RegraAtcomp;
import br.sceweb.dominio.Empresa;

public interface IAtcompDAO {

	public boolean Cadastrar(Atcomp a);
	public boolean Alterar(Atcomp a);
	public List<Atcomp> Listar(String campoBusca, String valorBusca);
	public List<Atcomp> ListarPendenteProfessor();
	public List<Object> ListarPendenteProfessorCompleto();
	public Double RelatorioHorasPorArea(String areaAtividade) ;
	public int QuantidadeAtcompsPorStatus(String status);
	public int QuantidadeAtcompsPorStatusProfessor(String status);
	public List<Atcomp> ListarAreaStatus(String area, String status);
	public List<HorasPorAreaTO> ListarHorasCategoria(String area);
	public Double QuantidadeTotaldeHoras() ;
	public List<AtcompPendenteAprovacaoTO> ListarAtcompProfessor(String campoBusca,String valorBusca);
	public List<HorasPorAnoTO> ListarHorasPorAreaAno(String ano);
	public Double QuantidadeTotaldeHorasPorCodigoDeAtividade(String codigoAtividade);
	
	///Verificar que porra eh essa!!!!!!!
	//public List<RegraAtcomp> Listar2();
	public Atcomp Consultar(Atcomp a);
	
}
