package br.sceweb.servico;

import java.util.List;

import br.sceweb.dominio.Empresa;



public interface IEmpresaDAO {
	/**
	 * 
	 * @return - retorna um list com todas as empresas
	 */
	public List<Empresa> findAll();
		
	public void merge(Empresa empresa);
	/**
	 * exclui uma empresa da base de dados
	 * @param empresa
	 */
	public void remove(Empresa empresa);
	
	public String cadastra(Empresa e);
	public int exclui(String cnpj);
	public Empresa consulta(Empresa e);
	public List<Empresa> consulta(String cnpj);
	
}
