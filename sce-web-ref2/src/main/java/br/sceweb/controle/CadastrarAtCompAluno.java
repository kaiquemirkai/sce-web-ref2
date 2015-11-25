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
		
		
		
		AtcompRepositorio atcompRepositorio = new AtcompRepositorio(2);
		
		double horastotais = atcompRepositorio.QuantidadeTotaldeHorasPorCodigoDeAtividade(atcomp.getCodigoAtividade());
		RegraAtcompRepositorio regraAtcompRepositorio = new RegraAtcompRepositorio(2);
		RegraAtcomp regraAtcomp = new RegraAtcomp();
		regraAtcomp.setCodigoAtividade(atcomp.getCodigoAtividade());
		
		regraAtcomp = regraAtcompRepositorio.ConsultarPorCodigoAtividade(regraAtcomp);
		
		
		
		String listaErros = "";
		
		boolean aprovadoCarga = false;
		double horaslancadas = Double.valueOf(atcomp.getHorasLancadas());
		
		
		if(horaslancadas <= Double.valueOf(regraAtcomp.getCargaHoraria()))
		{
			aprovadoCarga = true;
		}
		else
		{
			listaErros += "Carga Horaria Superior a Permitida! A carga horária máxima é de: " +regraAtcomp.getCargaHoraria() + " horas.";
		}
		boolean aprovadoTotal = false;
		System.out. println(horastotais + Double.valueOf(atcomp.getHorasLancadas()) + " xxx" + Double.valueOf(regraAtcomp.getQuantidadeDeAtividadePermitida()));
		if(horastotais + Double.valueOf(atcomp.getHorasLancadas()) <= Double.valueOf(regraAtcomp.getQuantidadeDeAtividadePermitida()))
		{
			aprovadoTotal = true;
			
		}
		else
		{
			double cargaMaxima = Double.valueOf(regraAtcomp.getQuantidadeDeAtividadePermitida() - horastotais);
			if(cargaMaxima < 0 )
			{
				cargaMaxima  = 0 ;
			}
			listaErros += "Carga horaria dessa Atividade já foi alcançada! Voce possui: " +horastotais +
						" horas cadastradas. O limite dessa atividade é de: "+ 
						regraAtcomp.getQuantidadeDeAtividadePermitida()+
						" horas. Por favor cadastre no máximo mais  "+ cargaMaxima+" horas ";
		}
		boolean aprovadoExtensao = false;
		
		if(extensao.equals("pdf"))
		{
		  aprovadoExtensao = true;	
		}
		else
		{
			listaErros += "Favor selecione apenas arquivos no formato PDF!";
		}
		
		
		url = "/visao/TelasTCCv4/TelaListarAtcompAluno.jsp";	
		
		System.out.println("Chegou aqui");
		if(aprovadoCarga && aprovadoTotal && aprovadoTotal)
		{
			if (fachadaAtcomp.Cadastrar(atcomp) )
			{
				url = "/visao/TelasTCCv4/TelaListarAtcompAluno.jsp";			
				request.setAttribute("erro", "");
			} 
			else 
			{
				url = "/visao/TelasTCCv4/TelaCadastrarAtcompAluno.jsp";	
				request.setAttribute("erro", "Erro: Dados inválidos!");
			}
		}
		else
		{
			request.setAttribute("erro", "A atividade complementar não pode ser cadastrada pelos seguintes erros : " + listaErros);
		}
		
		System.out.println("ERROS : " + listaErros);
		

		return url;
	}
}