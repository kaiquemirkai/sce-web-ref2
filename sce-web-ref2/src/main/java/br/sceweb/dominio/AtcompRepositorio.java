package br.sceweb.dominio;

import java.util.ArrayList;
import java.util.List;

import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.IAtcompDAO;

public class AtcompRepositorio {

private IAtcompDAO daoAtcomp;
	
	public AtcompRepositorio(int fabrica) {
		daoAtcomp = DAOFactory.getDAOFactory(fabrica).getAtcompDAO();
	}
	/**
	 * Cadastra a empresa na base de dados
	 * @param empresa
	 * @return boolean true cadastrado false nao cadastrado
	 */
	public boolean Cadastrar (Atcomp atcomp){
		return daoAtcomp.Cadastrar(atcomp);
		
	}
	
	
	public List<Atcomp> Listar(String campoBusca, String valorBusca){
		return daoAtcomp.Listar(campoBusca,valorBusca);
	}
	
	public List<Atcomp> ListarPendenteProfessor(){
		return daoAtcomp.ListarPendenteProfessor();
	}
	
	public List<Object> ListarPendenteProfessorCompleto(){
		return daoAtcomp.ListarPendenteProfessorCompleto();
	}
	
	
	public List<Atcomp> ListarAreaStatus(String area, String status){
		return daoAtcomp.ListarAreaStatus(area, status);
	}
	
	public Double RelatorioHorasPorArea(String areaAtividade){
		return daoAtcomp.RelatorioHorasPorArea(areaAtividade);
	}
	
	
	public Double QuantidadeTotaldeHoras(){
		return daoAtcomp.QuantidadeTotaldeHoras();
	}
	
	
	public Atcomp Consultar(Atcomp a){		
		return daoAtcomp.Consultar(a);
	}
	
	
public boolean Alterar (Atcomp a){
		
		return daoAtcomp.Alterar(a);
		
	}
	
	
	public int QuantidadeAtcompsPorStatus(String status){
		
		return daoAtcomp.QuantidadeAtcompsPorStatus(status);
		
		
	}
	
public int QuantidadeAtcompsPorStatusProfessor(String status){
		
		return daoAtcomp.QuantidadeAtcompsPorStatusProfessor(status);
		
		
	}

public List<HorasPorAreaTO> ListarHorasCategoria(String area)
{
  return daoAtcomp.ListarHorasCategoria(area);	
}

public List<HorasPorAnoTO> ListarHorasPorAreaAno(String ano)
{
  return daoAtcomp.ListarHorasPorAreaAno(ano);	
}


public String GraficoDasCategorias(List<HorasPorAreaTO> horas)
{
	String grafico = "['Categorias', 'Horas Cadastradas', 'Horas Disponíveis', { role: 'annotation' } ], ";
	if ((horas!=null)&& (horas.size()>0)){
	    HorasPorAreaTO horaPorAreaTO = null;
		for (int i = 0; i < horas.size() - 1 ; i++) {
			    
			    horaPorAreaTO = (HorasPorAreaTO) horas.get(i);
			    grafico += "['" + horaPorAreaTO.getCodigoAtividade() + "', " +
			    horaPorAreaTO.getHorasTotais() + " , " + horaPorAreaTO.getQuantidadeFaltante() +
			    " , '' ],";
		}
		 horaPorAreaTO = (HorasPorAreaTO) horas.get(horas.size()-1);
				grafico += "['" + horaPorAreaTO.getCodigoAtividade() + "', " +
			    horaPorAreaTO.getHorasTotais() + " , " + horaPorAreaTO.getQuantidadeFaltante() +
			    " , '' ]";
	}
	
	return grafico;
}



public List<AtcompPendenteAprovacaoTO> ListarAtcompProfessor(String campoBusca,String valorBusca)
{
	return daoAtcomp.ListarAtcompProfessor(campoBusca, valorBusca);
}


public Double QuantidadeTotaldeHorasPorCodigoDeAtividade(String codigoAtividade)
{
	return daoAtcomp.QuantidadeTotaldeHorasPorCodigoDeAtividade(codigoAtividade);
}

	}

