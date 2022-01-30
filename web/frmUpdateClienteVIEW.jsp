<%-- 
    Document   : frmUpdateClienteVIEW
    Created on : 26/01/2022, 10:39:34
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
        <form action="UpdateCliente.jsp" method="post">
            
            <label>id do cliente: </label> <br>
            <input type="text" name="id" 
                   value="<%=request.getParameter("id")%>"><!--  --><br>
            
             <label>Nome do cliente: </label> <br>
             <input type="text" name="nome" 
                    value="<%=request.getParameter("nome")%>"><!--  --><br>
             
             <label>Email: </label> <br>
             <input type="email" name="email" 
                    value="<%=request.getParameter("email")%>"><!--  --><br>
             
             <label>Telefone </label> <br>
             <input type="number" name="telefone" 
                    value="<%=request.getParameter("telefone")%>"><!--  --><br>
            
             
            
            <button type="submit"> Alterar </button>
    </body>
</html>
