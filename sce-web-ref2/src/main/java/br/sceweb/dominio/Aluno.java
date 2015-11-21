package br.sceweb.dominio;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Aluno {

	@Id
	long codigo;
	String ra;
	String nome;
	String curso;
	String area;
	String turma;
	String AnoInicio;
	String AnoFim;
	
	
	public String getAnoInicio() {
		return AnoInicio;
	}
	public void setAnoInicio(String anoInicio) {
		AnoInicio = anoInicio;
	}
	public String getAnoFim() {
		return AnoFim;
	}
	public void setAnoFim(String anoFim) {
		AnoFim = anoFim;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getTurma() {
		return turma;
	}
	public void setTurma(String turma) {
		this.turma = turma;
	}
	
	
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
	
}
