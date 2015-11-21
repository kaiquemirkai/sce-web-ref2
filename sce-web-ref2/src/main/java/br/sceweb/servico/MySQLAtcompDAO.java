package br.sceweb.servico;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.HorasPorAnoTO;
import br.sceweb.dominio.HorasPorAreaTO;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.Professor;
import br.sceweb.dominio.ProfessorRepositorio;

public class MySQLAtcompDAO implements IAtcompDAO{

	public boolean Cadastrar(Atcomp atcomp) {
				return false;
	}
	public List<Atcomp> Listar(){
		return null;
	}
	
public Atcomp Consultar(Atcomp a) {
		return null;

	}

public Double RelatorioHorasPorArea(String areaAtividade) 
{
	return null;
}


public int QuantidadeAtcompsPorStatus(String status){
	
	return 0;
}
public List<Atcomp> ListarPendenteProfessor()
{
	return null;
}
public List<Object> ListarPendenteProfessorCompleto()
{
	return null;
}

public boolean Alterar(Atcomp a)
{
	return false;
}

public int QuantidadeAtcompsPorStatusProfessor(String status)
{
 return 0;
}


public List<Atcomp> ListarAreaStatus(String area, String status)
{
return null;
}

public List<HorasPorAreaTO> ListarHorasCategoria(String area)
{
	ResultSet rs = null;
	PreparedStatement stmt;
	String erro = "";
	List<HorasPorAreaTO> lista = new ArrayList<HorasPorAreaTO>();
	
	try {
		
		Login login =LoginRepositorio.RetornaUsuarioLogado();		
		
		/*
		 select sum(atc.horasLancadas)"HorasTotais",atc.codigoAtividade,rra.quantidadeDeAtividadePermitida"CargaMaxima" ,
		  (rra.quantidadeDeAtividadePermitida - sum(atc.horasLancadas))"QuantidadeFaltante" from atcomp as atc
		    inner join regraatcomp as rra on atc.codigoAtividade = rra.codigoAtividade
		     where atc.codigoAluno = 1 and atc.areaAtividade="01"  and atc.status = "Aprovado" 
		     and atc.codigoAtividade in( select regraatcomp.codigoAtividade from regraatcomp) group by rra.codigoAtividade
		 */
		
        String query = "select sum(atc.horasLancadas)'HorasTotais',atc.codigoAtividade,rra.quantidadeDeAtividadePermitida'CargaMaxima' , "+
		  "(rra.quantidadeDeAtividadePermitida - sum(atc.horasLancadas))'QuantidadeFaltante' from atcomp as atc " +
		    "inner join regraatcomp as rra on atc.codigoAtividade = rra.codigoAtividade " +
		     " where atc.codigoAluno = ? and atc.areaAtividade= ?  and atc.status = ? " + 
		     " and atc.codigoAtividade in( select regraatcomp.codigoAtividade from regraatcomp) group by rra.codigoAtividade ";
		 
		stmt = MySQLDAOFactory.criaConexao().prepareStatement(query);
		stmt.setLong(1, login.getCodigo());
		stmt.setString(2, area);
		stmt.setString(3, "Aprovado");
		rs = stmt.executeQuery();
		
		while(rs.next()){		
			HorasPorAreaTO  horasPorAreaTO = new HorasPorAreaTO();
			horasPorAreaTO.setHorasTotais(rs.getString("horasTotais"));
			horasPorAreaTO.setCodigoAtividade(rs.getString("codigoAtividade"));
			horasPorAreaTO.setCargaMaxima(rs.getString("CargaMaxima"));
			horasPorAreaTO.setQuantidadeFaltante(rs.getString("QuantidadeFaltante"));
			
			lista.add(horasPorAreaTO);			 

		}
		
		stmt.close();
	
		
		
		// stmt.close();
	} catch (SQLException e) {
		
		erro = e.getMessage();
		System.out.println(erro);
	}
	
	return lista;
}

public List<HorasPorAnoTO> ListarHorasPorAreaAno(String ano)
{
	ResultSet rs = null;
	PreparedStatement stmt;
	String erro = "";
	List<HorasPorAnoTO> lista = new ArrayList<HorasPorAnoTO>();
	
	try {
		
		Login login =LoginRepositorio.RetornaUsuarioLogado();		
		
		/*
		select  sum(atc.horasLancadas)totalhoras, atc.areaAtividade from atcomp as atc 
		where atc.codigoAluno = 1
		 and atc.`status`= 'Aprovado' 
		 and year(str_to_date(atc.dataEntrega,'%d/%m/%Y' )) = 2015 
		 group by atc.areaAtividade order by atc.areaAtividade asc
		
		
		 */
		
        String query = "select  sum(atc.horasLancadas)totalHoras, atc.areaAtividade from atcomp as atc " + 
		"where atc.codigoAluno = ? " +
		" and atc.status= 'Aprovado' " + 
		" and year(str_to_date(atc.dataEntrega,'%d/%m/%Y' )) = ? " + 
		" group by atc.areaAtividade order by atc.areaAtividade asc ";
		 
		 
		stmt = MySQLDAOFactory.criaConexao().prepareStatement(query);
		stmt.setLong(1, login.getCodigo());
		stmt.setString(2, ano);
		rs = stmt.executeQuery();
		
		while(rs.next()){		
			HorasPorAnoTO  horasPorAnoTO = new HorasPorAnoTO();
			horasPorAnoTO.setHorasTotais(rs.getString("totalHoras"));
			horasPorAnoTO.setAreaAtividade(rs.getString("AreaAtividade"));
			
			lista.add(horasPorAnoTO);			 

		}
		
		stmt.close();
	
		
		
		// stmt.close();
	} catch (SQLException e) {
		
		erro = e.getMessage();
		System.out.println(erro);
	}
	
	return lista;
}








public Double QuantidadeTotaldeHoras()
{
	ResultSet rs = null;
	PreparedStatement stmt;
	String erro = "";
	double resultado = 0.0;
	
	try {
		
		Login login =LoginRepositorio.RetornaUsuarioLogado();		
		
		/*
		 select sum(atc.horasLancadas)"HorasTotais",atc.codigoAtividade,rra.quantidadeDeAtividadePermitida"CargaMaxima" ,
		  (rra.quantidadeDeAtividadePermitida - sum(atc.horasLancadas))"QuantidadeFaltante" from atcomp as atc
		    inner join regraatcomp as rra on atc.codigoAtividade = rra.codigoAtividade
		     where atc.codigoAluno = 1 and atc.areaAtividade="01"  and atc.status = "Aprovado" 
		     and atc.codigoAtividade in( select regraatcomp.codigoAtividade from regraatcomp) group by rra.codigoAtividade
		 */
		
        String query = "Select sum(atc.horasLancadas)'horasTotais' from atcomp as atc where atc.codigoAluno = ? and atc.status = 'Aprovado'" ;
		 
		stmt = MySQLDAOFactory.criaConexao().prepareStatement(query);
		stmt.setLong(1, login.getCodigo());
		rs = stmt.executeQuery();		
		while(rs.next()){		
			
			resultado = rs.getDouble("horasTotais");
			
		}
		
		stmt.close();
	
		
		
		// stmt.close();
	} catch (SQLException e) {
		
		erro = e.getMessage();
		System.out.println(erro);
	}
	
	return resultado;
}






}
