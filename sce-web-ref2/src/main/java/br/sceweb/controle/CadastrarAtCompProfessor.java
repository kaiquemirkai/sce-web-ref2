package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;//classe Part

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.commons.io.*;//Transportar o arquivo

import br.sceweb.dominio.*;

public class CadastrarAtCompProfessor implements IComando{
	AtcompFachada fachadaAtcomp;
	Atcomp atcomp;
	


	public CadastrarAtCompProfessor(){
		fachadaAtcomp = new AtcompFachada();
		atcomp = new Atcomp();
	}

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		Login login = new Login();
		System.out.println(request.getParameter("sltCategoriaAtividade"));
		login = LoginRepositorio.RetornaUsuarioLogado();		
		atcomp.setCodigoAtividade(request.getParameter("CategoriaAtividade"));
		atcomp.setAreaAtividade(request.getParameter("sltAreaAtividade"));
		atcomp.setDataInicio(request.getParameter("txtDataInicioAtividade"));
		atcomp.setHoraInicio(request.getParameter("txtHoraInicioAtividade"));
		atcomp.setDataFim(request.getParameter("txtDataTerminoAtividade"));
		atcomp.setHoraFim(request.getParameter("txtHoraTerminoAtividade"));
		atcomp.setDescricao(request.getParameter("txtDescricaoAtividade"));
		atcomp.setStatus("Pendente");
		atcomp.setCodigo(0);	
		atcomp.setCodigoAluno(login.getCodigo());
	
		Part filePart = request.getPart("inputFile");
        InputStream fileContent = filePart.getInputStream();   
        
        byte[] pdf = IOUtils.toByteArray(fileContent);
		
        atcomp.setAnexo(pdf);
    
        
        
        

		if (fachadaAtcomp.Cadastrar(atcomp) ){
			url = "/visao/TelasTCCv4/TelaListarAtcompProfessor.jsp";			
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv4/TelaCadastrarAtcompProfessor.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}

		return url;
	}
}