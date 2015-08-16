package br.sceweb.dominio;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Atcomp {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	long codigo;
	long codigoAluno;
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
	String status;
	
	byte anexo;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
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

	public void setCodigoAluno(long codigoAluno) {
		this.codigoAluno = codigoAluno;
	}
	public long getCodigo() {
		return codigo;
	}

	public long getCodigoAluno() {
		return codigoAluno;
	}

	public String getCodigoAtividade() {
		return codigoAtividade;
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
