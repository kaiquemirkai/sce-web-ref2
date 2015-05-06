package br.sceweb.servico;


	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

	public class MySQLLoginDAO implements ILoginDAO {
		private static final String login = "SELECT * FROM login WHERE usuario = ? AND senha= ?";
		private static final String cadastraUsuario = "INSERT INTO usuario (usuario, senha, perfil) VALUES ( ?, ?,?) ";
		String msg = "";
		@Override
		public boolean ValidarLogin(String usuario, String senha) {
			ResultSet rs = null;
			PreparedStatement stmt;
			try {
				
				stmt = MySQLDAOFactory.criaConexao().prepareStatement(login);
				stmt.setString(1, usuario);
				stmt.setString(2, senha);
				rs = stmt.executeQuery();

				if (rs.next()) {

					return true;
				}
				// stmt.close();
			} catch (SQLException e) {
				System.out.println("erro =>" + e.getMessage());
				//e.printStackTrace();
			}
			catch (Exception e) {
				System.out.println("erro =>" + e.getMessage());
				//e.printStackTrace();
			}
			return false;
		}
		
		public int cadastra(String id, String senha,String nome) {
			PreparedStatement stmt;
			int rc = 0;
			try {
				stmt = MySQLDAOFactory.criaConexao().prepareStatement(cadastraUsuario);
				stmt.setString(1, id);
				stmt.setString(2, senha);
				stmt.setString(3, nome);
				

				rc = stmt.executeUpdate();
				stmt.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				msg = e.getMessage();
			}
			return rc;
		}
		public String getMessage() {
			return msg;
		}
	}


