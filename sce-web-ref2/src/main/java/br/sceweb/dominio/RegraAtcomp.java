package br.sceweb.dominio;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RegraAtcomp {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	long codigo;
	String area;
	String codigoAtividade;
	int quantidadeDeAtividadePermitida;
	int cargaHoraria;
	String dataInicioAtividade;
	String dataTerminoAtividade;
	String descricaoRegra;
	public long getCodigo() {
		return codigo;
	}
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCodigoAtividade() {
		return codigoAtividade;
	}
	public void setCodigoAtividade(String codigoAtividade) {
		this.codigoAtividade = codigoAtividade;
	}
	public int getQuantidadeDeAtividadePermitida() {
		return quantidadeDeAtividadePermitida;
	}
	public void setQuantidadeDeAtividadePermitida(int quantidadeDeAtividadePermitida) {
		this.quantidadeDeAtividadePermitida = quantidadeDeAtividadePermitida;
	}
	public int getCargaHoraria() {
		return cargaHoraria;
	}
	public void setCargaHoraria(int cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}
	public String getDataInicioAtividade() {
		return dataInicioAtividade;
	}
	public void setDataInicioAtividade(String dataInicioAtividade) {
		this.dataInicioAtividade = dataInicioAtividade;
	}
	public String getDataTerminoAtividade() {
		return dataTerminoAtividade;
	}
	public void setDataTerminoAtividade(String dataTerminoAtividade) {
		this.dataTerminoAtividade = dataTerminoAtividade;
	}
	public String getDescricaoRegra() {
		return descricaoRegra;
	}
	public void setDescricaoRegra(String descricaoRegra) {
		this.descricaoRegra = descricaoRegra;
	}
	
	

}
