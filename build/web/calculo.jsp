<%@page import= 'Boletim.TabelaDeMedia'%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage ="TratarError.jsp"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
     <%
        try {
         String nome_txt,nota1sem_txt,nota2sem_txt;
         
         float  nota1sem, nota2sem;
         String nome;
         
         nota1sem = 0f;
         nota2sem = 0f;
         
         float CalculoMedia;
         
         //recebendo dados externos
         
         nome_txt = request.getParameter("nome");
         nota1sem_txt = request.getParameter("nota1sem");
         nota2sem_txt = request.getParameter("nota2sem");
         
         // Convertendo string para float//
        
         nota1sem = Float.parseFloat(nota1sem_txt);
         nota2sem = Float.parseFloat(nota2sem_txt);
         
         //calculo//
         float media = (nota1sem + nota2sem)/5;
         CalculoMedia = media;
         //saida//
         out.println("Media aluno = " + media+ "<br>");
         
        if (media <5)
	{
		out.println("Reprovado");
	}
	
	if (media >= 6 && media <5)
	{
		out.println("Em recuperação primaria ");
	}
		
	if (media  >= 7)
	{
		out.println("Aprovado ");
	}
		
	if (media >=8 && media <= 10)
	{
		out.println("Parabens!, aprovado com sucesso");
	}
        
        out.println(new TabelaDeMedia().CalculoMedia(nota1sem, nota2sem , media));
        
        //out.print(new.Paciente().setNome("Luiz"));
        }catch(Exception ex){
                out.print("erro=" +ex.getMessage());
                }
                
            %>
    </body>
</html>
