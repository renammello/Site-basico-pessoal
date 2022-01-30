package DAO;

import java.sql.DriverManager;
import java.sql.Connection;

public class Conexao {

    public Connection getConexao() {

        try {

            Class.forName("com.mysql.jdbc.Driver");

          return DriverManager.getConnection("jdbc:mysql://localhost/bdavaliacao?allowPublicKeyRetrieval=true&useSSL=false&useTimezone=true&serverTimezone=UTC", "root", "1q2w3e");
        } catch (Exception erro) {

            throw new RuntimeException("Erro classe conexão" + erro);
        }

    }
}
