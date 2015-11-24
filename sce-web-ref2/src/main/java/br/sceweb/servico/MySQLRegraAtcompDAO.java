package br.sceweb.servico;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.HorasPorAreaTO;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;
import br.sceweb.dominio.RegraAtcomp;

public class MySQLRegraAtcompDAO implements IRegraAtcompDAO{ 

	
	public boolean Cadastrar(RegraAtcomp regraAtcomp) {
		return false;
	}

	public List<RegraAtcomp> Listar(String campoBusca,String valorBusca){
		return null;
	}
	public List<RegraAtcomp> ListarCategoriaPorArea(String area){
		return null;
	}

	public RegraAtcomp Consultar(RegraAtcomp ra) {
		return null;

	}
	public RegraAtcomp ConsultarPorCodigoAtividade(RegraAtcomp ra) {
		ResultSet rs = null;
		PreparedStatement stmt;
		String erro = "";
		RegraAtcomp regraAtcomp = new RegraAtcomp();
		
		try {
			
				
			
			/*
		Select * from regraatcomp as ra where ra.codigoAtividade like "%101- Eventos tecnicos presenciais%" 
 
			 */
			
	        String query = "Select * from regraatcomp as ra where ra.codigoAtividade like ? ";
			 
			stmt = MySQLDAOFactory.criaConexao().prepareStatement(query);
			stmt.setString(1, "%"+ ra.getCodigoAtividade() + "%");
			
			rs = stmt.executeQuery();
			
			while(rs.next()){		
				regraAtcomp.setArea(rs.getString("area"));
				regraAtcomp.setCodigo(rs.getLong("codigo"));
				regraAtcomp.setCargaHoraria(Integer.parseInt(rs.getString("cargaHoraria")));
				regraAtcomp.setCodigoAtividade(rs.getString("codigoAtividade"));
				regraAtcomp.setDataInicioAtividade(rs.getString("dataInicioAtividade"));
				regraAtcomp.setDataTerminoAtividade(rs.getString("dataTerminoAtividade"));
				regraAtcomp.setDescricaoRegra(rs.getString("descricaoRegra"));
				regraAtcomp.setQuantidadeDeAtividadePermitida(Integer.parseInt(rs.getString("quantidadeDeAtividadePermitida")));
							 

			}
			
			stmt.close();
		
			
			
			// stmt.close();
		} catch (SQLException e) {
			
			erro = e.getMessage();
			System.out.println(erro);
		}
		
		return regraAtcomp;
	}

	public boolean Alterar(RegraAtcomp ra) {
		return false;

	}
	public boolean Excluir(RegraAtcomp regraAtcomp) {
		return false;
	}
}
