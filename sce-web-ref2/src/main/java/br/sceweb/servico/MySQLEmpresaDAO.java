package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Empresa;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MySQLEmpresaDAO implements IEmpresaDAO{
	private static final String cadastraEmpresa = "INSERT INTO empresa "
			+ "(codigo, cnpj, nome, nomeFantasia, endereco, telefone) VALUES (?,?, ?, ?,?,? ) ";
	private static final String excluiEmpresa = "DELETE FROM empresa WHERE "
			+ "cnpj = ? ";
	private static final String consultaEmpresa= "SELECT *  FROM empresa WHERE "
			+ "cnpj = ? ";
	private static final String consultaNome = "SELECT *  FROM empresa WHERE "
			+ "nome LIKE ? ";
	private static final String alterarDados = "UPDATE empresa SET nome = ? "
			+ ", endereco = ?, telefone=? WHERE cnpf = ? ";
	String msg = "";
	@Override
	public List<Empresa> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void merge(Empresa empresa) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Empresa empresa) {
		PreparedStatement stmt;
		int rc = 0;
		try {
			stmt = MySQLDAOFactory.criaConexao().prepareStatement(excluiEmpresa);
			stmt.setString(1, empresa.getCnpj());
			rc = stmt.executeUpdate();
			
			stmt.close();
		} catch (SQLException e) {
			msg = e.getMessage();
		}
		
		
	}

	@Override
	public String cadastra(Empresa e) {
		PreparedStatement stmt;
		int rc = 0;
		try {
			stmt = MySQLDAOFactory.criaConexao().prepareStatement(cadastraEmpresa);
			stmt.setInt(1, 1);
			stmt.setString(2, e.getCnpj());
			stmt.setString(3, e.getNomeDaEmpresa());
			stmt.setString(4, e.getNomeFantasia());
			stmt.setString(5, e.getEndereco());
			stmt.setString(6, e.getTelefone());

			rc = stmt.executeUpdate();
			stmt.close();
		} catch (SQLException ex) {
			msg = ex.getMessage();
			System.out.println("metodo cadastra mysqlempresadao =" + ex.getMessage());
		}
		return null;
	}

	@Override
	public int exclui(String cnpj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Empresa consulta(Empresa e) {
		ResultSet rs = null;
		PreparedStatement stmt;
		try {

			stmt = MySQLDAOFactory.criaConexao().prepareStatement(consultaNome);
			stmt.setString(1,e.getNomeDaEmpresa());

			rs = stmt.executeQuery();
			
			// stmt.close();
		} catch (SQLException ex) {
			msg = ex.getMessage();
		}
		return null;
	}

	@Override
	public List<Empresa> consulta(String cnpj) {
		ResultSet rs = null;
		PreparedStatement stmt;
		try {

			stmt = MySQLDAOFactory.criaConexao().prepareStatement(consultaEmpresa);
			stmt.setString(1, cnpj);
			rs = stmt.executeQuery();
			// stmt.close();
		} catch (SQLException e) {
			
			msg = e.getMessage();
			System.out.println(msg);
		}
		return null;
	}

}
