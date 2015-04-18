
package br.sceweb.dominio;

import java.util.ArrayList;
import java.util.List;

import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.HibernateEmpresaDAO;
import br.sceweb.servico.IEmpresaDAO;

/**
 * @author: edson
 * @version 
 */
public class EmpresaRepositorio {
	private IEmpresaDAO daoEmpresa;
	
	public EmpresaRepositorio(int fabrica) {
		daoEmpresa = DAOFactory.getDAOFactory(fabrica).getEmpresaDAO();
	}
	/**
	 * Cadastra a empresa na base de dados
	 * @param empresa
	 * @return boolean true cadastrado false nao cadastrado
	 */
	public String save (Empresa empresa){
		return daoEmpresa.cadastra(empresa);
		
	}
	public List<Empresa> findAll(){
		return daoEmpresa.findAll();
	}
	public ArrayList<Empresa> consulta(String cnpj){
		return (ArrayList<Empresa>) daoEmpresa.consulta(cnpj);
	}
	public int exclui(String cnpj){
		return daoEmpresa.exclui(cnpj);
	}
}
