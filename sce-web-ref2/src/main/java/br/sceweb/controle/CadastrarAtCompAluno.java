package br.sceweb.controle;

import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.mysql.jdbc.EscapeTokenizer;

import br.sceweb.dominio.*;

public class CadastrarAtCompAluno implements IComando{
	AtcompFachada fachadaAtcomp;
	Atcomp atcomp;
	


	public CadastrarAtCompAluno(){
		fachadaAtcomp = new AtcompFachada();
		atcomp = new Atcomp();
	}

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		Login login = new Login();
		login = LoginRepositorio.RetornaUsuarioLogado();		
		atcomp.setCodigoAtividade(request.getParameter("CategoriaAtividade"));
		atcomp.setAreaAtividade(request.getParameter("sltAreaAtividade"));
		atcomp.setDataInicio(request.getParameter("txtDataInicioAtividade"));
		atcomp.setHoraInicio(request.getParameter("txtHoraInicioAtividade"));
		atcomp.setDataFim(request.getParameter("txtDataTerminoAtividade"));
		atcomp.setHoraFim(request.getParameter("txtHoraTerminoAtividade"));
		atcomp.setDescricao(request.getParameter("txtDescricaoAtividade"));
		atcomp.setHorasLancadas(request.getParameter("txtHoraLancadas"));
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String data = sdf.format(new Date());
		atcomp.setDataEntrega(data);
		
		atcomp.setStatus("Pendente");
		atcomp.setCodigo(0);	
		atcomp.setCodigoAluno(login.getCodigo());
		
		AlunoRepositorio alunoRepositorio = new AlunoRepositorio(1);
		Aluno aluno = new Aluno();
		aluno.setCodigo(login.getCodigo());
		aluno = alunoRepositorio.Consultar(aluno);
		atcomp.setQuemCadastrou(aluno.getNome());
	
		Part filePart = request.getPart("inputFile");
		
		
        InputStream fileContent = filePart.getInputStream();   
        
        byte[] pdf = IOUtils.toByteArray(fileContent);
		
        atcomp.setAnexo(pdf);
    
        String caminho =  request.getParameter("Caminho");
		System.out.println(caminho);
             
		int tamanho = caminho.length();
		int inicio = tamanho - 3;
		String extensao = caminho.substring(inicio,tamanho);
		if(extensao.equals("pdf"))
		{
			if (fachadaAtcomp.Cadastrar(atcomp) ){
				url = "/visao/TelasTCCv4/TelaListarAtcompAluno.jsp";			
				request.setAttribute("erro", null);
			} else {
				url = "/visao/TelasTCCv4/TelaCadastrarAtcompAluno.jsp";	
				request.setAttribute("erro", "Erro: Dados inválidos!");
			}
		}
		else
		{
			// implementar caso erro
			
		}
		
        
        

		

		return url;
	}
}