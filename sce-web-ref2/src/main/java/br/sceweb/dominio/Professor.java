package br.sceweb.dominio;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Professor {

	@Id
	long codigo;
	String nome;
	String registroProfessor;
	String area;
	String perfil;
	long codigoLogin;
	
	public long getCodigo() {
		return codigo;
	}
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getRegistroProfessor() {
		return registroProfessor;
	}
	public void setRegistroProfessor(String registroProfessor) {
		this.registroProfessor = registroProfessor;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}
	
	public long getCodigoLogin() {
		return codigoLogin;
	}
	public void setCodigoLogin(long codigoLogin) {
		this.codigoLogin = codigoLogin;
	}
}
