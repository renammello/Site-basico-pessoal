<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Produto</title>
    </head>
    <body>
        <h1>Consultar Produtos</h1>
        <form action="consultar_produto.jsp" method="post">
            <label>Pesquisar por Nome</label>

            <input type="text" name="nomePro" placeholder="Digite o nome do produto"/>
            <input type="submit" value="Pesquisar"/><br>
        </form>
        <%
            out.print("<table border ='1'>");

            out.print("<tr>");
            out.print("<th> ID </th>");
            out.print("<th> NOME</th>");
            out.print("<th> QUANTIDADE </th>");
            out.print("<th>EXCLUIR </th>");
            out.print("<th> EDITAR </th>");
            out.print("</tr>");
            DAOProduto pro = new DAOProduto();
            if (request.getParameter("nome_produto") == "" || request.getParameter("nome_produto") == null) {
                ArrayList<Produto> lista = pro.listarProduto();
                for (int i = 0; i < lista.size(); i++) {
                    out.print("</tr>");
                    out.print("<td>" + lista.get(i).getId() + "</td>");
                    out.print("<td>" + lista.get(i).getNome() + "</td>");
                    out.print("<td>" + lista.get(i).getQuantidade()+ "</td>");
                    
                   
                    out.print("<td><a href='frmExcluirProdutoVIEW.jsp?id="
                    + lista.get(i).getId() + "&nome="
                    + lista.get(i).getNome() +"'>Excluir</a></td>");
                    
                    out.print("<td><a href='frmUpdateProdutoVIEW.jsp?id="
                    + lista.get(i).getId() + "&nome="
                    + lista.get(i).getNome() +"'>Update</a></td>");
                    
                    out.print("</tr>");
                    out.print("</tr>");
                }
            } else {
                ArrayList<Produto> lista = pro.listarProdutoNome(request.getParameter("nome_produto"));
                for (int i = 0; i < lista.size(); i++) {
                    out.print("</tr>");
                    out.print("<td>" + lista.get(i).getId() + "</td>");
                    out.print("<td>" + lista.get(i).getNome() + "</td>");
                    out.print("<td>" + lista.get(i).getQuantidade()+ "</td>");
                    out.print("<td> CLIQUE </td>");
                    out.print("<td> CLIQUE </td>");
                    out.print("</tr>");
                }
            }
            out.print("</table>");
        %>
    </body>
</html>
