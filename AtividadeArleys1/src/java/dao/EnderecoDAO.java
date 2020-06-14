package dao;

import model.Endereco;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class EnderecoDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Endereco> lista = new ArrayList<>();
    
    public EnderecoDAO(){
        conn = new ConnectionFactory().getConexao();
    }

    public void inserir(Endereco endereco){
        String sql = "INSERT INTO endereco (bairro, cep, endereco, endereco2, telefone) VALUES(?,?,?,?,?)";
        try{
           stmt = conn.prepareStatement(sql);
           stmt.setString(1, endereco.getBairro());
           stmt.setString(2, endereco.getCep());
           stmt.setString(3, endereco.getEndereco());
           stmt.setString(4, endereco.getEndereco2());
           stmt.setString(5, endereco.getTelefone());
           stmt.execute();
           stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 10: "+erro);
        }
    }
    
    public void alterar(Endereco endereco){
        String sql = "UPDATE endereco SET bairro = ?, cep = ?, endereco = ?, endereco2 = ?, telefone = ? WHERE endereco_id = ?";
        try{
           stmt = conn.prepareStatement(sql);
           stmt.setString(1, endereco.getBairro());
           stmt.setString(2, endereco.getCep());
           stmt.setString(3, endereco.getEndereco());
           stmt.setString(4, endereco.getEndereco2());
           stmt.setString(5, endereco.getTelefone());
           stmt.execute();
           stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 11: "+erro);
        }
    }
    
    public void excluir(int valor){
        String sql = "DELETE FROM WHERE endereco_id ="+valor;
        try{
            st = conn.createStatement();
            stmt.execute(sql);
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 12: "+erro);
        }
    }
    
    public ArrayList<Endereco> listarTodos(){
        String sql = "SELECT * FROM endereco";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Endereco endereco = new Endereco();            
                endereco.setBairro(rs.getString("bairro"));
                endereco.setCep(rs.getString("cep"));
                endereco.setEndereco(rs.getString("endereco"));
                endereco.setEndereco2(rs.getString("endereco2"));
                endereco.setEndereco_id(rs.getInt("endereco_id"));
                endereco.setTelefone(rs.getString("telefone"));
                lista.add(endereco);
            }
            stmt.execute();
            stmt.close();           
        }catch(Exception erro){
            throw new RuntimeException("erro 13: "+erro);
        }
        return lista;
    }
    
    public ArrayList<Endereco> listarEndereco(String valor){
        String sql = "SELECT FROM endereco WHERE endereco LIKE '%"+valor+"%' ";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Endereco endereco = new Endereco();            
                endereco.setBairro(rs.getString("bairro"));
                endereco.setCep(rs.getString("cep"));
                endereco.setEndereco(rs.getString("endereco"));
                endereco.setEndereco2(rs.getString("endereco2"));
                endereco.setEndereco_id(rs.getInt("endereco_id"));
                endereco.setTelefone(rs.getString("telefone"));
                lista.add(endereco);
            }
            stmt.execute();
            stmt.close();           
        }catch(Exception erro){
            throw new RuntimeException("erro 13.5: "+erro);
        }
        return lista;
    }
    
}
