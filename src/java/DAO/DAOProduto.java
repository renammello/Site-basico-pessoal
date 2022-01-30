package DAO;

import MODEL.Cliente;
import MODEL.Produto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class DAOProduto {
 private Connection cn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();

    public DAOProduto() {
        cn = new Conexao().getConexao();
    }

    public void InserirProduto(Produto produto) {

        String sql = "INSERT INTO tb_produto(nome_produto, qtd_produto) VALUES(?,?)";

        try {
            stmt = cn.prepareStatement(sql);

            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getQuantidade());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro Inserir Produto" + erro);
        }
    }

    public ArrayList<Produto> listarProduto() {

        String sql = "SELECT * FROM tb_produto";
        try {
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getInt("id_produto"));
                produto.setNome(rs.getString("nome_produto"));
                produto.setQuantidade(rs.getInt("qtd_produto"));
                
                lista.add(produto);
            }

        } catch (Exception erro) {
            throw new RuntimeException("Erro listar todos os produtos" + erro);

        }
        return lista;
    }

    public ArrayList<Produto> listarProdutoNome(String valor) {
        String sql = "SELECT * FROM tb_produto WHERE nome_produto LIKE '%"+valor+"%'";

         try {
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getInt("id_produto"));
                produto.setNome(rs.getString("nome_produto"));
                produto.setQuantidade(rs.getInt("qtd_produto"));
                
                lista.add(produto);
            }

        } catch (Exception erro) {
            throw new RuntimeException("Erro listar todos os produtos" + erro);

        }
        return lista;
    }


  public void ExcluirProduto(Produto produto) {

        String sql = "delete from tb_produto where id_produto = ?";
        try {
            stmt = cn.prepareStatement(sql);

            stmt.setInt(1, produto.getId());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro Inserir produto" + erro);
        }
    }

   public void UpdateProduto(Produto produto) {

        String sql = "update tb_produto set nome_produto = ? where id_produto = ?";
        try {
            stmt = cn.prepareStatement(sql);
            
            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getId());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro Inserir produto" + erro);
        }
    }
}