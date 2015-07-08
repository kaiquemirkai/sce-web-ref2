package br.sceweb.dominio;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Aluno {

	@Id
	long codigo;
	String ra;
	String nome;
	String perfilAluno;
	
	public long getCodigo() {
		return codigo;
	}
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public String getRa() {
		return ra;
	}
	public void setRa(String ra) {
		this.ra = ra;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getPerfilAluno() {
		return perfilAluno;
	}
	public void setPerfilAluno(String perfilAluno) {
		this.perfilAluno = perfilAluno;
	}
}
