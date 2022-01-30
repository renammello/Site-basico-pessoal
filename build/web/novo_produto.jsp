<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Formulario Produto </h1>
        <form method="post" action="inserir_produto.jsp">
            <label for="nomePro">Nome do Produto</label><br>
            <input type="text" name="nomePro"/><br><br>

            <label for="qtd">Quantidade de Produtos</label><br>
            <input type="number" name ="qtd"/><br><br>
            
            <input type="submit" value="ENVIAR"/><br>

        </form><br>
        <a href="consultar_produto.jsp">Consultar Produto</a>
        
    </body>
</html>
