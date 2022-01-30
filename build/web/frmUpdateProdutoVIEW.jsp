<%-- 
    Document   : frmUpdateProdutoVIEW
    Created on : 26/01/2022, 12:09:14
    Author     : renam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form action="UpdateProduto.jsp" method="post">
            
            <label>id do cliente: </label> <br>
            <input type="text" name="id" 
                   value="<%=request.getParameter("id")%>"><!--  --><br>
            
             <label>Nome do cliente: </label> <br>
             <input type="text" name="nome" 
                    value="<%=request.getParameter("nome")%>"><!--  --><br>
             
            
             
            
            <button type="submit"> Alterar </button>
    </body>
</html>
