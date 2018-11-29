
package sac;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;


public class ConexaoEndereco extends conexao{
    public void Endereco(String cidade, int cep, String bairro, String rua, int Ncasa, String complemento){
        String sql = "insert into Endereco (cidade, cep, bairro, rua, Ncasa, complemento) values (?,?,?,?,?,?)";
        PreparedStatement estado1;
        conectar();
        try {
            estado1 = conexao.prepareStatement(sql);
            estado1.setString(1, cidade);
            estado1.setInt(2, cep);
            estado1.setString(3, bairro);
            estado1.setString(4, rua);
            estado1.setInt(5, Ncasa);
            estado1.setString(6, complemento);
            estado1.execute();
            JOptionPane.showMessageDialog(null, "Casa cadastrada com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar");
        }finally{
            fecharConexao();
        
    }
    
}
        public void cadastrarPessoa (String nome, String sobrenome, String email, String contato, String cpf, String senha){
        String sql = "insert into Pessoa (nome, sobrenome, email, contato, cpf, senha) values (?,?,?,?,?,?)";
        PreparedStatement estado1;
        conectar();
        try {
            estado1 = conexao.prepareStatement(sql);
            estado1.setString(1, nome);
            estado1.setString(2, sobrenome);
            estado1.setString(3, email);
            estado1.setString(4, contato);
            estado1.setString(5, cpf);
            estado1.setString(6, senha);
            estado1.execute();
            JOptionPane.showMessageDialog(null, "Pessoa cadastrada com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar");
        }finally{
            fecharConexao();
        
    }
    
}
        public void ChamarAlarme (String TipoAlarme){
        String sql = "insert into Alarme (TipoAlarme) values (?)";
        PreparedStatement estado1;
        conectar();
        try {
            estado1 = conexao.prepareStatement(sql);
            estado1.setString(1, TipoAlarme);
            estado1.execute();
            JOptionPane.showMessageDialog(null, "Chamado acionado!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao acionar chamado!");
        }finally{
            fecharConexao();
        
    }

}
}