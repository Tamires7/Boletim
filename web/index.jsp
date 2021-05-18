<%@page import="Boletim.Aluno"%>
<%@page import="Boletim.TabelaDeMedia"%>

    <head>
        <title>Trabalho terça</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
        <h2>Boletim do aluno </h2>
        <div id="div_imc">
            <p> Informações do aluno</p>
            <form action="calculo.jsp" method="get" target="result" >
                nome: <input type="text" name="nome"><br>
                nota1sem: <input type="text" name="nota1sem"><br>
                nota2sem: <input type="text" name="nota2sem"><br>

                <input type="submit" name="enviar" value="calcular">
            </form>

        </div>
        <br><br>
          
         <div id="div_resultado"></div>
        <iframe name="result" width="300" height="200"></iframe>
    </div>
    <p>Tabela aluno</p>
    <div align="left">
        <table border="1" cellpadding="10" width="300" cellspacing="1">
            <tr><td><b>Resolução em nomes</b></td>      <td><b>Nota do aluno</b></td></tr>
            <tr><td>Reprovado</td>   <td>abaixo de 5</td></tr>
            <tr><td>Em recuperação primaria</td>              <td>entre 5 e 6</td></tr>
            <tr><td>Aprovado</td>     <td>nota 7</td></tr>
            <tr><td>Parabens!, aprovado com sucesso</td>        <td>entre 8 e 10</td></tr>
        </table>
    </div>
    <br>

    <br>
    </div>

