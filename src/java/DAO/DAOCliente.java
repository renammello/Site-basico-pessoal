package DAO;

import MODEL.Cliente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class DAOCliente {
 private Connection cn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> lista = new ArrayList<>();

    public DAOCliente() {
        cn = new Conexao().getConexao();
    }

    public void InserirUsuario(Cliente cliente) {

        String sql = "INSERT INTO tb_cliente(nome_cliente, email_cliente, telefone_cliente) VALUES(?,?,?)";

        try {
            stmt = cn.prepareStatement(sql);

            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getTelefone());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro Inserir Usuario" + erro);
        }
    }

    public ArrayList<Cliente> listarUsuarios() {

        String sql = "SELECT * FROM tb_cliente";
        try {
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome_cliente"));
                cliente.setEmail(rs.getString("email_cliente"));
                cliente.setTelefone(rs.getString("telefone_cliente"));
                lista.add(cliente);
            }

        } catch (Exception erro) {
            throw new RuntimeException("Erro listar todos os usuarios" + erro);

        }
        return lista;
    }

    public ArrayList<Cliente> listarUsuarioNome(String valor) {
        String sql = "SELECT * FROM tb_cliente WHERE nome_cliente LIKE '%"+valor+"%'";

        try {
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome_cliente"));
                cliente.setEmail(rs.getString("email_cliente"));
                cliente.setTelefone(rs.getString("telefone_cliente"));
                lista.add(cliente);
            }

        } catch (Exception erro) {
            throw new RuntimeException("Erro listar nomes dos usuarios" + erro);

        }
        return lista;
    }

     public void ExcluirCliente(Cliente cliente) {

        String sql = "delete from tb_cliente where id_cliente = ?";
        try {
            stmt = cn.prepareStatement(sql);

            stmt.setInt(1, cliente.getId());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro Inserir Usuario" + erro);
        }
    }

     public void AlterarCliente(Cliente cliente) {

        String sql = "update tb_cliente set nome_cliente, email_cliente, telefone_cliente = ? where id_cliente = ?";
        
        try {
            stmt = cn.prepareStatement(sql);

            stmt.setString(1, cliente.getNome());
            stmt.setInt(2, cliente.getId());
            stmt.setString(3, cliente.getEmail());
            stmt.setString(4, cliente.getTelefone());

              

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro Inserir Usuario" + erro);
        }
    }
}