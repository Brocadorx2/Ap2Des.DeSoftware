package dao;

import model.Pais;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PaisDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Pais> lista = new ArrayList<>();
    
    public PaisDAO(){
        conn = new ConnectionFactory().getConexao();
    }

    public void inserir(Pais pais){
        String sql = "INSERT INTO pais (pais) VALUES(?)";
        try{
           stmt = conn.prepareStatement(sql);
           stmt.setString(1, pais.getPais());
           stmt.execute();
           stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 6: "+erro);
        }
    }
    
    public void alterar(Pais pais){
        String sql = "UPDATE pais SET pais = ? WHERE pais_id = ?";
        try{
           stmt = conn.prepareStatement(sql);
           stmt.setString(1, pais.getPais());
           stmt.execute();
           stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 7: "+erro);
        }
    }
    
    public void excluir(int valor){
        String sql = "DELETE FROM WHERE pais_id ="+valor;
        try{
            st = conn.createStatement();
            stmt.execute(sql);
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 8: "+erro);
        }
    }
    
    public ArrayList<Pais> listarTodos(){
        String sql = "SELECT * FROM pais";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Pais pais = new Pais();
                pais.setPais(rs.getString("pais"));
                pais.setPais_id(rs.getInt("pais_id"));
                lista.add(pais);
            }
            stmt.execute();
            stmt.close();           
        }catch(Exception erro){
            throw new RuntimeException("erro 9: "+erro);
        }
        return lista;
    }
    public ArrayList<Pais> listarPais(String valor){
        String sql = "SELECT FROM pais WHERE pais LIKE '%"+valor+"%' ";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Pais pais = new Pais();
                pais.setPais(rs.getString("pais"));
                pais.setPais_id(rs.getInt("pais_id"));
                lista.add(pais);
            }
            stmt.execute();
            stmt.close();           
        }catch(Exception erro){
            throw new RuntimeException("erro 9.5: "+erro);
        }
        return lista;
    }
}
