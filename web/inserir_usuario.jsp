<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="MODEL.Cliente" %>
<%@page import="DAO.DAOCliente" %>






<%

    Cliente usu = new Cliente();
    DAOCliente usd = new DAOCliente();

    try {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");

        usu.setNome(nome);
        usu.setEmail(email);
        usu.setTelefone(telefone);

        usd.InserirUsuario(usu);
        out.print("Usuario Inserido com sucesso");
        out.print("<meta http-equiv='refresh' content ='3, url=index.jsp'>");

    } catch (Exception erro) {
        throw new RuntimeException("Erro executar_inserir " + erro);
    }

%>