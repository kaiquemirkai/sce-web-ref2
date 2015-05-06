package br.sceweb.dominio;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Login {
	@Id
	long codigo;
	String usuario;
	String senha;
	String perfil;

}
