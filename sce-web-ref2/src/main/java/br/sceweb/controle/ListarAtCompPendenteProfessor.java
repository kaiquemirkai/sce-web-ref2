package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AlunoRepositorio;
import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;

public class ListarAtCompPendenteProfessor implements IComando {
	AtcompRepositorio atcompRepositorio;
/**
 * O comando mostratodasempresas seleciona o sgbd desejado
 * HIBERNATE = 1
 * MYSQL=2
 */
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		atcompRepositorio = new AtcompRepositorio(1);
		AlunoRepositorio alunoRepositorio = new AlunoRepositorio(2);
		List<Atcomp> atcomps = atcompRepositorio.ListarPendenteProfessor();
		List<Aluno> alunos = alunoRepositorio.ListarPendenteProfessor();
		
		
			
		request.setAttribute("atcomps", atcomps);
		request.setAttribute("alunos", alunos);
		return "/visao/TelasTCCv4/TelaListarAtcompPendenteProfessor.jsp";
	}

}



