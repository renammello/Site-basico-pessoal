<%-- 
    Document   : excluirCliente
    Created on : 25/01/2022, 13:35:56
    Author     : renam
--%>

<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%

    

    try {
        Cliente usu = new Cliente();
        DAOCliente usd = new DAOCliente();
        
         usu.setId(Integer.parseInt(request.getParameter("id")));

        

        usd.ExcluirCliente(usu);
        out.print("Usuario deletado com sucesso");
        out.print("<meta http-equiv='refresh' content ='3, url=index.jsp'>");

    } catch (Exception erro) {
        throw new RuntimeException("Erro executar_inserir " + erro);
    }

%>
    </body>
</html>
