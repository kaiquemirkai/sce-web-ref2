package br.sceweb.dominio;

public class AtcompPendenteAprovacaoTO {

Long codigoAtcomp;
String nomeAluno;
String ra;
String turma;
String curso;
String descricao;
String status;
String dataInicio;
String cargaHoraria;
public String getDataInicio() {
	return dataInicio;
}
public void setDataInicio(String dataInicio) {
	this.dataInicio = dataInicio;
}
public String getCargaHoraria() {
	return cargaHoraria;
}
public void setCargaHoraria(String cargaHoraria) {
	this.cargaHoraria = cargaHoraria;
}
public String getAreaAtividade() {
	return areaAtividade;
}
public void setAreaAtividade(String areaAtividade) {
	this.areaAtividade = areaAtividade;
}
String areaAtividade;

public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public Long getCodigoAtcomp() {
	return codigoAtcomp;
}
public void setCodigoAtcomp(Long codigoAtcomp) {
	this.codigoAtcomp = codigoAtcomp;
}
public String getNomeAluno() {
	return nomeAluno;
}
public void setNomeAluno(String nomeAluno) {
	this.nomeAluno = nomeAluno;
}
public String getRa() {
	return ra;
}
public void setRa(String ra) {
	this.ra = ra;
}
public String getTurma() {
	return turma;
}
public void setTurma(String turma) {
	this.turma = turma;
}
public String getCurso() {
	return curso;
}
public void setCurso(String curso) {
	this.curso = curso;
}
public String getDescricao() {
	return descricao;
}
public void setDescricao(String descricao) {
	this.descricao = descricao;
}


}
