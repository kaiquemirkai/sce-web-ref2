package br.sceweb.dominio;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Atcomp {

	@Id
	long codigo;
	String aluno;
	String quemCadastrou;
	String dataFim;
	String dataInicio;
	String dataEntrega;
	String horaInicio;
	String horaFim;
	String horasLancadas;	
	String codigoAtividade;
	String areaAtividade;
	String descricao;
	byte anexo;
	
	public String getAreaAtividade() {
		return areaAtividade;
	}
	public void setAreaAtividade(String areaAtividade) {
		this.areaAtividade = areaAtividade;
	}
	public void setCodigoAtividade(String codigoAtividade) {
		this.codigoAtividade = codigoAtividade;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public void setAluno(String aluno) {
		this.aluno = aluno;
	}
	public long getCodigo() {
		return codigo;
	}

	public String getAluno() {
		return aluno;
	}

	public String getQuemCadastrou() {
		return quemCadastrou;
	}

	public void setQuemCadastrou(String quemCadastrou) {
		this.quemCadastrou = quemCadastrou;
	}

	public String getDataFim() {
		return dataFim;
	}

	public void setDataFim(String dataFim) {
		this.dataFim = dataFim;
	}

	public String getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(String dataInicio) {
		this.dataInicio = dataInicio;
	}

	public String getDataEntrega() {
		return dataEntrega;
	}

	public void setDataEntrega(String dataEntrega) {
		this.dataEntrega = dataEntrega;
	}

	public String getHoraInicio() {
		return horaInicio;
	}

	public void setHoraInicio(String horaInicio) {
		this.horaInicio = horaInicio;
	}

	public String getHoraFim() {
		return horaFim;
	}

	public void setHoraFim(String horaFim) {
		this.horaFim = horaFim;
	}

	public String getHorasLancadas() {
		return horasLancadas;
	}

	public void setHorasLancadas(String horasLancadas) {
		this.horasLancadas = horasLancadas;
	}

	public byte getAnexo() {
		return anexo;
	}

	public void setAnexo(byte anexo) {
		this.anexo = anexo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	
}
