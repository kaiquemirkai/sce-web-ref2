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
import br.sceweb.dominio.AtcompPendenteAprovacaoTO;
import br.sceweb.dominio.HoraMediaTurmaTO;
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
	public List<Atcomp> Listar(String campoBusca, String valorBusca){
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



public List<HoraMediaTurmaTO> ListarMediaHorasPorTurma(long codigo)
{
	ResultSet rs = null;
	PreparedStatement stmt;
	String erro = "";
	List<HoraMediaTurmaTO> lista = new ArrayList<HoraMediaTurmaTO>();
	
	try {
		
		Login login =LoginRepositorio.RetornaUsuarioLogado();		
		
		/*
		select (sum(atc.horaslancadas)/(select count(aluno.codigo) from aluno where  aluno.turma = pp.turma )) as MediaHorasPorTurma 
		,pp.turma from atcomp as atc, aluno as alun , perfilprofessor as pp
		 where atc.codigoAluno = alun.codigo
		  and alun.turma = pp.turma 
		  and pp.codigoProfessor =1 
		  and atc.status = "Aprovado" group by alun.turma
		 */
		
        String query = "select (sum(atc.horaslancadas)/(select count(aluno.codigo) from aluno" +
        " where aluno.turma = pp.turma )) as MediaHorasPorTurma , pp.turma from atcomp as atc" +
        " , aluno as alun , perfilprofessor as pp where atc.codigoAluno = alun.codigo" + 
        " and alun.turma = pp.turma and pp.codigoProfessor = ? and atc.status = 'Aprovado'" +
        " group by alun.turma"; 
		 
		stmt = MySQLDAOFactory.criaConexao().prepareStatement(query);
		stmt.setLong(1, codigo);
		rs = stmt.executeQuery();
		
		while(rs.next()){		
			HoraMediaTurmaTO  horaMediaTurmaTO = new HoraMediaTurmaTO();
			horaMediaTurmaTO.setMediaHorasTurma(rs.getString("MediaHorasPorTurma"));
			horaMediaTurmaTO.setTurma(rs.getString("turma"));
			
			lista.add(horaMediaTurmaTO);			 

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




public Double QuantidadeTotaldeHorasPorCodigoDeAtividade(String codigoAtividade)
{
	ResultSet rs = null;
	PreparedStatement stmt;
	String erro = "";
	double resultado = 0.0;
	
	try {
		
		Login login =LoginRepositorio.RetornaUsuarioLogado();		
		
		/*
		 select sum(atc.horasLancadas) from atcomp as atc where atc.codigoAluno = 1 
		 and (atc.status = "Aprovado" or atc.status ="Pendente") 
		 and atc.codigoatividade like "%301- Eventos por Convocacao Publica%"
		 */
		
        String query = "Select sum(atc.horasLancadas)'horasTotais' from atcomp as atc where atc.codigoAluno = ?" +
        " and (atc.status = 'Aprovado' or atc.status='Pendente') and atc.codigoatividade like ?" ;
		 
		stmt = MySQLDAOFactory.criaConexao().prepareStatement(query);
		stmt.setLong(1, login.getCodigo());
		stmt.setString(2, "%"+ codigoAtividade+"%");
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







@Override
public List<AtcompPendenteAprovacaoTO> ListarAtcompProfessor(String campoBusca,String valorBusca) {
	ResultSet rs = null;
	PreparedStatement stmt;
	String erro = "";
	List<AtcompPendenteAprovacaoTO> lista = new ArrayList<AtcompPendenteAprovacaoTO>();
	
	try {
		
		Login login =LoginRepositorio.RetornaUsuarioLogado();		
		ProfessorRepositorio professorRepositorio = new ProfessorRepositorio(1);
		Professor professor = new Professor();
		professor.setCodigoLogin(login.getCodigo());
		professor = professorRepositorio.Consultar(professor);
		
		
		String clausulaBusca = "";
		
		
		if(campoBusca.equals("nomeAluno"))
		{
			clausulaBusca = " and alun.nome like ?";
			
		}
		if(campoBusca.equals("turma"))
		{
			clausulaBusca = " and alun.turma like ?";
			
		}
		if(campoBusca.equals("curso"))
		{
			clausulaBusca = " and alun.curso like ?";
			
		}
		if(campoBusca.equals("status"))
		{
			clausulaBusca = " and atc.status like ?";
			
		}
		
		
		
		
        String query = "SELECT alun.*, atc.*, atc.codigo codigoatc FROM aluno alun inner join atcomp atc on alun.codigo = atc.codigoAluno " + 
			" WHERE atc.codigoAluno IN (SELECT alu.codigo FROM aluno AS alu WHERE alu.turma IN " + 
			" (SELECT ppf.turma FROM perfilprofessor AS ppf WHERE ppf.codigoProfessor = ?)) ";
        String order = " order by atc.codigo asc";
        
        
		stmt = MySQLDAOFactory.criaConexao().prepareStatement(query + clausulaBusca  + order );
		
		
		stmt.setLong(1, professor.getCodigo());
		
		
	
		if(campoBusca.equals("nomeAluno"))
		{
			
			stmt.setString(2, "%" + valorBusca + "%");
		}
		if(campoBusca.equals("turma"))
		{
			
			stmt.setString(2, "%" + valorBusca + "%");
		}
		if(campoBusca.equals("curso"))
		{
			
			stmt.setString(2, "%" + valorBusca + "%");
		}
		
		if(campoBusca.equals("status"))
		{
			
			stmt.setString(2, "%" + valorBusca + "%");
		}
		
		
		rs = stmt.executeQuery();
		
		while(rs.next()){		
			AtcompPendenteAprovacaoTO atcompPendenteAprovacaoTO = new AtcompPendenteAprovacaoTO();
			atcompPendenteAprovacaoTO.setCodigoAtcomp(rs.getLong("codigoatc"));
			atcompPendenteAprovacaoTO.setAreaAtividade(rs.getString("AreaAtividade"));
			atcompPendenteAprovacaoTO.setDataInicio(rs.getString("dataInicio"));
			atcompPendenteAprovacaoTO.setCargaHoraria(rs.getString("horasLancadas"));
			atcompPendenteAprovacaoTO.setNomeAluno(rs.getString("nome"));
			atcompPendenteAprovacaoTO.setRa(rs.getString("ra"));
			atcompPendenteAprovacaoTO.setTurma(rs.getString("turma"));
			atcompPendenteAprovacaoTO.setCurso(rs.getString("curso"));
			atcompPendenteAprovacaoTO.setDescricao(rs.getString("descricao"));
			atcompPendenteAprovacaoTO.setStatus(rs.getString("status"));
			lista.add(atcompPendenteAprovacaoTO);			 

		}
		
		stmt.close();
	
		
		
		// stmt.close();
	} catch (SQLException e) {
		
		erro = e.getMessage();
		System.out.println(erro);
	}
	return lista;
}






}
