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
		
		//Bloco de preenchimento da atcomp
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
	
		//Bloco de preenchimento do arquivo PDF
		Part filePart = request.getPart("inputFile");		
        InputStream fileContent = filePart.getInputStream();        
        byte[] pdf = IOUtils.toByteArray(fileContent);	
       
        
    	String campoObrigatorioAnexo =""; 
    	String campoObrigatorioAreaAtividade="";
    	String campoObrigatorioCodigoAtividade="";
    	String campoObrigatorioHoraInicio="";
    	String campoObrigatorioHoraFim="";
    	String campoObrigatorioDataInicio="";
    	String campoObrigatorioDescricao="";
    	String campoObrigatorioDataFim="";
    	String campoObrigatorioCargaHoraria="";
    	String cargaHorariaPermitida="";
    	String cargaMaximaPermitida="";
    	String dataMaior="";
        
        if(pdf != null)
        {
        	atcomp.setAnexo(pdf);    
        }
        else
        {
        	campoObrigatorioAnexo =  "-Campo comprovante obrigat�rio!";
        }
        String caminho =  request.getParameter("Caminho");
		
        //valida��o para arquivos no formato PDF     
		int tamanho = caminho.length();
		int inicio = tamanho - 3;
		String extensao = caminho.substring(inicio,tamanho);
		
		
		//Bloco de Valida��o da atcomp com as regras
		AtcompRepositorio atcompRepositorio = new AtcompRepositorio(2);		
		double horastotais = atcompRepositorio.QuantidadeTotaldeHorasPorCodigoDeAtividade(atcomp.getCodigoAtividade());
		RegraAtcompRepositorio regraAtcompRepositorio = new RegraAtcompRepositorio(2);
		RegraAtcomp regraAtcomp = new RegraAtcomp();
		regraAtcomp.setCodigoAtividade(atcomp.getCodigoAtividade());		
		regraAtcomp = regraAtcompRepositorio.ConsultarPorCodigoAtividade(regraAtcomp);
		
		
		
		double horaslancadas = 0.0;
		double cargaMaxima = 0.0;
		boolean aprovadoCarga = false;
		if(!atcomp.getHorasLancadas().equals("'"))
		{
			horaslancadas = Double.valueOf(atcomp.getHorasLancadas());
			cargaMaxima = Double.valueOf(regraAtcomp.getQuantidadeDeAtividadePermitida() - horastotais);
		}
		boolean aprovadoTotal = false;
		
		boolean aprovadoExtensao = false;
		boolean horaAprovada = false;
		
		
		//valida��o para carga horaria permitida da atividade
		if(horaslancadas <= Double.valueOf(regraAtcomp.getCargaHoraria()))
		{
			aprovadoCarga = true;
		}
		else
		{
			cargaHorariaPermitida = "-Carga hor�ria superior a Permitida! A carga hor�ria m�xima � de: " +regraAtcomp.getCargaHoraria() + " horas!";
		}
		
		
		//valida��o para limite de horas de uma determinada categoria
		if(!atcomp.getHorasLancadas().equals(""))
		{
			if(horastotais + Double.valueOf(atcomp.getHorasLancadas()) <= Double.valueOf(regraAtcomp.getQuantidadeDeAtividadePermitida()))
			{
				aprovadoTotal = true;
			
			}
			else
			{
			
				if(cargaMaxima < 0 )
				{
				cargaMaxima  = 0 ;
				}
			cargaMaximaPermitida = "-Carga horaria dessa Atividade j� foi alcan�ada! Voce possui: " +horastotais +
						" horas cadastradas! O limite dessa atividade � de: "+ 
						regraAtcomp.getQuantidadeDeAtividadePermitida()+
						" horas! Por favor cadastre no m�ximo mais  "+ cargaMaxima+" horas!";
			}
		
		}
		//valida��o para formato PDF
		if(!caminho.equals(""))
		{
			if(extensao.equals("pdf"))
			{
				aprovadoExtensao = true;	
			}
			else
			{
				campoObrigatorioAnexo= "-Favor selecione apenas arquivos no formato PDF!";
			}
		}
		
		//valida��o da data inicio e data fim 
		if(!atcomp.getDataInicio().equals("") && !atcomp.getDataFim().equals("")
				&& !atcomp.getHoraInicio().equals("") && !atcomp.getHoraFim().equals(""))
		{
			SimpleDateFormat sbp = new SimpleDateFormat("dd/MM/yyyy hh:mm");
			Date dataInicio = sbp.parse(atcomp.getDataInicio() + " " + atcomp.getHoraInicio());
			Date dataFim= sbp.parse(atcomp.getDataFim() + " " + atcomp.getHoraFim());
			if(dataInicio.before(dataFim))
			{
				horaAprovada = true;
			}
			else
			{
				dataMaior = "-A data de inicio da Atividade deve ser anterior a data do fim!";
			}
		}
		
		
		boolean areaAtividadeTexto = true;
		boolean codigoAtividadeTexto = true;
		boolean dataFimTexto = true;
		boolean dataInicioTexto = true;
		boolean descricaoTexto = true;
		boolean horaInicioTexto = true;
		boolean horaFimTexto = true;
		boolean cargaHorariaTexto = true;
		
		//bloco de valida��o para campos vazios
		if(atcomp.getAreaAtividade().equals(""))
		{
			areaAtividadeTexto = false;
			campoObrigatorioAreaAtividade = "-Campo �rea atividade obrigat�rio!";
		}
		if(atcomp.getCodigoAtividade().equals(""))
		{
			codigoAtividadeTexto = false;
			campoObrigatorioCodigoAtividade = "-Campo c�digo atividade obrigat�rio!";
		}
		if(atcomp.getDataFim().equals(""))
		{
			dataFimTexto = false;
			campoObrigatorioDataFim = "-Campo data fim obrigat�rio!";
		}
		if(atcomp.getDataInicio().equals(""))
		{
			dataInicioTexto = false;
			campoObrigatorioDataInicio = "-Campo data in�cio obrigat�rio!";
		}
		if(atcomp.getDescricao().equals(""))
		{
			descricaoTexto = false;
			campoObrigatorioDescricao = "-Campo descri��o obrigat�rio!";
		}
		if(atcomp.getHoraFim().equals(""))
		{
			horaFimTexto = false;
			campoObrigatorioHoraFim = "-Campo hora fim obrigat�rio!";
		}
		if(atcomp.getHoraInicio().equals(""))
		{
			horaInicioTexto = false;
			campoObrigatorioHoraInicio = "-Campo c�digo hora in�cio obrigat�rio!";
		}
		if(atcomp.getHorasLancadas().equals(""))
		{
			cargaHorariaTexto = false;
			 campoObrigatorioCargaHoraria= "-Campo carga hor�ria obrigat�rio!";
		}
		
		
		
		
		
		
		
		
		
		url = "/visao/TelasTCCv4/TelaListarAtcompAluno.jsp";	
		
		
		if(aprovadoCarga && aprovadoTotal && aprovadoTotal && horaAprovada 
				&& areaAtividadeTexto && codigoAtividadeTexto && dataFimTexto && dataInicioTexto 
				&& descricaoTexto && horaInicioTexto && horaFimTexto && cargaHorariaTexto)
		{
			if (fachadaAtcomp.Cadastrar(atcomp) )
			{
				url = "/visao/TelasTCCv4/TelaListarAtcompAluno.jsp";			
				request.setAttribute("erro", "");
			} 
			else 
			{
				url = "/visao/TelasTCCv4/TelaCadastrarAtcompAluno.jsp";	
				request.setAttribute("erro", "Erro: Dados inv�lidos!");
			}
		}
		else
		{
			request.setAttribute("erro", "A atividade complementar n�o pode ser cadastrada pelos seguintes erros :");
			request.setAttribute("anexo", campoObrigatorioAnexo );
			request.setAttribute("areaAtividade", campoObrigatorioAreaAtividade );
			request.setAttribute("codigoAtivdade", campoObrigatorioCodigoAtividade );
			request.setAttribute("horaInicio", campoObrigatorioHoraInicio );
			request.setAttribute("horaFim", campoObrigatorioHoraFim );
			request.setAttribute("dataInicio", campoObrigatorioDataInicio );
			request.setAttribute("dataFim", campoObrigatorioDataFim );
			request.setAttribute("descricao", campoObrigatorioDescricao );
			request.setAttribute("cargaHorariaPermitida", cargaHorariaPermitida );
			request.setAttribute("cargaMaximaPermitida", cargaMaximaPermitida );
			request.setAttribute("dataMaior", dataMaior );
						
			
		}
		
		
		

		return url;
	}
}