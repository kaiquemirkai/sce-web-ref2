package br.sceweb.dominio;


import java.util.ArrayList;


import java.util.List;

import org.apache.log4j.Logger;

import br.sceweb.servico.DAOFactory;
import br.sceweb.servico.HibernateEmpresaDAO;
import br.sceweb.servico.IEmpresaDAO;

public class Fachada {
	Empresa empresa;
	EmpresaRepositorio empresaRepositorio;
	UsuarioRepositorio usuarioRepositorio;
   
    Logger logger = Logger.getLogger(Fachada.class);
    /**
     * O metodo construtor instancia o repositorio de acordo com sgbd desejado
     * HIBERNATE = 1
     * MYSQL=2
     */
    public Fachada(){
    	empresaRepositorio = new EmpresaRepositorio(1);
    	usuarioRepositorio = new UsuarioRepositorio(1);
    	
    }
	public boolean login(String userName, String password){
		String url = "";
		return usuarioRepositorio.login(userName, password);
		
	}
	

	public String incluirEmpresa(String nomeDaEmpresa, String cnpj, String nomeFantasia, String endereco, String telefone, 
		   String responsavel, String telefoneResponsavel, String setor, String email) {
		
		empresa = new Empresa();
		String codigoRetorno="";
		try {
			empresa.setNomeDaEmpresa(nomeDaEmpresa);
			empresa.setCnpj(cnpj);
			empresa.setNomeFantasia(nomeFantasia);
			empresa.setEndereco(endereco);
			empresa.setTelefone(telefone);
			empresa.setResponsavel(responsavel);
			empresa.setTelefoneResponsavel(telefoneResponsavel);
			empresa.setSetor(setor);
			empresa.setEmail(email);
		} catch (Exception e) {
			
			codigoRetorno =  e.getMessage();
			return codigoRetorno;
		}
		codigoRetorno = empresaRepositorio.save(empresa);
		return codigoRetorno;
		
	}
	public ArrayList<Empresa> consultaCNPJ(String cnpj){
		
		return empresaRepositorio.consulta(cnpj);
	}
	public int excluirEmpresa(String cnpj){
		logger.info(" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>obtem parametro do cnpj para exclusao ="+ cnpj );
		return empresaRepositorio.exclui(cnpj);
		
	}
	public List<Empresa> listaTodas(){
		return (List<Empresa>) empresaRepositorio.findAll();
	}
}