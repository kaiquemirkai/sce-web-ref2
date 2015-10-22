package br.sceweb.dominio;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class PerfilProfessor {

	@Id
	long codigo;
	long codigoProfessor;
	String area;
	String curso;
	String turma;
	public long getCodigo() {
		return codigo;
	}
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public long getCodigoProfessor() {
		return codigoProfessor;
	}
	public void setCodigoProfessor(long codigoProfessor) {
		this.codigoProfessor = codigoProfessor;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	public String getTurma() {
		return turma;
	}
	public void setTurma(String turma) {
		this.turma = turma;
	}
	
	
}
