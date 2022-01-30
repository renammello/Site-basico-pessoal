<%-- 
    Document   : updateCliente
    Created on : 26/01/2022, 10:42:34
    Author     : renam
--%>

<%@page import="DAO.DAOCliente"%>
<%@page import="MODEL.Cliente"%>
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
         usu.setNome(request.getParameter("nome"));
         usu.setEmail(request.getParameter("email"));
         usu.setTelefone((request.getParameter("telefone")));

        

        usd.AlterarCliente(usu);
        out.print("Usuario Alterado com sucesso");
        out.print("<meta http-equiv='refresh' content ='3, url=index.jsp'>");

    } catch (Exception erro) {
        throw new RuntimeException("Erro executar_inserir " + erro);
    }

%>
    </body>
</html>
