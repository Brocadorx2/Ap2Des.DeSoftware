package dao;

import model.Cidade;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CidadeDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cidade> lista = new ArrayList<>();
    
    public CidadeDAO(){
        conn = new ConnectionFactory().getConexao();
    }

    public void inserir(Cidade cidade){
        String sql = "INSERT INTO cidade (cidade) VALUES(?)";
        try{
           stmt = conn.prepareStatement(sql);
           stmt.setString(1, cidade.getCidade());
           stmt.execute();
           stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 2: "+erro);
        }
    }
    
    public void alterar(Cidade cidade){
        String sql = "UPDATE cidade SET cidade = ? WHERE cidade_id = ?";
        try{
           stmt = conn.prepareStatement(sql);
           stmt.setString(1, cidade.getCidade());
           stmt.execute();
           stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 3: "+erro);
        }
    }
    
    public void excluir(int valor){
        String sql = "DELETE FROM WHERE cidade_id ="+valor;
        try{
            st = conn.createStatement();
            stmt.execute(sql);
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 4: "+erro);
        }
    }
    
    public ArrayList<Cidade> listarTodos(){
        String sql = "SELECT * FROM cidade";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cidade cidade = new Cidade();            
                cidade.setCidade(rs.getString("cidade"));
                cidade.setCidade_id(rs.getInt("cidade_id"));
                lista.add(cidade);
            }
            stmt.execute();
            stmt.close();           
        }catch(Exception erro){
            throw new RuntimeException("erro 5: "+erro);
        }
        return lista;
    }
    
    public ArrayList<Cidade> listarCidade(String valor){
        String sql = "SELECT FROM cidade WHERE cidade LIKE '%"+valor+"%' ";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cidade cidade = new Cidade();            
                cidade.setCidade(rs.getString("cidade"));
                cidade.setCidade_id(rs.getInt("cidade_id"));
                lista.add(cidade);
            }
            stmt.execute();
            stmt.close();           
        }catch(Exception erro){
            throw new RuntimeException("erro 5.5: "+erro);
        }
        return lista;
    }
    
}
