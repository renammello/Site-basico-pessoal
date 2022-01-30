<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="MODEL.Produto" %>
<%@page import="DAO.DAOProduto" %>

<%

    Produto pro = new Produto();
    DAOProduto DAO = new DAOProduto();
    try {
        
        String nome = request.getParameter("nomePro");
        String quantidade  = request.getParameter("qtd");
        
        
        pro.setNome(nome);
        pro.setQuantidade(Integer. parseInt (quantidade));

        DAO.InserirProduto(pro);
        out.print("Produto Inserido com sucesso");
        out.print("<meta http-equiv='refresh' content ='3, url=index.jsp'>");

    } catch (Exception erro) {
        throw new RuntimeException("Erro executar_inserir " + erro);
    }

%>