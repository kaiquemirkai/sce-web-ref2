package br.sceweb.dominio;

public class HorasPorAreaTO {

	String horasTotais;
	String codigoAtividade;
	String cargaMaxima;
	String QuantidadeFaltante;
	
	public String getHorasTotais() {
		return horasTotais;
	}
	public void setHorasTotais(String horasTotais) {
		this.horasTotais = horasTotais;
	}
	public String getCodigoAtividade() {
		return codigoAtividade;
	}
	public void setCodigoAtividade(String codigoAtividade) {
		this.codigoAtividade = codigoAtividade;
	}
	public String getCargaMaxima() {
		return cargaMaxima;
	}
	public void setCargaMaxima(String cargaMaxima) {
		this.cargaMaxima = cargaMaxima;
	}
	public String getQuantidadeFaltante() {
		return QuantidadeFaltante;
	}
	public void setQuantidadeFaltante(String quantidadeFaltante) {
		QuantidadeFaltante = quantidadeFaltante;
	}
}
