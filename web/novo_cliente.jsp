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
        <h1>Formulario Usuario </h1>
        <form method="post" action="inserir_usuario.jsp">
            <label for="nome">Nome</label><br>
            <input type="text" name="nome"/><br><br>

            <label for="email">Email</label><br>
            <input type="email" name ="email"/><br><br>

            <label for="telefone">telefone</label><br>
            <input type="number" name ="telefone"/><br><br>

            <input type="submit" value="ENVIAR"/><br>

        </form><br>
        <a href="consultar_cliente.jsp">Consultar Cliente</a>
        
    </body>
</html>
