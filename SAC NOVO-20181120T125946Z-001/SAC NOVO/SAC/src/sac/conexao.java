package sac;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author 20161134010010
 */
public class conexao {
    String driver = "com.mysql.jdbc.Driver";
    String banco = "SistemaAlarme";
    String host = "localhost";
    String str_con = "jdbc:mysql://"+host+":3306/"+banco;
    String usuario = "root";
    String senha = "12345";
    
    Connection conexao;
    Statement estado;
 
    public void conectar(){
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(str_con, usuario, senha);
            estado = conexao.createStatement();
        } catch (ClassNotFoundException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao carregar o drivrer");
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao conectar");        }
        
    }
    public void fecharConexao(){
        try {
            estado.close();
            conexao.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao fechar a conexão");
        }
    }
}
