package br.sceweb.dominio;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public  class Login {
	@Id
	 long codigo;
	 String usuario;
	 String senha;
	 String perfil;
	public long getCodigo() {
		return codigo;
	}
	public  void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public  String getUsuario() {
		return usuario;
	}
	public  void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public  String getSenha() {
		return senha;
	}
	public  void setSenha(String senha) {
		this.senha = senha;
	}
	public  String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}
	


}
