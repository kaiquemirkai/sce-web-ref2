package br.sceweb.controle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sceweb.dominio.Aluno;
import br.sceweb.dominio.AlunoRepositorio;
import br.sceweb.dominio.Atcomp;
import br.sceweb.dominio.AtcompRepositorio;
import br.sceweb.dominio.HorasPorAnoTO;
import br.sceweb.dominio.Login;
import br.sceweb.dominio.LoginRepositorio;

public class Prospeccao implements IComando {
	
	
	
/**
 * O comando mostratodasempresas seleciona o sgbd desejado
 * HIBERNATE = 1
 * MYSQL=2
 */
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse res) 	throws Exception {
		
		Login login = LoginRepositorio.RetornaUsuarioLogado();
		AlunoRepositorio alunoRepositorio = new AlunoRepositorio(1);
		Aluno aluno = new Aluno();
		aluno.setCodigo(login.getCodigo());
		aluno = alunoRepositorio.Consultar(aluno);
		AtcompRepositorio atcompRepositorio = new AtcompRepositorio(2);
		int anoInicio = 0;
		int anoFim = 0;
		
		anoInicio = Integer.parseInt(aluno.getAnoInicio());
		anoFim = Integer.parseInt(aluno.getAnoFim());
		
		String grafico = "";
		grafico = "[['Ano', 'Tecnologica', 'Social', 'Cidada' ],";
		System.out.println(grafico);
		System.out.println("Gechou nas dorgas");
		for(int i=anoInicio; i <=anoFim; i++)
		{
			List<HorasPorAnoTO> lista = atcompRepositorio.ListarHorasPorAreaAno( i+"");
			
			if(i == anoFim)
			{
				grafico += " ['"+i+"', "+lista.get(0).getHorasTotais() +" , " + lista.get(1).getHorasTotais() + " , " +
						"" + lista.get(2).getHorasTotais()+ " ]";
			}
			else
			{
				grafico += " ['"+i+"', "+lista.get(0).getHorasTotais() +" , " + lista.get(1).getHorasTotais() + " , " +
						"" + lista.get(2).getHorasTotais()+ " ],";
			}
			System.out.println(i + " SELIGA");
		}
		
		grafico += " ]";
		
		System.out.println(grafico);
		request.setAttribute("grafico", grafico);
		return "/visao/TelasTCCv4/TelaProspeccaoAluno.jsp";
	}
	
	
}