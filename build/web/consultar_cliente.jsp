<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Cliente</title>
    </head>
    <body>
        <h1>Consultar Usuarios</h1>
        <form action="consultar_cliente.jsp" method="post">
            <label>Pesquisar por Nome</label>

            <input type="text" name="nome" placeholder="Digite o nome"/>
            <input type="submit" value="Pesquisar"/><br>
        </form>
        <%
            out.print("<table border ='1'>");

            out.print("<tr>");
            out.print("<th> ID </th>");
            out.print("<th> NOME</th>");
            out.print("<th> EMAIL </th>");
            out.print("<th> TELEFONE </th>");
            out.print("<th> EXCLUIR</th>");
            out.print("<th> UPDATE </th>");
            out.print("</tr>");
            DAOCliente usu = new DAOCliente();
            if (request.getParameter("nome_cliente") == "" || request.getParameter("nome_cliente") == null) {
                ArrayList<Cliente> lista = usu.listarUsuarios();
                for (int i = 0; i < lista.size(); i++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(i).getId() + "</td>");
                    out.print("<td>" + lista.get(i).getNome() + "</td>");
                    out.print("<td>" + lista.get(i).getEmail() + "</td>");
                    out.print("<td>" + lista.get(i).getTelefone() + "</td>");
                    
                    out.print("<td><a href='frmExcluirClienteVIEW.jsp?id="
                    + lista.get(i).getId() + "&nome="
                    + lista.get(i).getNome() +"'>Excluir</a></td>");
                    
                    out.print("<td><a href='frmUpdateClienteVIEW.jsp?id="
                    + lista.get(i).getId() + "&nome="
                    + lista.get(i).getNome() +"'>Update</a></td>");
                    out.print("</tr>");
                      %> <p>  <%  

                }
            } else {
                ArrayList<Cliente> lista = usu.listarUsuarioNome(request.getParameter("nome_cliente"));
                for (int i = 0; i < lista.size(); i++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(i).getId() + "</td>");
                    out.print("<td>" + lista.get(i).getNome() + "</td>");
                    out.print("<td>" + lista.get(i).getEmail() + "</td>");
                    out.print("<td>" + lista.get(i).getTelefone() + "</td>");
                    out.print("<td> CLIQUE </td>");
                    out.print("<td> CLIQUE </td>");
                    out.print("</tr>");
                      %> <p><p>  <%               
                    }
                    
            }
            out.print("</table>");
        %>
    </body>
</html>
