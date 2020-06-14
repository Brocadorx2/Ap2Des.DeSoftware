package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
 
    public Connection getConexao(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3308/db_arleys?zeroDateTimeBehavior=convertToNull","root","");
        }catch(Exception erro){
            throw new RuntimeException("erro 1: " +erro);
        }
    }

}