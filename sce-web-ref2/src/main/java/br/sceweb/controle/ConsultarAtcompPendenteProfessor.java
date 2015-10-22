package br.sceweb.controle;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AlunoRepositorio;
import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;

public class ConsultarAtcompPendenteProfessor implements IComando {
	AtcompRepositorio atcompRepositorio;
	
	
/**
 * O comando mostratodasempresas seleciona o sgbd desejado
 * HIBERNATE = 1
 * MYSQL=2
 */
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		atcompRepositorio = new AtcompRepositorio(1);
		Atcomp a = new Atcomp();
		a.setCodigo(Integer.parseInt(request.getParameter("codigoRadio")));
		Atcomp atcomp = atcompRepositorio.Consultar(a);	
		AlunoRepositorio alunoRepositorio = new AlunoRepositorio(1);
		Aluno aluno = new Aluno();
		aluno.setCodigo(atcomp.getCodigoAluno());
		aluno = alunoRepositorio.Consultar(aluno);
		
		
		request.setAttribute("aluno", aluno);	
		request.setAttribute("atcomp", atcomp);	
		return "/visao/TelasTCCv4/TelaAvaliarAtcompPendenteProfessor.jsp";
	}
	
	
}