package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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


import br.sceweb.dominio.*;

public class CadastrarAtCompAluno implements IComando{
	AtcompFachada fachadaAtcomp;
	Atcomp atcomp;
	


	public CadastrarAtCompAluno(){
		fachadaAtcomp = new AtcompFachada();
		atcomp = new Atcomp();
	}
/*	
	public long Blob(){
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/BDBlob", "root", "tfz64x");
        String INSERT_PICTURE = "insert into MyPictures(id, name, filePDF) values (?, ?, ?)";

        FileInputStream fis = null;
        PreparedStatement ps = null;
        try {
          conn.setAutoCommit(false);
          File file = new File("tbf.pdf");
          fis = new FileInputStream(file);
          byte[] pdfData = new byte[(int) file.length()];
          DataInputStream dis = new DataInputStream(fis);
          dis.readFully(pdfData);  // read from file into byte[] array
          dis.close();
          
          ps = conn.prepareStatement(INSERT_PICTURE);
          ps.setString(1, "1");
          ps.setString(2, "name");
          ps.setBytes(3, pdfData);
          //ps.setBinaryStream(3, fis, (int) file.length());
          ps.executeUpdate();
          conn.commit();
        } finally {
          ps.close();
          fis.close();
        }
        
        
        Class.forName("com.mysql.jdbc.Driver");
      //  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sceweb", "root", "root");

        String sql = "SELECT filePDF FROM MyPictures ";
        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet resultSet = stmt.executeQuery();
        while (resultSet.next()) {
          File filePDF = new File("result.pdf");
          FileOutputStream fos = new FileOutputStream(filePDF);

          byte[] buffer = new byte[1];
          InputStream is = resultSet.getBinaryStream(1);
          while (is.read(buffer) > 0) {
            fos.write(buffer);
          }
          fos.close();
        }
        conn.close();
        }

	}
	*/
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String url = "";
		Login login = new Login();
		login = LoginRepositorio.RetornaUsuarioLogado();
		String a1=request.getParameter("sltCodigoAtividade");
		String a2=request.getParameter("sltCodigoAtividade2");
		String a3=request.getParameter("sltCodigoAtividade3");

		RegraAtcompRepositorio regraAtcompRepositorio;
		regraAtcompRepositorio = new RegraAtcompRepositorio(1);
		List<RegraAtcomp> regraAtcomps = regraAtcompRepositorio.Listar();
		request.setAttribute("regraAtcomps", regraAtcomps);


		if(a1 != "100" ){
			atcomp.setCodigoAtividade(request.getParameter("sltCodigoAtividade"));
		}

		if(a3 != "100" )
		{
			atcomp.setCodigoAtividade(request.getParameter("sltCodigoAtividade3"));
		}
		
		if(a2 != "100" ){
			atcomp.setCodigoAtividade(request.getParameter("sltCodigoAtividade2"));

		}
		
		atcomp.setDataInicio(request.getParameter("txtDataInicioAtividade"));
		atcomp.setHoraInicio(request.getParameter("txtHoraInicioAtividade"));
		atcomp.setDataFim(request.getParameter("txtDataTerminoAtividade"));
		atcomp.setHoraFim(request.getParameter("txtHoraTerminoAtividade"));
		atcomp.setDescricao(request.getParameter("txtDescricaoAtividade"));
		atcomp.setStatus("Pendente");
		atcomp.setCodigo(0);	
		atcomp.setCodigoAluno(login.getCodigo());

		// atcomp.setAnexo(request.getParameter("inputFile"));

		FileInputStream fis = null;
        PreparedStatement ps = null;
		
		File file = new File("C:\\LuizAugusto-Arquivo\\Oi.jpg");
        fis = new FileInputStream(file);
        byte[] pdfData = new byte[(int) file.length()];
        DataInputStream dis = new DataInputStream(fis);
        dis.readFully(pdfData);  // read from file into byte[] array
        dis.close();
        
        atcomp.setAnexo(pdfData);
        
        
       
        
        
        

		if (fachadaAtcomp.Cadastrar(atcomp) ){
			url = "/visao/TelasTCCv4/TelaListarAtcompAluno.jsp";			
			request.setAttribute("erro", null);
		} else {
			url = "/visao/TelasTCCv4/TelaCadastrarAtcompAluno.jsp";	
			request.setAttribute("erro", "Erro: Dados inválidos!");
		}

		return url;
	}
}