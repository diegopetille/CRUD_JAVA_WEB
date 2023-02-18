
package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;


public class ConexaoDAO {
    
    public Connection ConexaoBD(){
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            String url = "jdbc:mysql://localhost:3306/petshop?user=root&password=";
            conn = DriverManager.getConnection(url);
            
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
        return conn;
    }
    
}
