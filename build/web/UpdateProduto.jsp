<%-- 
    Document   : UpdateProduto
    Created on : 26/01/2022, 12:10:31
    Author     : renam
--%>

<%@page import="DAO.DAOProduto"%>
<%@page import="MODEL.Produto"%>
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
        Produto pro = new Produto();
        DAOProduto pro1 = new DAOProduto();
        
         pro.setId(Integer.parseInt(request.getParameter("id")));
         pro.setNome(request.getParameter("nome"));
         

        

        pro1.UpdateProduto(pro);
        out.print("produto alterado com sucesso");
        out.print("<meta http-equiv='refresh' content ='3, url=index.jsp'>");

    } catch (Exception erro) {
        throw new RuntimeException("Erro executar_inserir " + erro);
    }

%>
    </body>
</html>
