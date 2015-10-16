package br.sceweb.dominio;



import java.util.ArrayList;
//import java.util.List; não está sendo usado

import org.apache.log4j.Logger;


public class SugestaoAtividadeFachada {



	SugestaoAtividadeRepositorio sugestaoAtividadeRepositorio;// será usado para acessar a classe SugestaoAtividade
	Logger logger = Logger.getLogger(SugestaoAtividadeFachada.class);
	/**
	 * O metodo construtor instancia o repositorio de acordo com sgbd desejado
	 * HIBERNATE = 1
	 * MYSQL=2
	 */

	public SugestaoAtividadeFachada(){
		sugestaoAtividadeRepositorio = new SugestaoAtividadeRepositorio(1);

	}
 
	
	//CADASTRAR
	public boolean Cadastrar(SugestaoAtividade sa) {

		boolean retorno;
		try {
			sugestaoAtividadeRepositorio.Cadastrar(sa);
		} catch (Exception e) {

			retorno =  false;
			return retorno;
		}
		retorno = true;
		return retorno;
	}
	
	//Por causa do JUNIT ----  CONSULTA POR CÓDIGO
    public ArrayList<SugestaoAtividade> consultaCodigo(String codigo){
    	
		return sugestaoAtividadeRepositorio.consultaCodigo(codigo);
	}
    
    //ALTERAR
   	public boolean alterarSugestaoAtividade(SugestaoAtividade sa){
 		
   		return sugestaoAtividadeRepositorio.alterar(sa);
   	}
   	
    
    //EXCLUIR
	public int excluirSugestaoAtividade(SugestaoAtividade sa){
		
		logger.info(" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>obtem parametro do codigo para exclusao ="+ sa.getCodigo() );
		return sugestaoAtividadeRepositorio.excluir(sa);
	}
	
	
	/*
	public List<Empresa> listaTodas(){
		return (List<Empresa>) empresaRepositorio.findAll();
	} */
	

}
