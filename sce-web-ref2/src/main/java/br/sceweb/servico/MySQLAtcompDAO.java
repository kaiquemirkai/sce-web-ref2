package br.sceweb.servico;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import br.sceweb.dominio.Atcomp;

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

}
