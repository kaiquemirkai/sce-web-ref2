package br.sceweb.dominio;


import javax.persistence.Entity;

import javax.persistence.GeneratedValue; //
import javax.persistence.GenerationType;
import javax.persistence.Id; //import do hibernate ? VER

@Entity  //hibernate
public class SugestaoAtividade {

	//@id pega o primeiro atributo e define como primary key no banco
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)// @GeneratedValue ?VER Incremento
	long codigo;
	String nomeSugestaoAtividade; // não tem no DC
	String quemCadastrou;
	String dataCadastro;
	String area;
	String categoria;
	String dataVigenciaInicio;//Não tem no DC
	String dataVigenciaFim;//Não tem no DC
	String descricao;//Não tem no DC
	long codigoCadastro;
	
	
	

	public long getCodigoCadastro() {
		return codigoCadastro;
	}
	public void setCodigoCadastro(long codigoCadastro) {
		this.codigoCadastro = codigoCadastro;
	}
	
	
	public long getCodigo() {
		return codigo;
	}
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public String getNomeSugestaoAtividade() {
		return nomeSugestaoAtividade;
	}
	public void setNomeSugestaoAtividade(String nomeSugestaoAtividade) {
		this.nomeSugestaoAtividade = nomeSugestaoAtividade;
	}
	public String getQuemCadastrou() {
		return quemCadastrou;
	}
	public void setQuemCadastrou(String quemCadastrou) {
		this.quemCadastrou = quemCadastrou;
	}
	public String getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(String dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	public String getArea() {
		return area;
	}
		public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getDataVigenciaInicio() {
		return dataVigenciaInicio;
	}
	public void setDataVigenciaInicio(String dataVigenciaInicio) {
		this.dataVigenciaInicio = dataVigenciaInicio;
	}
	public String getDataVigenciaFim() {
		return dataVigenciaFim;
	}
	public void setDataVigenciaFim(String dataVigenciaFim) {
		this.dataVigenciaFim = dataVigenciaFim;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
}